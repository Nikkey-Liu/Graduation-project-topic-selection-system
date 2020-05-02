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
import com.liu.mapping.TeacherMapper;
import com.liu.pojo.*;

import com.liu.service.*;


@Controller
public class TeacherController {
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
	/**
	 * Listsubject
	 */
	@RequestMapping(value = "/teacher/subjectListByTeacher.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			 Model model,HttpSession session) {
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		int id = teacherService.findByUserID(user.getUserid()).getTeacherid();
		Page <SubjectView> subjects = subjectService.findSubjectListByTeacherID(page, rows, String.valueOf(id));
		
		model.addAttribute("page", subjects);
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
	
		return "TeacherSubjectManage";
		
	}
	@RequestMapping("/teacher/updateSubject.action")
	public String subjectUpdate(Subject subject, HttpSession session) {
		
		String inforError="";
		if(subject.getSubjectid() ==null || subject.getSubjectid()==0)
		{
			
				int rows =subjectService.creatSubject(subject);
			 if(rows > 0){
				  return "redirect:subjectListByTeacher.action";
			    }else{
			       return "error";
			    }
			
		}
		else
		{	 int rows = subjectService.updateByPrimaryKey(subject);
		if(rows > 0){
			  return "redirect:subjectListByTeacher.action";
		    }else{
		       return "error";
		    }}
	  
		
	}
	@RequestMapping("/teacher/updateTeacherInfor.action")
	public String teacherInforUpdate(Teacher teacher, HttpSession session) {
		
		String inforError="";
		if(teacher.getTeacherid() ==null || teacher.getTeacherid()==0)
		{
			
				int rows =teacherService.creatTeacher(teacher);
			 if(rows > 0){
				  return "redirect:subjectListByTeacher.action";
			    }else{
			       return "error";
			    }
			
		}
		else
		{	 int rows = teacherService.updateByPrimaryKey(teacher);
		if(rows > 0){
			  return "redirect:subjectListByTeacher.action";
		    }else{
		       return "error";
		    }}
	  
		
	}
	/**
	 * 删除subject
	 */
	@RequestMapping("/teacher/deleteSubject.action")
	@ResponseBody
	public String subjectDelete(Integer id) {
	    int rows = subjectService.deleteByPrimaryKey(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	@RequestMapping("/teacher/checkTeacherInfor.action")
	@ResponseBody
	public Teacher subjectCreate( Model model, HttpSession session) {	
	    // 获取Session中的当前用户信息
	    User user = (User) session.getAttribute("USER_SESSION");
	    // 将当前用户id存储在客户对象中
	    Teacher teacher=null;
	    teacher=teacherService.findByUserID(user.getUserid());
	    // 创建Date对象
	  //  Date date = new Date();
	    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
	   // Timestamp timeStamp = new Timestamp(date.getTime());
	   // subject.setCust_createtime(timeStamp);
	    // 执行Service层中的创建方法，返回的是受影响的行数
	   // int rows = subjectService.createsubject(subject);
	   if( teacher !=null){
		   
	        return teacher;
	   }else{
	       return  null;
	    }
	 
	}
	/**
	 * 通过id获取课题信息
	 */
	@RequestMapping("/teacher/getSubjectById.action")
	@ResponseBody
	public Subject getSubjectById(Integer id) {
		Subject subject = subjectService.findByPrimaryKey(id);
	
	    return subject;
	}
    /**
	 * 通过id获取课题信息
	 */
	@RequestMapping(value = "/teacher/studentChooseManangelist.action")
	public String  studentChooseManangelist(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, String custStudentName, String custsubjectID,
			 String custcollegeID,String custIsChoose,
			 Model model,HttpSession session) {
		 User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		 System.out.print(""+user);
		int teacherid = teacherService.findByUserID(user.getUserid()).getTeacherid();
		Page <ChooseView> chooseViews = chooseService.findChooseListWhereTeacherID(page, rows,custStudentName,custsubjectID ,String.valueOf(teacherid),custcollegeID,custIsChoose);
		
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
		model.addAttribute("custStudentName", custStudentName);//custName
		model.addAttribute("custsubjectID", custsubjectID);//custSource
		model.addAttribute("custIsChoose", custIsChoose);//
		model.addAttribute("custcollegeID", custcollegeID);//custLevel
		return "TeachertoStudentSubjectManage";
		
	}
	/**
	 * 删除choose
	 */
	@RequestMapping("/teacher/deleteChoose.action")
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
	 * 更新ischoose
	 */
	@RequestMapping("/teacher/updateIschoose.action")
	@ResponseBody
	public String   updateIschoose(Integer id ,Integer Ischoose) {
		Choose choose=new Choose();
		choose.setChooseid(id);
		
		if (Ischoose==0)
			choose.setIschoose(false);
		else
			choose.setIschoose(true);
	    int rows = chooseService.updateByPrimaryKeySelective(choose);
	    if(rows > 0){			
	        return "OK";
	    }else{
	       return "FAIL";			
	   }
	}
	/**
	 * 通过id获取学生信息
	 */
	@RequestMapping("/teacher/getStudentInforByChooseId.action")
	@ResponseBody
	public Student getStudentInforByChooseId(Integer id) {
		Student  student =studentService.findByPrimaryKey(chooseService.findByPrimaryKey(id).getStudentid());
	
	    return student;
	}
	
}
