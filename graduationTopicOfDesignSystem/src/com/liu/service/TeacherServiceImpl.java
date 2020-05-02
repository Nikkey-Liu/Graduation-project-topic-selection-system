package com.liu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liu.mapping.StudentMapper;
import com.liu.mapping.TeacherMapper;

import com.liu.pojo.Teacher;
@Service("teacherService")
@Transactional
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper teacherMapper;
	@Override
	public List<Teacher> findTeacherList(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherList(record);
	}

	@Override
	public Integer findTeacherListCount(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherListCount(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer teacherid) {
		// TODO Auto-generated method stub
		return teacherMapper.deleteByPrimaryKey(teacherid);
	}

	@Override
	public int creatTeacher(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.insert(record);
	}

	@Override
	public int creatTeacherSelective(Teacher record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Teacher findByPrimaryKey(Integer teacherid) {
		// TODO Auto-generated method stub
		return teacherMapper.selectByPrimaryKey(teacherid);
	}

	@Override
	public int updateByPrimaryKeySelective(Teacher record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.updateByPrimaryKey(record);
	}

	@Override
	public Teacher findByUserID(Integer userid) {
		// TODO Auto-generated method stub
		return teacherMapper.selectByUserID(userid);
	}

}
