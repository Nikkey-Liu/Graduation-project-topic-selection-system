package com.liu.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.liu.pojo.Student;
import com.liu.pojo.Teacher;
import com.liu.pojo.User;

public interface UserMapper {
	public List<User> selectUserList(User record);
	public Integer selectUserListCount(User record);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table usertable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int deleteByPrimaryKey(Integer userid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table usertable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table usertable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table usertable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    User selectByPrimaryKey(@Param("userName") String userName,
            @Param("password") String password , @Param("usertype") String usertype);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table usertable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table usertable
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    int updateByPrimaryKey(User record);
    User selectByPrimaryKeyID(Integer userid);
}