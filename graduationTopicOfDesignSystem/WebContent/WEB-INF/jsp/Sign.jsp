<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%@ page import ="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1"><!--宽度等于设备宽度-->
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<title>毕业设计选题系统</title>
 <style>
 html,body{
	width:100%;
	height:100%
}
 body{
  font-family: "华文细黑";
  background:url("${pageContext.request.contextPath}/img/bg.jpg") no-repeat;
  background-size: 100%;
}
     .container-fluid {
        padding-top: 150px;
        padding-bottom: 10px;
      }
     .list-group-item{
       text-align: center;
     }

      .login{
        margin-top:60px;

      }
      
.center {
	width: auto;
	display: table;
	margin-left: auto;
	margin-right: auto;
}
    </style>
 <script type="text/javascript">
 function check(form){
	    var username = $("#username").val();
	    var password = $("#password").val();
	    var usertype = $("#usertype").val();
	    var email = $("#email").val();
	    var passwordagain = $("#passwordagain").val();
	    if(username=="" || password==""||usertype==""){
	    	$("#message").text("账号或密码或用户类型不能为空！");
	        return false;
	    }  
	    if(email==""){
	    	$("#message").text("email不能为空！");
	        return false;
	    }
	    if(passwordagain!=password){
	    	$("#message").text("密码不一致");
	        return false;
	    }
	    
	    return true;
	}
 
    </script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="col-md-12">
			<div class="row ">
		
						
		    <div class="col-md-6">
				<%-- <img src="${pageContext.request.contextPath}/img/5.jpg" class="img-responsive" alt="Responsive image">
	 --%>		</div>
                
                
            
			<div class="col-md-6">
               <div class="login">
             	<form action="${pageContext.request.contextPath }/creatUser.action" 
			                       method="post" onsubmit="return check(this)">
   <div class="form-horizontal center" >
    <div class="btn-group" data-toggle="buttons">
      <label class="btn btn-primary">
        <input type="radio" id="option2" autocomplete="off" name="usertype" value="Teacher" > Teacher
      </label>
      <label class="btn btn-primary">
        <input type="radio" id="option3" autocomplete="off" name="usertype" value="Student"> Student
      </label>
    </div>

    <div class="form-group">
      <div class="row-fluid">
        <input type="text" class="form-control" id="username" placeholder="name" name="username">
      </div>
    </div>
      <div class="form-group">
      <div class="row-fluid">
        <input type="password" class="form-control" id="password" placeholder="password" name="password">
      </div>
    </div>
    <div class="form-group">
      <div class="row-fluid">
        <input type="password" class="form-control" id="passwordagain" placeholder="Password again"  name="passwordagain">
      </div>
    </div>
     <div class="form-group">
      <div class="row-fluid">
        <input type="email" class="form-control" id="email" placeholder="email @example.com"  name="email">
      </div>
    </div>
    <div class="form-group">
     <div class="col-sm-offset-2 col-sm-10 row">
     
        <button type= "submit" class="btn btn-default btn-lg" id="btn1">注册</button>
    
     
      </div>
    
    </div>
     
  </div>
    </form>
  </div>
<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
				</div>
			</div>
		
		    
			
		</div>
	</div>
    </div>

</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
</body>
</html>
