package com.easyjob.service;

import com.easyjob.entity.dto.ImportErrorItem;
import com.easyjob.entity.dto.SessionUserAdminDto;
import com.easyjob.entity.po.ExamQuestion;
import com.easyjob.entity.po.ExamQuestionItem;
import com.easyjob.entity.query.ExamQuestionQuery;
import com.easyjob.entity.vo.PaginationResultVO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


/**
 * 考试题目 业务接口
 */
public interface ExamQuestionService {

    /**
     * 根据条件查询列表
     */
    List<ExamQuestion> findListByParam(ExamQuestionQuery param);

    /**
     * 根据条件查询列表
     */
    Integer findCountByParam(ExamQuestionQuery param);

    /**
     * 分页查询
     */
    PaginationResultVO<ExamQuestion> findListByPage(ExamQuestionQuery param);

    /**
     * 新增
     */
    Integer add(ExamQuestion bean);

    /**
     * 批量新增
     */
    Integer addBatch(List<ExamQuestion> listBean);

    /**
     * 批量新增/修改
     */
    Integer addOrUpdateBatch(List<ExamQuestion> listBean);

    /**
     * 多条件更新
     */
    Integer updateByParam(ExamQuestion bean, ExamQuestionQuery param);

    /**
     * 多条件删除
     */
    Integer deleteByParam(ExamQuestionQuery param);

    /**
     * 根据QuestionId查询对象
     */
    ExamQuestion getExamQuestionByQuestionId(Integer questionId);


    /**
     * 根据QuestionId修改
     */
    Integer updateExamQuestionByQuestionId(ExamQuestion bean, Integer questionId);


    /**
     * 根据QuestionId删除
     */
    Integer deleteExamQuestionByQuestionId(Integer questionId);

    void saveExamQuestion(ExamQuestion examQuestion, List<ExamQuestionItem> examQuestionItemList, Boolean superAdmin);

    void delExamQuestionBatch(String questionIds, Integer userId);

    ExamQuestion showDetailNext(ExamQuestionQuery query, Integer nextType, Integer currentId);

    List<ImportErrorItem> importExamQuestion(MultipartFile file, SessionUserAdminDto userAdminDto);
}