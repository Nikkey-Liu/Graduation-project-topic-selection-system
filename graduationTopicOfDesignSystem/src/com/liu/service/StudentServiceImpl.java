package com.liu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.liu.mapping.StudentMapper;

import com.liu.pojo.Student;
@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper studentMapper;
	@Override
	public List<Student> findStudentList(Student record) {
		// TODO Auto-generated method stub
		return studentMapper.selectStudentList(record);
	}

	@Override
	public Integer findStudentListCount(Student record) {
		// TODO Auto-generated method stub
		return studentMapper.selectStudentListCount(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer studentid) {
		// TODO Auto-generated method stub
		return studentMapper.deleteByPrimaryKey(studentid);
	}

	@Override
	public int creatStudent(Student record) {
		// TODO Auto-generated method stub
		return studentMapper.insert(record);
	}

	@Override
	public int creatStudentSelective(Student record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Student findByPrimaryKey(Integer studentid) {
		// TODO Auto-generated method stub
		return studentMapper.selectByPrimaryKey(studentid);
	}

	@Override
	public int updateByPrimaryKeySelective(Student record) {
		// TODO Auto-generated method stub
		return studentMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Student record) {
		// TODO Auto-generated method stub
		return studentMapper.updateByPrimaryKey(record);
	}

	@Override
	public Student findByUserID(Integer userid) {
		
		return studentMapper.selectByUserID(userid);
	}

}
