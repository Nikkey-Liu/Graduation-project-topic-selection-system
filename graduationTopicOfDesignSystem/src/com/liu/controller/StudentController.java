package com.liu.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liu.commonUtils.Page;
import com.liu.pojo.Choose;
import com.liu.pojo.ChooseView;
import com.liu.pojo.College;
import com.liu.pojo.Grade;
import com.liu.pojo.Student;
import com.liu.pojo.Subject;
import com.liu.pojo.SubjectView;
import com.liu.pojo.Teacher;
import com.liu.pojo.User;
import com.liu.pojo.VoMyClass;
import com.liu.service.ChooseService;
import com.liu.service.CollegeService;
import com.liu.service.GradeService;
import com.liu.service.StudentService;
import com.liu.service.SubjectService;
import com.liu.service.TeacherService;
import com.liu.service.UserService;

@Controller
public class StudentController {
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
	// 客户来源
		
		@RequestMapping(value = "/student/subjectList.action")
		public String list(@RequestParam(defaultValue="1")Integer page,
				@RequestParam(defaultValue="10")Integer rows, 
				String custSubjectContent, String custSubjectname, String custteachers,
				String custCollege, Model model,HttpSession session) {
			// 条件查询所有客户
			 User user = (User) session.getAttribute("USER_SESSION");
			    // 将当前用户id存储在客户对象中
			
			Page <SubjectView> subjects = subjectService
					.findSubjectList(page, rows, custSubjectContent, 
							custSubjectname, custteachers,custCollege);
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
			model.addAttribute("custSubjectContent", custSubjectContent);//custName
			model.addAttribute("custSubjectname", custSubjectname);//custSource
			model.addAttribute("custteachers", custteachers);//custIndustry
			model.addAttribute("custCollege", custCollege);//custLevel
			return "StudentChooseSubject";
			
		}
		
		/**
		 * 获取学生信息
		 */
		@RequestMapping("/student/checkStudentInfor.action")
		@ResponseBody
		public Student subjectCreate( Model model, HttpSession session) {
			
			
			
			
		    // 获取Session中的当前用户信息
		    User user = (User) session.getAttribute("USER_SESSION");
		    // 将当前用户id存储在客户对象中
		Student student=null;
		student=studentService.findByUserID(user.getUserid());
		    // 创建Date对象
		  //  Date date = new Date();
		    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
		   // Timestamp timeStamp = new Timestamp(date.getTime());
		   // subject.setCust_createtime(timeStamp);
		    // 执行Service层中的创建方法，返回的是受影响的行数
		   // int rows = subjectService.createsubject(subject);
		   if( student !=null){
			   
		        return student;
		   }else{
		       return  null;
		    }
		 
		}

		/**
		 * 获得老师信息
		 */
		@RequestMapping("/student/getTeacherInfoById.action")
		@ResponseBody
		public Teacher getTeacherInfoById(Integer id) {
		   Teacher teacher=teacherService.findByPrimaryKey(subjectService.findByPrimaryKey(id).getTeacherid()); 
		    return teacher;
		}
		/**
		 * 更新学生信息
		 */
		@RequestMapping("/student/updateStudentInfor.action")
	
		public String studentUpdate(Student student, HttpSession session) {
			
			
			if(student.getStudentid() ==null || student.getStudentid()==0)
			{
				
				 int rows = studentService.creatStudent(student);
				 if(rows > 0){
					  return "redirect:subjectList.action";
				    }else{
				       return "error";
				    }
			}
			else
			{	 int rows = studentService.updateByPrimaryKey(student);
			if(rows > 0){
				  return "redirect:subjectList.action";
			    }else{
			       return "error";
			    }}
		  
			
		}

		/**
		 * 选择命题
		 */
		@RequestMapping("/student/chooseSubject.action")
		@ResponseBody
		public String chooseSubject(Integer id ,HttpSession session) {
			Choose choose=new Choose();
			choose.setSubjectid(id);
			choose.setCollegeid(subjectService.findByPrimaryKey(id).getCollegeid());
			 User user = (User) session.getAttribute("USER_SESSION");
			choose.setStudentid(studentService.findByUserID(user.getUserid()).getStudentid());
			choose.setTeacherid(subjectService.findByPrimaryKey(id).getTeacherid());
			choose.setIschoose(false);
		  int rows = chooseService.creatChoose(choose);
		    if(rows > 0){			
		        return "OK";
		   }else{
		     return "FAIL";			
		 }
		}
		@RequestMapping(value = "/student/studentChooseManangelist.action")
		public String  studentChooseManangelist(@RequestParam(defaultValue="1")Integer page,
				@RequestParam(defaultValue="10")Integer rows, String custTeacherID, String custsubjectID,
				 String custcollegeID,String custIsChoose,
				 Model model,HttpSession session) {
			 User user = (User) session.getAttribute("USER_SESSION");
			    // 将当前用户id存储在客户对象中
			int studentid = studentService.findByUserID(user.getUserid()).getStudentid();
			Page <ChooseView> chooseViews = chooseService.findChooseListWhereID(page, rows,String.valueOf(studentid),null ,null,null,null);
			
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

			return "StudentWasChooseTopicSubject";
			
		}
		/**
		 * 删除choose
		 */
		@RequestMapping("/student/deleteChoose.action")
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
		 * 获得老师信息
		 */
		@RequestMapping("/student/getTeacherInfoByChooseId.action")
		@ResponseBody
		public Teacher getTeacherInfoByChooseId(Integer id) {
		   Teacher teacher=teacherService.findByPrimaryKey(chooseService.findByPrimaryKey(id).getTeacherid()); 
		    return teacher;
		}
}
