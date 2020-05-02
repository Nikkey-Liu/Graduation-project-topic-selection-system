package com.liu.mapping;

import java.util.List;


import com.liu.pojo.Subject;
import com.liu.pojo.SubjectView;

public interface SubjectMapper {
	
//my new creat
	public List<Subject> selectSubjectList(Subject record);
	
	public Integer selectSubjectListCount(Subject record);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table subjecttable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int deleteByPrimaryKey(Integer subjectid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table subjecttable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int insert(Subject record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table subjecttable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int insertSelective(Subject record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table subjecttable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    Subject selectByPrimaryKey(Integer subjectid);
  
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table subjecttable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKeySelective(Subject record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table subjecttable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKey(Subject record);
}