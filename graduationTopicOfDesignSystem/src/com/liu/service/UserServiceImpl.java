package com.liu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liu.commonUtils.Page;
import com.liu.mapping.UserMapper;
import com.liu.pojo.Subject;
import com.liu.pojo.SubjectView;
import com.liu.pojo.User;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Override
	public int deleteByPrimaryKey(Integer userid) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(userid);
	}

	@Override
	public int creatUser(User record) {
		// TODO Auto-generated method stub
		record.setPassword(DigestUtils.md5Hex(record.getPassword()));
		return this.userMapper.insert(record);
	}

	@Override
	public int creatUserSelective(User record) {
		// TODO Auto-generated method stub
		record.setPassword(DigestUtils.md5Hex(record.getPassword()));
		return 0;
	}

	@Override
	public User findByPrimaryKey(String userName, String password ,String usertype) {

		User user = this.userMapper.selectByPrimaryKey(userName, 	DigestUtils.md5Hex(password) ,usertype);
		return user;
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		record.setPassword(DigestUtils.md5Hex(record.getPassword()));
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		if(userMapper.selectByPrimaryKeyID(record.getUserid()).getPassword().equals(record.getPassword()))
		{
			record.setPassword(null);
		return userMapper.updateByPrimaryKey(record);
		}
		else
		{record.setPassword(DigestUtils.md5Hex(record.getPassword()));
			return userMapper.updateByPrimaryKey(record);
		}
			
	}

	@Override
	public List<User> findUserList(User record) {
		// TODO Auto-generated method stub
		
		return userMapper.selectUserList(record);
	}
	@Override
	public Integer findUserListCount(User record) {
		// TODO Auto-generated method stub

		return userMapper.selectUserListCount(record);
	}

	@Override
	public Page<User> findUserListPage(Integer page, Integer rows, String username, String usertype,
			String alltimeUserstate) {
		
		User user  = new User ();
	
			if(StringUtils.isNotBlank(username)){
				user.setUsername(username);
			}
			
			if(StringUtils.isNotBlank(usertype)){
				user.setUsertype(usertype);
			}
			if(StringUtils.isNotBlank(alltimeUserstate)){
				Byte a;
				if(alltimeUserstate.equals("1"))
				a=1;
				else
					a=0;
				user.setUserstate(a);
			}
			// 当前页
		
			// 查询客户列表
			List<User> subjects =userMapper.selectUserList(user);	    
			
			// 查询客户列表总记录数
			Integer count = userMapper.selectUserListCount(user);
			// 创建Page返回对象
			Page<User > result = new Page<>();
			result.setPage(page);
			result.setRows(subjects);
			result.setSize(rows);
			result.setTotal(count);
			return result;

	}

	@Override
	public User findByPrimaryKeyID(Integer userid) {
		
		return userMapper.selectByPrimaryKeyID(userid);
	}


}
