package com.liu.service;

import java.util.List;

import com.liu.pojo.College;

public interface CollegeService {
	public List<College> findCollegeList(College record);
    public Integer findCollegeListCount(College record);
	 /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collegetable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int deleteByPrimaryKey(Integer collegeid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collegetable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int creatCollege(College record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collegetable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int creatCollegeSelective(College record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collegetable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    College findByPrimaryKey(Integer collegeid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collegetable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKeySelective(College record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collegetable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKey(College record);
}