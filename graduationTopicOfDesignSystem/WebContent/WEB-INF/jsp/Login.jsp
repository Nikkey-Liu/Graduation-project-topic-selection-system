<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1"><!--宽度等于设备宽度-->
 <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<title>Graduation project topic selection system</title>
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
 function check(){
	    var username = $("#username").val();
	    var password = $("#password").val();
	    var usertype = $("#usertype").val();
	    if(username=="" || password==""||usertype==""){
	    	$("#message").text("The account or password or user type cannot be empty！");
	        return false;
	    }  
	    return true;
	}
 function toSign(){
	    window.location.href="${pageContext.request.contextPath }/sign.action"
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
             	<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
   <div class="form-horizontal center" >
    <div class="btn-group" data-toggle="buttons">
      <label class="btn btn-primary ">
        <input type="radio"  id="option1" autocomplete="off"  name="usertype" value="Manager">Manager
      </label>
      <label class="btn btn-primary">
        <input type="radio" id="option2" autocomplete="off" name="usertype" value="Teacher" > Teacher
      </label>
      <label class="btn btn-primary">
        <input type="radio" id="option3" autocomplete="off" name="usertype" value="Student"> Student
      </label>
    </div>

    <div class="form-group">

      <div class="row-fluid">
        <input type="text" class="form-control" id="username" placeholder="userName" name="username">
      </div>
    </div>
    <div class="form-group">
    
      <div class="row-fluid">
        <input type="password" class="form-control" id="Password" placeholder="Password"  name="password">
      </div>
    </div>
 
    <div class="form-group">
     <div class="col-sm-offset-2 col-sm-10 row">
  
      <div class="col-md-2">
        <button type="submit" class="btn btn-default" id="btn1">login</button>
      </div>
      <div class="col-md-2">
      
      </div>
       <div class="col-md-2">
        <button type="button" class="btn btn-default" id="btn2" onclick="return toSign()">register</button>
      </div>
     
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
