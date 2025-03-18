package com.easyjob.service;

import com.easyjob.entity.po.AppUserInfo;
import com.easyjob.entity.query.AppUserInfoQuery;
import com.easyjob.entity.vo.PaginationResultVO;

import java.util.List;


/**
 * 业务接口
 */
public interface AppUserInfoService {

    /**
     * 根据条件查询列表
     */
    List<AppUserInfo> findListByParam(AppUserInfoQuery param);

    /**
     * 根据条件查询列表
     */
    Integer findCountByParam(AppUserInfoQuery param);

    /**
     * 分页查询
     */
    PaginationResultVO<AppUserInfo> findListByPage(AppUserInfoQuery param);

    /**
     * 新增
     */
    Integer add(AppUserInfo bean);

    /**
     * 批量新增
     */
    Integer addBatch(List<AppUserInfo> listBean);

    /**
     * 批量新增/修改
     */
    Integer addOrUpdateBatch(List<AppUserInfo> listBean);

    /**
     * 多条件更新
     */
    Integer updateByParam(AppUserInfo bean, AppUserInfoQuery param);

    /**
     * 多条件删除
     */
    Integer deleteByParam(AppUserInfoQuery param);

    /**
     * 根据UserId查询对象
     */
    AppUserInfo getAppUserInfoByUserId(String userId);


    /**
     * 根据UserId修改
     */
    Integer updateAppUserInfoByUserId(AppUserInfo bean, String userId);


    /**
     * 根据UserId删除
     */
    Integer deleteAppUserInfoByUserId(String userId);


    /**
     * 根据Email查询对象
     */
    AppUserInfo getAppUserInfoByEmail(String email);


    /**
     * 根据Email修改
     */
    Integer updateAppUserInfoByEmail(AppUserInfo bean, String email);


    /**
     * 根据Email删除
     */
    Integer deleteAppUserInfoByEmail(String email);

    void register(AppUserInfo appUserInfo);

    String login(String email, String password, String ip, String deviceId, String deviceBrand);

    String autoLogin(String token, String deviceId, String deviceBrand, String ip);
}