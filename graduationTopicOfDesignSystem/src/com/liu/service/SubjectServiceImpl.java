package com.liu.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liu.commonUtils.Page;
import com.liu.mapping.*;
import com.liu.pojo.*;
import com.liu.pojo.SubjectView;
@Service("subjectService")
@Transactional
public class SubjectServiceImpl implements SubjectService {
	// 声明DAO属性并注入
		@Autowired
		private SubjectMapper subjectMapper;
		@Autowired
		private CollegeMapper collegeMapper;
		@Autowired
		private TeacherMapper teacherMapper;
	@Override
	public Page<SubjectView> findSubjectList(Integer page, Integer rows, String subContext, String subjectName,
			String teacherID, String collegeID) {
		
		Subject subject  = new Subject ();
			// 判断客户名称
			if(StringUtils.isNotBlank(subContext)){
				subject.setSubcontext(subContext);
			}
			// 判断客户信息来源
			if(StringUtils.isNotBlank(subjectName)){
				subject.setSubjectname(subjectName);
			}
			// 判断客户所属行业
			if(StringUtils.isNotBlank(teacherID)){
				subject.setTeacherid(Integer.parseInt(teacherID));
			}
			// 判断客户级别
			if(StringUtils.isNotBlank(collegeID)){
				subject.setCollegeid(Integer.parseInt(collegeID));
			}
			// 当前页
		
			// 查询客户列表
			List<Subject> subjects = subjectMapper.selectSubjectList(subject);	    
			 List<SubjectView> subjectViews = new ArrayList<SubjectView>();
			for(int i=0;i<subjects.size();i++)
			{
				SubjectView e = new SubjectView();
				e.setSubjectid(subjects.get(i).getSubjectid());
				e.setSubjectname(subjects.get(i).getSubjectname());
				e.setSubcontext(subjects.get(i).getSubcontext());
				e.setTeachername(teacherMapper.selectByPrimaryKey(subjects.get(i).getTeacherid()).getTeachername());
				e.setCollegename(collegeMapper.selectByPrimaryKey(subjects.get(i).getCollegeid()).getCollegename());
				subjectViews.add(e);
			}
			// 查询客户列表总记录数
			Integer count = subjectMapper.selectSubjectListCount(subject);
			// 创建Page返回对象
			Page<SubjectView > result = new Page<>();
			result.setPage(page);
			result.setRows(subjectViews);
			result.setSize(rows);
			result.setTotal(count);
			return result;
	
	}

	@Override
	public int deleteByPrimaryKey(Integer subjectid) {
		// TODO Auto-generated method stub
		return subjectMapper.deleteByPrimaryKey(subjectid);
	}

	@Override
	public int creatSubject(Subject record) {
		// TODO Auto-generated method stub
		return subjectMapper.insert(record);
	}

	@Override
	public int creatSubjectSelective(Subject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Subject findByPrimaryKey(Integer subjectid) {
		// TODO Auto-generated method stub
		return subjectMapper.selectByPrimaryKey(subjectid);
	}

	@Override
	public int updateByPrimaryKeySelective(Subject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Subject record) {
		// TODO Auto-generated method stub
		return subjectMapper.updateByPrimaryKey(record);
	}

	@Override
	public List <Subject> findAllSubjectList(Subject record) {
		// TODO Auto-generated method stub
		
		return subjectMapper.selectSubjectList(record);
	}

	@Override
	public Page<SubjectView> findSubjectListByTeacherID(Integer page, Integer rows,String teacherID) {
		// TODO Auto-generated method stub
		Subject subject  = new Subject ();
		if(StringUtils.isNotBlank(teacherID)){
			subject.setTeacherid(Integer.parseInt(teacherID));
		}
		List<Subject> subjects = subjectMapper.selectSubjectList(subject);	    
		 List<SubjectView> subjectViews = new ArrayList<SubjectView>();
		for(int i=0;i<subjects.size();i++)
		{
			SubjectView e = new SubjectView();
			e.setSubjectid(subjects.get(i).getSubjectid());
			e.setSubjectname(subjects.get(i).getSubjectname());
			e.setSubcontext(subjects.get(i).getSubcontext());
			e.setTeachername(teacherMapper.selectByPrimaryKey(subjects.get(i).getTeacherid()).getTeachername());
			e.setCollegename(collegeMapper.selectByPrimaryKey(subjects.get(i).getCollegeid()).getCollegename());
			subjectViews.add(e);
		}
		Integer count = subjectMapper.selectSubjectListCount(subject);
		// 创建Page返回对象
		Page<SubjectView > result = new Page<>();
		result.setPage(page);
		result.setRows(subjectViews);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

}
