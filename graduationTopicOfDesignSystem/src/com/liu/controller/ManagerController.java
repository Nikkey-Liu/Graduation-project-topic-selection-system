package com.liu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liu.commonUtils.Page;
import com.liu.pojo.ChooseView;
import com.liu.pojo.College;
import com.liu.pojo.Grade;
import com.liu.pojo.Student;
import com.liu.pojo.Subject;
import com.liu.pojo.SubjectView;
import com.liu.pojo.Teacher;
import com.liu.pojo.User;
import com.liu.service.*;

@Controller
public class ManagerController {
	@Autowired
	private CollegeService  collegeService;
	@Autowired
	private GradeService  gradeService;
	@Autowired
	private SubjectService  subjectService;
	@Autowired
	private StudentService  studentService;
	@Autowired
	private TeacherService  teacherService;
	@Autowired
	private ChooseService  chooseService;
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/manageruser/userList.action")	
	public String userList(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String AlltimeUsertype, String allTimeUsername, String AlltimeUserstate,
			 Model model,HttpSession session) {
		// 条件查询所有客户
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		
		Page <User> userpage = userService.findUserListPage(page, rows, allTimeUsername, AlltimeUsertype, AlltimeUserstate);
		model.addAttribute("page", userpage);
		// 学院
		
		model.addAttribute("AlltimeUsertype", AlltimeUsertype);//custName
		model.addAttribute("allTimeUsername", allTimeUsername);//custSource
		model.addAttribute("AlltimeUserstate", AlltimeUserstate);//custIndustry
		
		return "ManageUser";
		
	}
	/**
	 * 修改创建user
	 */
	@RequestMapping("/manageruser/updateUserInfor.action")

	public String updateUserInfor(User user, HttpSession session) {	
		if(user.getUserid() ==null || user.getUserid()==0)
		{
			
			 int rows = userService.creatUser(user);
			 if(rows > 0){
				  return "redirect:userList.action";
			    }else{
			       return "error";
			    }
		}
		else
		{	 int rows = userService.updateByPrimaryKey(user);
		if(rows > 0){
			  return "redirect:userList.action";
		    }else{
		       return "error";
		    }}
	}
	/**
	 * id查询user
	 */
	@RequestMapping("/manageruser/GetUserInforByID.action")
	@ResponseBody
	public User GetUserInforByID(Integer id, HttpSession session) {	
		User user=userService.findByPrimaryKeyID(id); 
		    return user;
	}
	/**
	 * 删除user
	 */
	@RequestMapping("/manageruser/DeleteUserById.action")
	@ResponseBody
	public String   DeleteUserById(Integer id) {
	    int rows = userService.deleteByPrimaryKey(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	/**
	 * 获得grade信息
	 */
	@RequestMapping(value = "/managergrade/GradeList.action")	
	public String gradeList(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			 String allTimeGradeName,
			 Model model,HttpSession session) {
		// 条件查询所有客户
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		
		Page <Grade> gradepage = gradeService.findGradeListPage(page, rows, allTimeGradeName);
		model.addAttribute("page", gradepage);
		// 学院
		
		model.addAttribute("allTimeGradeName", allTimeGradeName);//custName
		return "ManageGrade";
		
	}
	/**
	 * 修改创建grade
	 */
	@RequestMapping("/managergrade/updateGradeInfor.action")

	public String updateGradeInfor(Grade grade, HttpSession session) {	
		if(grade.getGradeid() ==null || grade.getGradeid()==0)
		{
			
			 int rows = gradeService.creatGrade(grade);
			 if(rows > 0){
				  return "redirect:GradeList.action";
			    }else{
			       return "error";
			    }
		}
		else
		{	 int rows = gradeService.updateByPrimaryKey(grade);
		if(rows > 0){
			  return "redirect:GradeList.action";
		    }else{
		       return "error";
		    }}
	}
	/**
	 * id查询grade
	 */
	@RequestMapping("/managergrade/GetGradeInforByID.action")
	@ResponseBody
	public Grade GetGradeInforByID(Integer id, HttpSession session) {	
		Grade grade=gradeService.findByPrimaryKey(id); 
		    return grade;
	}
	/**
	 * 删除grade
	 */
	@RequestMapping("/managergrade/DeleteGradeById.action")
	@ResponseBody
	public String   DeleteGradeById(Integer id) {
	    int rows = gradeService.deleteByPrimaryKey(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	/**
	 * 获得college信息
	 */
	@RequestMapping(value = "/managercollege/CollegeList.action")	
	public String CollegeList(
			 String allTimecollegeName,
			 Model model,HttpSession session) {
		// 条件查询所有客户
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		College college= new College();
		college.setCollegename(allTimecollegeName);
       List <College> colleges= collegeService.findCollegeList(college);
       
		model.addAttribute("page", colleges);
		// 学院
		
		model.addAttribute("allTimecollegeName", allTimecollegeName);//custName
		return "ManageCollege";
		
	}
	/**
	 * 修改创建college
	 */
	@RequestMapping("/managercollege/updatecollegeInfor.action")

	public String updatecollegeInfor(College college, HttpSession session) {	
		if(college.getCollegeid() ==null || college.getCollegeid()==0)
		{
			
			 int rows = collegeService.creatCollege(college);
			 if(rows > 0){
				  return "redirect:CollegeList.action";
			    }else{
			       return "error";
			    }
		}
		else
		{	 int rows = collegeService.updateByPrimaryKey(college);
		if(rows > 0){
			  return "redirect:CollegeList.action";
		    }else{
		       return "error";
		    }}
	}
	/**
	 * id查询college
	 */
	@RequestMapping("/managercollege/GetcollegeInforByID.action")
	@ResponseBody
	public College GetcollegeInforByID(Integer id, HttpSession session) {	
		College college=collegeService.findByPrimaryKey(id); 
		    return college;
	}
	/**
	 * 删除college
	 */
	@RequestMapping("/managercollege/DeletecollegeById.action")
	@ResponseBody
	public String   DeletecollegeById(Integer id) {
	    int rows = collegeService.deleteByPrimaryKey(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	/**
	 * list、、、、、、subject
	 */
	@RequestMapping(value = "/managersubject/subjectList.action")
	public String subjectList(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String  allTimeSubjectContent, String  allTimeSubjectname, String  allTimeteachers,
			String  allTimeCollege, Model model,HttpSession session) {
		// 条件查询所有客户
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		
		Page <SubjectView> subjects = subjectService
				.findSubjectList(page, rows, allTimeSubjectContent, 
						allTimeSubjectname, allTimeteachers,allTimeCollege);
		model.addAttribute("page", subjects);
		// 学院
		List<College> collegeType = collegeService.findCollegeList(null);
		//年级
		List<Grade> gradeType = gradeService.findGradeList(null);
		// 老师
		List<Teacher> teachers= teacherService.findTeacherList(null);
		List<Subject> subjectType = subjectService.findAllSubjectList(null);// 添加参数
		model.addAttribute("subjectType", subjectType);//subjectType
		model.addAttribute("collegeType", collegeType);//fromType
		model.addAttribute("gradeType", gradeType);//industryType
		model.addAttribute("teachers", teachers);//levelType
		model.addAttribute("allTimeSubjectContent", allTimeSubjectContent);//custName
		model.addAttribute("allTimeSubjectname", allTimeSubjectname);//custSource
		model.addAttribute("allTimeteachers", allTimeteachers);//custIndustry
		model.addAttribute("allTimeCollege", allTimeCollege);//custLevel
		return "ManageSubject";
		
	}
	/**
	 * 获得教师信息
	 */
	@RequestMapping("/managersubject/getTeacherInfoById.action")
	@ResponseBody
	public Teacher getTeacherInfoById(Integer id) {
	   Teacher teacher=teacherService.findByPrimaryKey(subjectService.findByPrimaryKey(id).getTeacherid()); 
	    return teacher;
	}
	/**
	 * 删除subject
	 */
	@RequestMapping("/managersubject/deleteSubject.action")
	@ResponseBody
	public String subjectDelete(Integer id) {
	    int rows = subjectService.deleteByPrimaryKey(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	
	/**
	 * 获取ChooseManangelist
	 */
	
	
	@RequestMapping(value = "/managerchoose/ChooseManangelist.action")
	public String  studentChooseManangelist(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, String AllTimeStudentName, String AllTimeTeacherName,
			 String allTimeCollege,String AllTimeIsChoose,String AllTimeSubjectname,
			 Model model,HttpSession session) {
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		
		Page <ChooseView> chooseViews = chooseService.findChooseListWhere(page, rows,AllTimeStudentName,AllTimeSubjectname ,AllTimeTeacherName,allTimeCollege,AllTimeIsChoose);
		
		model.addAttribute("page", chooseViews);
		// 学院
		List<College> collegeType = collegeService.findCollegeList(null);
		//年级
		List<Grade> gradeType = gradeService.findGradeList(null);
		// 老师
		List<Teacher> teachers= teacherService.findTeacherList(null);
		Teacher teacher= teacherService.findByUserID(user.getUserid());
		List<Subject> subjectType = subjectService.findAllSubjectList(null);// 添加参数
		model.addAttribute("subjectType", subjectType);//subjectType
		model.addAttribute("collegeType", collegeType);//fromType
		model.addAttribute("gradeType", gradeType);//industryType
		model.addAttribute("teachers", teachers);//levelType
		model.addAttribute("teacher", teacher);//levelType
		model.addAttribute("AllTimeStudentName", AllTimeStudentName);//custName
		model.addAttribute("AllTimeSubjectname", AllTimeSubjectname);//custSource
		model.addAttribute("AllTimeTeacherName", AllTimeTeacherName);//
		model.addAttribute("allTimeCollege", allTimeCollege);//custLevel
		model.addAttribute("AllTimeIsChoose", AllTimeIsChoose);//custLevel
		return "ManageChoose";
		
	}
	/**
	 * 删除choose
	 */
	@RequestMapping("/managerchoose/deleteChoose.action")
	@ResponseBody
	public String   chooseDelete(Integer id) {
		
	    int rows = chooseService.deleteByPrimaryKey(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	/**
	 * 通过id获取学生信息
	 */
	@RequestMapping("/managerchoose/getStudentInforByChooseId.action")
	@ResponseBody
	public Student getStudentInforByChooseId(Integer id) {
		Student  student =studentService.findByPrimaryKey(chooseService.findByPrimaryKey(id).getStudentid());
	
	    return student;
	}
	/**
	 * 通过id获取老师信息
	 */
	@RequestMapping("/managerchoose/getTeacherInforById.action")
	@ResponseBody
	public Teacher getTeacherInfoByIdChoose(Integer id) {
		   Teacher teacher=teacherService.findByPrimaryKey(chooseService.findByPrimaryKey(id).getTeacherid()); 
		    return teacher;
		}
	
	/**
	 * 通过id获取课题信息
	 */
	@RequestMapping("/managerchoose/getSubjectInforById.action")
	@ResponseBody
	public Subject getSubjectInforById(Integer id) {
		Subject subject=subjectService.findByPrimaryKey(chooseService.findByPrimaryKey(id).getSubjectid()); 
		    return subject;
		}
}
