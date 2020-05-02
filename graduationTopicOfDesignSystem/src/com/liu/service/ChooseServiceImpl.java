package com.liu.service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liu.commonUtils.Page;
import com.liu.mapping.*;

import com.liu.pojo.Choose;
import com.liu.pojo.ChooseView;
import com.liu.pojo.Subject;
import com.liu.pojo.SubjectView;
@Service("chooseService")
@Transactional
public class ChooseServiceImpl implements ChooseService {
	@Autowired
	private CollegeMapper collegeMapper;
	@Autowired
	private ChooseMapper chooseMapper;
	@Autowired
	private TeacherMapper teacherMapper;
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private SubjectMapper subjectMapper;
	@Override
	public List<Choose> findChooseList(Choose record) {
		// TODO Auto-generated method stub
		return chooseMapper.selectChooseList(record);
	}

	@Override
	public Integer findChooseListCount(Choose record) {
		// TODO Auto-generated method stub
		return chooseMapper.selectChooseListCount(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer chooseid) {
		// TODO Auto-generated method stub
		return chooseMapper.deleteByPrimaryKey(chooseid);
	}

	@Override
	public int creatChoose(Choose record) {
		// TODO Auto-generated method stub
		return chooseMapper.insert(record);
	}

	@Override
	public int creatChooseSelective(Choose record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Choose findByPrimaryKey(Integer chooseid) {
		// TODO Auto-generated method stub
		return chooseMapper.selectByPrimaryKey(chooseid);
	}

	@Override
	public int updateByPrimaryKeySelective(Choose record) {
		// TODO Auto-generated method stub
		return chooseMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Choose record) {
		// TODO Auto-generated method stub
		return chooseMapper.updateByPrimaryKey(record);
	}

	@Override
	public Page <ChooseView> findChooseListWhere(Integer page, Integer rows, String studentname, String subjectID,
			String teachername, String collegeID ,String ischoose ) {
       int studentids[];
       int numberWhereNameStudent=0;
		Choose choose  = new Choose();
		boolean ischooseing;
			
			if(StringUtils.isNotBlank(ischoose))
			{
				if(ischoose.equals("1")||ischoose=="1")
				{
					ischooseing=true;
				}
				else
				{
					ischooseing=false;
				}
				choose.setIschoose(ischooseing);	
			}
		
			if(StringUtils.isNotBlank(collegeID)){
				choose.setCollegeid(Integer.parseInt(collegeID));
			}
		
		
			// 查询客户列表
			List<Choose> chooses = chooseMapper.selectChooseList(choose);  
			 List<ChooseView> choosesViews = new ArrayList<ChooseView>();
			for(int i=0;i<chooses.size();i++)
			{
				if(StringUtils.isNotBlank(studentname)){
				//学生人名匹配；

			      String pattern = ".*"+studentname+".*";
			 
			      boolean isMatch = Pattern.matches(pattern, studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
			    
				if(isMatch)
				{
				ChooseView e = new ChooseView();
				e.setChooseid(chooses.get(i).getChooseid());
				e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
				e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
				e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
				e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
			if(chooses.get(i).getIschoose())
			{
				e.setIschoose("approved");
			}
			else
			{
				e.setIschoose("waiting approve or failed");
			}
				choosesViews.add(e);
				numberWhereNameStudent++;
				}
			}
			else if(StringUtils.isNotBlank(teachername))
				{
				String pattern = ".*"+teachername+".*";
				 
			      boolean isMatch = Pattern.matches(pattern, teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
			      if(isMatch)
					{
					ChooseView e = new ChooseView();
					e.setChooseid(chooses.get(i).getChooseid());
					e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
					e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
					e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
					e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
				if(chooses.get(i).getIschoose())
				{
					e.setIschoose("approved");
				}
				else
				{
					e.setIschoose("waiting approve or failed");
				}
					choosesViews.add(e);
					numberWhereNameStudent++;
					}
				}
			else if(StringUtils.isNotBlank(subjectID)){
				String pattern = ".*"+subjectID+".*";
				 
			      boolean isMatch = Pattern.matches(pattern, subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
			      if(isMatch)
					{
					ChooseView e = new ChooseView();
					e.setChooseid(chooses.get(i).getChooseid());
					e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
					e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
					e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
					e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
				if(chooses.get(i).getIschoose())
				{
					e.setIschoose("approved");
				}
				else
				{
					e.setIschoose("waiting approve or failed");
				}
					choosesViews.add(e);
					numberWhereNameStudent++;
					}
			}
			else  
			{
				ChooseView e = new ChooseView();
				e.setChooseid(chooses.get(i).getChooseid());
				if(chooses.get(i).getIschoose())
				{
					e.setIschoose("approved");
				}
				else
				{
					e.setIschoose("waiting approve or failed");
				}
				e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
				e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
				e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
				e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
				choosesViews.add(e);
			}
				
			}
			Integer count = 0;
			if(StringUtils.isNotBlank(studentname)||StringUtils.isNotBlank(teachername)||StringUtils.isNotBlank(subjectID)){
				count = numberWhereNameStudent;
			}
			else
			{count = chooseMapper.selectChooseListCount(choose);
				
			}
			// 查询客户列表总记录数
		
			// 创建Page返回对象
			Page<ChooseView> result = new Page<>();
			result.setPage(page);
			result.setRows(choosesViews);
			result.setSize(rows);
			result.setTotal(count);
			return result;
		
	
	}
	@Override
	public Page <ChooseView> findChooseListWhereTeacherID(Integer page, Integer rows, String studentname, String subjectID,
			String teachername, String collegeID ,String ischoose ) {
       int studentids[];
       int numberWhereNameStudent=0;
		Choose choose  = new Choose();
		boolean ischooseing;
	        if(StringUtils.isNotBlank(teachername))
		{
			choose.setTeacherid(Integer.parseInt(teachername));
		}
        	if(StringUtils.isNotBlank(ischoose))
			{
				if(ischoose.equals("1")||ischoose=="1")
				{
					ischooseing=true;
				}
				else
				{
					ischooseing=false;
				}
				choose.setIschoose(ischooseing);	
			}
		
			if(StringUtils.isNotBlank(collegeID)){
				choose.setCollegeid(Integer.parseInt(collegeID));
			}
		
		
			// 查询客户列表
			List<Choose> chooses = chooseMapper.selectChooseList(choose);  
			 List<ChooseView> choosesViews = new ArrayList<ChooseView>();
			for(int i=0;i<chooses.size();i++)
			{
				if(StringUtils.isNotBlank(studentname)){
				//学生人名匹配；

			      String pattern = ".*"+studentname+".*";
			 
			      boolean isMatch = Pattern.matches(pattern, studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
			    
				if(isMatch)
				{
				ChooseView e = new ChooseView();
				e.setChooseid(chooses.get(i).getChooseid());
				e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
				e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
				e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
				e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
			if(chooses.get(i).getIschoose())
			{
				e.setIschoose("approved");
			}
			else
			{
				e.setIschoose("waiting approve or failed");
			}
				choosesViews.add(e);
				numberWhereNameStudent++;
				}
			}
			
			else if(StringUtils.isNotBlank(subjectID)){
				String pattern = ".*"+subjectID+".*";
				 
			      boolean isMatch = Pattern.matches(pattern, subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
			      if(isMatch)
					{
					ChooseView e = new ChooseView();
					e.setChooseid(chooses.get(i).getChooseid());
					e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
					e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
					e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
					e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
				if(chooses.get(i).getIschoose())
				{
					e.setIschoose("approved");
				}
				else
				{
					e.setIschoose("waiting approve or failed");
				}
					choosesViews.add(e);
					numberWhereNameStudent++;
					}
			}
			else  
			{
				ChooseView e = new ChooseView();
				e.setChooseid(chooses.get(i).getChooseid());
				if(chooses.get(i).getIschoose())
				{
					e.setIschoose("approved");
				}
				else
				{
					e.setIschoose("waiting approve or failed");
				}
				e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
				e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
				e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
				e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
				choosesViews.add(e);
			}
				
			}
			Integer count = 0;
			if(StringUtils.isNotBlank(studentname)||StringUtils.isNotBlank(teachername)||StringUtils.isNotBlank(subjectID)){
				count = numberWhereNameStudent;
			}
			else
			{count = chooseMapper.selectChooseListCount(choose);
				
			}
			// 查询客户列表总记录数
		
			// 创建Page返回对象
			Page<ChooseView> result = new Page<>();
			result.setPage(page);
			result.setRows(choosesViews);
			result.setSize(rows);
			result.setTotal(count);
			return result;
		
	
	}
	@Override
	public Page <ChooseView> findChooseListWhereID(Integer page, Integer rows, String studentID, String subjectID,
			String teacherID, String collegeID ,String ischoose ) {

		Choose choose  = new Choose();
		boolean ischooseing;
			// 判断客户名称
			if(StringUtils.isNotBlank(ischoose))
			{
				if(ischoose.equals("1")||ischoose=="1")
				{
					ischooseing=true;
				}
				else
				{
					ischooseing=false;
				}
				choose.setIschoose(ischooseing);	
			}
			// 判断客户信息来源
			if(StringUtils.isNotBlank(subjectID)){
				choose.setSubjectid(Integer.parseInt(subjectID));
			}
			// 判断客户所属行业
			if(StringUtils.isNotBlank(teacherID)){
				choose.setTeacherid(Integer.parseInt(teacherID));
			}
			// 判断客户级别
			if(StringUtils.isNotBlank(collegeID)){
				choose.setCollegeid(Integer.parseInt(collegeID));
			}
		
			if(StringUtils.isNotBlank(studentID)){
				choose.setStudentid(Integer.parseInt(studentID));
			}
		
			// 查询客户列表
			List<Choose> chooses = chooseMapper.selectChooseList(choose);  
			 List<ChooseView> choosesViews = new ArrayList<ChooseView>();
			for(int i=0;i<chooses.size();i++)
			{
	
				ChooseView e = new ChooseView();
				e.setChooseid(chooses.get(i).getChooseid());
				if(chooses.get(i).getIschoose())
				{
					e.setIschoose("approved");
				}
				else
				{
					e.setIschoose("waiting approve or failed");
				}
				e.setSubjectname(subjectMapper.selectByPrimaryKey(chooses.get(i).getSubjectid()).getSubjectname());
				e.setStudentname(studentMapper.selectByPrimaryKey(chooses.get(i).getStudentid()).getStudentname());
				e.setTeachername(teacherMapper.selectByPrimaryKey(chooses.get(i).getTeacherid()).getTeachername());
				e.setCollegename(collegeMapper.selectByPrimaryKey(chooses.get(i).getCollegeid()).getCollegename());
				choosesViews.add(e);
			}
				
			
		
			
			int count = chooseMapper.selectChooseListCount(choose);
				
			
			// 查询客户列表总记录数
		
			// 创建Page返回对象
			Page<ChooseView> result = new Page<>();
			result.setPage(page);
			result.setRows(choosesViews);
			result.setSize(rows);
			result.setTotal(count);
			return result;
		
	
	}
}
