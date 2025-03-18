package com.easyjob.service.impl;

import com.easyjob.entity.constants.Constants;
import com.easyjob.entity.dto.AppUserLoginDto;
import com.easyjob.entity.enums.PageSize;
import com.easyjob.entity.enums.UserStatusEnum;
import com.easyjob.entity.po.AppUserInfo;
import com.easyjob.entity.query.AppUserInfoQuery;
import com.easyjob.entity.query.SimplePage;
import com.easyjob.entity.vo.PaginationResultVO;
import com.easyjob.exception.BusinessException;
import com.easyjob.mappers.AppUserInfoMapper;
import com.easyjob.service.AppUserInfoService;
import com.easyjob.utils.JWTUtil;
import com.easyjob.utils.StringTools;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


/**
 * 业务接口实现
 */
@Service("appUserInfoService")
public class AppUserInfoServiceImpl implements AppUserInfoService {

    @Resource
    private AppUserInfoMapper<AppUserInfo, AppUserInfoQuery> appUserInfoMapper;

    @Resource
    private JWTUtil<AppUserLoginDto> jwtUtil;

    /**
     * 根据条件查询列表
     */
    @Override
    public List<AppUserInfo> findListByParam(AppUserInfoQuery param) {
        return this.appUserInfoMapper.selectList(param);
    }

    /**
     * 根据条件查询列表
     */
    @Override
    public Integer findCountByParam(AppUserInfoQuery param) {
        return this.appUserInfoMapper.selectCount(param);
    }

    /**
     * 分页查询方法
     */
    @Override
    public PaginationResultVO<AppUserInfo> findListByPage(AppUserInfoQuery param) {
        int count = this.findCountByParam(param);
        int pageSize = param.getPageSize() == null ? PageSize.SIZE15.getSize() : param.getPageSize();

        SimplePage page = new SimplePage(param.getPageNo(), count, pageSize);
        param.setSimplePage(page);
        List<AppUserInfo> list = this.findListByParam(param);
        PaginationResultVO<AppUserInfo> result = new PaginationResultVO(count, page.getPageSize(), page.getPageNo(), page.getPageTotal(), list);
        return result;
    }

    /**
     * 新增
     */
    @Override
    public Integer add(AppUserInfo bean) {
        return this.appUserInfoMapper.insert(bean);
    }

    /**
     * 批量新增
     */
    @Override
    public Integer addBatch(List<AppUserInfo> listBean) {
        if (listBean == null || listBean.isEmpty()) {
            return 0;
        }
        return this.appUserInfoMapper.insertBatch(listBean);
    }

    /**
     * 批量新增或者修改
     */
    @Override
    public Integer addOrUpdateBatch(List<AppUserInfo> listBean) {
        if (listBean == null || listBean.isEmpty()) {
            return 0;
        }
        return this.appUserInfoMapper.insertOrUpdateBatch(listBean);
    }

    /**
     * 多条件更新
     */
    @Override
    public Integer updateByParam(AppUserInfo bean, AppUserInfoQuery param) {
        StringTools.checkParam(param);
        return this.appUserInfoMapper.updateByParam(bean, param);
    }

    /**
     * 多条件删除
     */
    @Override
    public Integer deleteByParam(AppUserInfoQuery param) {
        StringTools.checkParam(param);
        return this.appUserInfoMapper.deleteByParam(param);
    }

    /**
     * 根据UserId获取对象
     */
    @Override
    public AppUserInfo getAppUserInfoByUserId(String userId) {
        return this.appUserInfoMapper.selectByUserId(userId);
    }

    /**
     * 根据UserId修改
     */
    @Override
    public Integer updateAppUserInfoByUserId(AppUserInfo bean, String userId) {
        return this.appUserInfoMapper.updateByUserId(bean, userId);
    }

    /**
     * 根据UserId删除
     */
    @Override
    public Integer deleteAppUserInfoByUserId(String userId) {
        return this.appUserInfoMapper.deleteByUserId(userId);
    }

    /**
     * 根据Email获取对象
     */
    @Override
    public AppUserInfo getAppUserInfoByEmail(String email) {
        return this.appUserInfoMapper.selectByEmail(email);
    }

    /**
     * 根据Email修改
     */
    @Override
    public Integer updateAppUserInfoByEmail(AppUserInfo bean, String email) {
        return this.appUserInfoMapper.updateByEmail(bean, email);
    }

    /**
     * 根据Email删除
     */
    @Override
    public Integer deleteAppUserInfoByEmail(String email) {
        return this.appUserInfoMapper.deleteByEmail(email);
    }

    @Override
    public void register(AppUserInfo appUserInfo) {
        AppUserInfo userInfo = this.appUserInfoMapper.selectByEmail(appUserInfo.getEmail());
        if (null != userInfo) {
            throw new BusinessException("邮箱账号已存在");
        }
        AppUserInfoQuery appUserInfoQuery = new AppUserInfoQuery();
        appUserInfoQuery.setNickName(appUserInfo.getNickName());
        Integer count = this.appUserInfoMapper.selectCount(appUserInfoQuery);
        if (count > 0) {
            throw new BusinessException("昵称已经存在");
        }
        String userId = StringTools.getRandomString(Constants.LENGTH_10);
        appUserInfo.setUserId(userId);
        appUserInfo.setPassword(StringTools.encodeByMD5(appUserInfo.getPassword()));
        Date curDate = new Date();
        appUserInfo.setJoinTime(curDate);
        appUserInfo.setLastLoginTime(curDate);
        appUserInfo.setStatus(UserStatusEnum.ENABLE.getStatus());
        this.appUserInfoMapper.insert(appUserInfo);
    }

    @Override
    public String login(String email, String password, String ip, String deviceId, String deviceBrand) {
        AppUserInfo appUserInfo = this.appUserInfoMapper.selectByEmail(email);
        if (null == appUserInfo) {
            throw new BusinessException("账号或者密码错误");
        }
        if (!appUserInfo.getPassword().equals(password)) {
            throw new BusinessException("账号或者密码错误");
        }
        if (!UserStatusEnum.ENABLE.getStatus().equals(appUserInfo.getStatus())) {
            throw new BusinessException("账号已禁用");
        }

        AppUserInfo updateInfo = new AppUserInfo();
        updateInfo.setLastLoginTime(new Date());
        updateInfo.setLastLoginIp(ip);
        updateInfo.setLastUseDeviceId(deviceId);
        updateInfo.setLastUseDeviceBrand(deviceBrand);
        this.appUserInfoMapper.updateByUserId(updateInfo, updateInfo.getUserId());

        AppUserLoginDto loginDto = new AppUserLoginDto();
        loginDto.setUserId(appUserInfo.getUserId());
        loginDto.setNickName(appUserInfo.getNickName());
        String token = jwtUtil.createToken(Constants.JWT_KEY_LOGIN_TOKEN, loginDto, Constants.JWT_TOKEN_EXPIRES_DAYS);
        return token;
    }

    @Override
    public String autoLogin(String token, String deviceId, String deviceBrand, String ip) {
        AppUserLoginDto loginDto = jwtUtil.getTokenData(Constants.JWT_KEY_LOGIN_TOKEN, token, AppUserLoginDto.class);
        if (loginDto == null) {
            return null;
        }
        AppUserInfo appUserInfo = appUserInfoMapper.selectByUserId(loginDto.getUserId());
        if (!UserStatusEnum.ENABLE.getStatus().equals(appUserInfo.getStatus())) {
            return null;
        }
        AppUserInfo updateInfo = new AppUserInfo();
        updateInfo.setLastLoginTime(new Date());
        updateInfo.setLastLoginIp(ip);
        updateInfo.setLastUseDeviceId(deviceId);
        updateInfo.setLastUseDeviceBrand(deviceBrand);
        this.appUserInfoMapper.updateByUserId(updateInfo, updateInfo.getUserId());
        String newToken = jwtUtil.createToken(Constants.JWT_KEY_LOGIN_TOKEN, loginDto, Constants.JWT_TOKEN_EXPIRES_DAYS);
        return newToken;
    }
}