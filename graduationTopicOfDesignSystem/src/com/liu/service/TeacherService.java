package com.liu.service;

import java.util.List;

import com.liu.pojo.Student;
import com.liu.pojo.Teacher;

public interface TeacherService {
	public List<Teacher> findTeacherList(Teacher record);
	public Integer findTeacherListCount(Teacher record);
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacherinftable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int deleteByPrimaryKey(Integer teacherid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacherinftable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int creatTeacher(Teacher record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacherinftable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int creatTeacherSelective(Teacher record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacherinftable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    Teacher findByPrimaryKey(Integer teacherid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacherinftable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKeySelective(Teacher record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacherinftable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKey(Teacher record);
    Teacher findByUserID(Integer userid);
}
