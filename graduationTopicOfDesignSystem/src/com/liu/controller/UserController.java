package com.liu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liu.pojo.User;
import com.liu.service.UserService;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String username,String password,String usertype, Model model, 
                                                          HttpSession session) {
		// 通过账号和密码查询用户
		User user = userService.findByPrimaryKey(username, password,usertype);
		if(user != null){		
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", user);
			// 跳转到主页面
//			return "customer";
			if(usertype=="Manager"||usertype.equals("Manager"))//manager
			return "redirect:manageruser/userList.action";
			else if(usertype=="Teacher"||usertype.equals("Teacher"))//teacher
				return "redirect:teacher/subjectListByTeacher.action";
			else if(usertype=="Student"||usertype.equals("Student"))//student
				return "redirect:student/subjectList.action";
		}
		model.addAttribute("msg", "account information error！");
         // 返回到登录页面
		return "Login";
	}	/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value = "/toCustomer.action")
	public String toCustomer() {
	    return "customer";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "Login";
	}
	/**
	 * 向用户注册页面跳转
	 */
	@RequestMapping(value = "/sign.action", method = RequestMethod.GET)
	public String toSign() {
	    return "Sign";
	}
	/**
	 * 向用户注册页面跳转
	 */
	@RequestMapping(value = "/creatUser.action", method = RequestMethod.POST)
	public String creatUser(User user,Model model ,HttpSession session ) {
		Byte userstate=1;
		user.setUserstate(userstate);
		 int rows = userService.creatUser(user);
		 if(rows > 0){
			 model.addAttribute("msg", "success");
			 return "redirect:login.action";
		    }
		 return "redirect:sign.action";
	}

}
