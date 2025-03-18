package com.easyjob.controller;

import com.easyjob.annotation.GlobalInterceptor;
import com.easyjob.annotation.VerifyParam;
import com.easyjob.entity.dto.ImportErrorItem;
import com.easyjob.entity.dto.SessionUserAdminDto;
import com.easyjob.entity.enums.PermissionCodeEnum;
import com.easyjob.entity.enums.PostStatusEnum;
import com.easyjob.entity.po.QuestionInfo;
import com.easyjob.entity.query.QuestionInfoQuery;
import com.easyjob.entity.vo.ResponseVO;
import com.easyjob.service.QuestionInfoService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 问题 Controller
 */
@RestController("questionInfoController")
@RequestMapping("/questionInfo")
public class QuestionInfoController extends ABaseController {

    @Resource
    private QuestionInfoService questionInfoService;

    /**
     * 根据条件分页查询
     */
    @RequestMapping("/loadDataList")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_LIST)
    public ResponseVO loadDataList(QuestionInfoQuery query) {
        query.setOrderBy("question_id desc");
        query.setQueryTextContent(true);
        return getSuccessResponseVO(questionInfoService.findListByPage(query));
    }

    @RequestMapping("/saveQuestionInfo")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_EDIT)
    public ResponseVO saveQuestionInfo(HttpSession session, QuestionInfo bean) {
        SessionUserAdminDto sessionUserAdminDto = getUserAdminFromSession(session);
        bean.setCreateUserId(String.valueOf(sessionUserAdminDto.getUserId()));
        bean.setCreateUserName(sessionUserAdminDto.getUserName());
        questionInfoService.saveQuestion(bean, sessionUserAdminDto.getSuperAdmin());
        return getSuccessResponseVO(null);
    }

    @RequestMapping("/delQuestion")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_EDIT)
    public ResponseVO delQuestion(HttpSession session, @VerifyParam(required = true) Integer questionId) {
        SessionUserAdminDto userAdminDto = getUserAdminFromSession(session);
        questionInfoService.delQuestionBatch(String.valueOf(questionId), userAdminDto.getSuperAdmin() ? null : userAdminDto.getUserId());
        return getSuccessResponseVO(null);
    }

    @RequestMapping("/delQuestionBatch")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_DEL_BATCH)
    public ResponseVO delQuestionBatch(@VerifyParam(required = true) String questionIds) {
        questionInfoService.delQuestionBatch(questionIds, null);
        return getSuccessResponseVO(null);
    }

    @RequestMapping("/postQuestion")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_POST)
    public ResponseVO postQuestion(@VerifyParam(required = true) String questionIds) {
        updateStatus(questionIds, PostStatusEnum.POST.getStatus());
        return getSuccessResponseVO(null);
    }

    @RequestMapping("/cancelPostQuestion")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_POST)
    public ResponseVO cancelPostQuestion(@VerifyParam(required = true) String questionIds) {
        updateStatus(questionIds, PostStatusEnum.NO_POST.getStatus());
        return getSuccessResponseVO(null);
    }

    private void updateStatus(String questionIds, Integer status) {
        QuestionInfoQuery params = new QuestionInfoQuery();
        params.setQuestionIds(questionIds.split(","));
        QuestionInfo questionInfo = new QuestionInfo();
        questionInfo.setStatus(status);
        questionInfoService.updateByParam(questionInfo, params);
    }

    @RequestMapping("/importQuestion")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_IMPORT)
    public ResponseVO importQuestion(HttpSession session, MultipartFile file) {
        SessionUserAdminDto userAdminDto = getUserAdminFromSession(session);
        List<ImportErrorItem> errorList = questionInfoService.importQuestion(file, userAdminDto);
        return getSuccessResponseVO(errorList);
    }

    @RequestMapping("/showQuestionDetailNext")
    @GlobalInterceptor(permissionCode = PermissionCodeEnum.QUESTION_LIST)
    public ResponseVO showQuestionDetailNext(QuestionInfoQuery query, Integer nextType,
                                             @VerifyParam(required = true) Integer currentId) {
        QuestionInfo questionInfo = questionInfoService.showDetailNext(query, nextType, currentId, false);
        return getSuccessResponseVO(questionInfo);
    }
}