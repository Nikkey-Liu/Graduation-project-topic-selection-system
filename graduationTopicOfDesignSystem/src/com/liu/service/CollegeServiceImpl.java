package com.liu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liu.mapping.CollegeMapper;
import com.liu.mapping.TeacherMapper;
import com.liu.pojo.College;
@Service("collegeService")
@Transactional
public class CollegeServiceImpl implements CollegeService {
	@Autowired
	private CollegeMapper collegeMapper;
	@Override
	public List<College> findCollegeList(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.selectCollegeList(record);
	}

	@Override
	public Integer findCollegeListCount(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.selectCollegeListCount(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer collegeid) {
		// TODO Auto-generated method stub
		return collegeMapper.deleteByPrimaryKey(collegeid);
	}

	@Override
	public int creatCollege(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.insert(record);
	}

	@Override
	public int creatCollegeSelective(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.insertSelective(record);
	}

	@Override
	public College findByPrimaryKey(Integer collegeid) {
		// TODO Auto-generated method stub
		return collegeMapper.selectByPrimaryKey(collegeid);
	}

	@Override
	public int updateByPrimaryKeySelective(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public int updateByPrimaryKey(College record) {
		// TODO Auto-generated method stub
		return collegeMapper.updateByPrimaryKey(record);
	}

}
