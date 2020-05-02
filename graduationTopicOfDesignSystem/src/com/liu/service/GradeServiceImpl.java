package com.liu.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liu.commonUtils.Page;
import com.liu.mapping.GradeMapper;

import com.liu.pojo.Grade;

@Service("gradeService")
@Transactional
public class GradeServiceImpl implements GradeService {
	@Autowired
	private GradeMapper gradeMapper;
	@Override
	public List<Grade> findGradeList(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.selectGradeList(record);
	}

	@Override
	public Integer findGradeListCount(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.selectGradeListCount(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer gradeid) {
		// TODO Auto-generated method stub
		return gradeMapper.deleteByPrimaryKey(gradeid);
	}

	@Override
	public int creatGrade(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.insert(record);
	}

	@Override
	public int creatGradeSelective(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.insertSelective(record);
	}

	@Override
	public Grade findByPrimaryKey(Integer gradeid) {
		// TODO Auto-generated method stub
		return gradeMapper.selectByPrimaryKey(gradeid);
	}

	@Override
	public int updateByPrimaryKeySelective(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Grade record) {
		// TODO Auto-generated method stub
		return gradeMapper.updateByPrimaryKey(record);
	}

	@Override
	public Page<Grade> findGradeListPage(Integer page, Integer rows, String gradename) {
		Grade grade  = new Grade ();
		
		if(StringUtils.isNotBlank(gradename)){
			grade.setGradename(gradename);
		}
		
	
		List<Grade> subjects =gradeMapper.selectGradeList(grade);	    
		
		// 查询客户列表总记录数
		Integer count = gradeMapper.selectGradeListCount(grade);
		// 创建Page返回对象
		Page<Grade > result = new Page<>();
		result.setPage(page);
		result.setRows(subjects);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

}
