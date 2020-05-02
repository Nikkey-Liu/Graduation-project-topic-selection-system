<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ="java.util.Iterator" %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Graduation project topic selection system</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">

  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>student/subjectList.action">Graduation project topic selection system</a>
	</div>

	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>Teacher</strong> <span class="pull-right text-muted">
								<em>Yesterday</em>
							</span>
						</div>
						<div>Are you free this evening?Please give me a chance!</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>View all messages</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>task 1</strong> 
								<span class="pull-right text-muted">complete 40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">complete40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>task 2</strong> 
								<span class="pull-right text-muted">complete 20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">complete 20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>Check all task</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
	
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> new response 
							<span class="pull-right text-muted small">4 minutes before</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> news
							<span class="pull-right text-muted small">4 minutes before</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i>new task
							<span class="pull-right text-muted small">4 minutes before</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> restart server
							<span class="pull-right text-muted small">4 minutes before</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>Check all</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               User：${USER_SESSION.username}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> System Settings</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>loginOut
					</a>
				</li>
			</ul> 
		</li>
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/student/subjectList.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> Graduation project topic selection 
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/student/studentChooseManangelist.action">
				      <i class="fa fa-dashboard fa-fw" ></i>manage subject
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Student</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/student/subjectList.action">
					<div class="form-group">
						<label for="custSubjectContent">subject content</label> 
						<input type="text" class="form-control" id="custSubjectContent" 
						                   value="${custSubjectContent }" name="custSubjectContent" />
					</div>
					<div class="form-group">
						<label for="custSubjectname">Subjectname</label> 
						<select	class="form-control" id="custSubjectname" name="custSubjectname">
							<option value="">--Please select--</option>
							<c:forEach items="${subjectType}" var="item">
								<option value="${item.subjectid}"
								       <c:if test="${item.subjectid == custSubjectname}">selected</c:if>>
								    ${item.subjectname }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custCollege">College</label> 
						<select	class="form-control" id="custCollege"  name="custCollege">
							<option value="">--Please select--</option>
							<c:forEach items="${collegeType}" var="item">
								<option value="${item.collegeid}"
								        <c:if test="${item.collegeid == custCollege}"> selected</c:if>>
								    ${item.collegename }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custteachers">Teacher</label>
						<select	class="form-control" id="custteachers" name="custteachers">
							<option value="">--Please select--</option>
							<c:forEach items="${teachers}" var="item">
								<option value="${item.teacherid}"
								        <c:if test="${item.teacherid == custteachers}"> selected</c:if>>
								    ${item.teachername }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog"onclick="checkStudentInfor()">Information search</a> <!--onclick="clearCustomer()" -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">List</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>subjectname</th>
								<th>subcontext</th>
								<th>Teacher</th>
								<th>College</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.subjectid}</td>
									<td>${row.subjectname}</td>
									<td>${row.subcontext}</td>
									<td><a href="#" class="btn btn-primary btn-xs"  data-toggle="modal" data-target="#newTeacherDialog"onclick= "teacherInfor(${row.subjectid})">${row.teachername}</a></td>
									<td>${row.collegename}</td>
									
									<td>
										<a href="#" class="btn btn-primary btn-xs"  onclick= "chooseSubject(${row.subjectid})">select subject</a>
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/student/subjectList.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Information</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal"  action="${pageContext.request.contextPath }/student/updateStudentInfor.action" 
			                       method="post" onsubmit="return check()"id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    studentname
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="studentname" placeholder="${student.studentname}" name="studentname" value="${student.studentname}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">sex</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="studentsex" name="studentsex">
								<option value="">--Please select--</option>
								
								</option>
									<option value="male"<c:if test="${student.studentsex == 'male'}">selected</c:if>>
										male						
									</option>
									<option value="female"<c:if test="${student.studentsex == 'female'}">selected</c:if>>
								   
										female						
												
									</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">College</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="collegeid"  name="collegeid">
								<option value="">--please select--</option>
								<c:forEach items="${collegeType}" var="item">
									<option value="${item.collegeid}"<c:if test="${item.collegeid == student.collegeid}"> selected</c:if>>
									${item.collegename }
									</option>
								</c:forEach>
							</select>
						</div>
					</div> 
					<div class="form-group">
						<label for="new_custLevel" style="float:left;padding:7px 15px 0 27px;">grade</label>
						<div class="col-sm-10">
							<select	class="form-control" id="gradeid" name="gradeid">
								<option value="">--please select--</option>
								<c:forEach items="${gradeType}" var="item">
									<option value="${item.gradeid}"<c:if test="${item.gradeid == student.gradeid}"> selected</c:if>>
									${item.gradename }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">mail</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="studentemail" placeholder="${student.studentemail}" name="studentemail" value="${student.studentemail}" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">phonenumber</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="studenttelephone" placeholder="${student.studenttelephone}" name="studenttelephone" value="${student.studenttelephone}"/>
						</div>
					</div>
					<input name="studentid" id="studentid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" value="${student.studentid}"/>
					<input name="userid" id="userid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" value="${USER_SESSION.userid}"/>
					<!-- <div class="form-group">
						<label for="new_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="移动电话" name="cust_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_zipcode" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_zipcode" placeholder="邮政编码" name="cust_zipcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_address" placeholder="联系地址" name="cust_address" />
						</div>
					</div> -->
					<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
				<button type="submit" class="btn btn-primary" >Submit</button>
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<!-- 修改客户模态框 -->
<div class="modal fade" id="newTeacherDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Information</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form" action="${pageContext.request.contextPath }/teacher/updateTeacherInfor.action" 
			                       method="post" onsubmit="return checkteacher()">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    name
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teachername" placeholder="${teacher.teachername}" name="teachername" value="${teacher.teachername}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">sex</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="teachersex" name="teachersex">
								<option value="">--please select--</option>
								
							
									<option value="male"<c:if test="${teacher.teachersex == 'male'}">selected</c:if>>
								   
										male						
									</option>
									<option value="female"<c:if test="${teacher.teachersex == 'female'}">selected</c:if>>
								   
										female	
												
									</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">college</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="tcollegeid"  name="tcollegeid">
								<option value="">--Please select--</option>
								<c:forEach items="${collegeType}" var="item">
									<option value="${item.collegeid}"<c:if test="${item.collegeid == teacher.collegeid}"> selected</c:if>>
									${item.collegename }
									</option>
								</c:forEach>
							</select>
						</div>
					</div> 
				
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">mail</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacheremail" placeholder="${teacher.teacheremail}" name="teacheremail" value="${teacher.teacheremail}" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">phone number</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teachertelephone" placeholder="${teacher.teachertelephone}" name="teachertelephone" value="${teacher.teachertelephone}"/>
						</div>
					</div>
						<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">research field</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherfield" placeholder="${teacher.teacherfield}" name="teacherfield" value="${teacher.teacherfield}"/>
						</div>
					</div>
						<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">teacherpost</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacherpost" placeholder="${teacher.teacherpost}" name="teacherpost" value="${teacher.teacherpost}"/>
						</div>
					</div>
					
					</div>
						<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">Teacherid</label>
						<div class="col-sm-10">
						<input name="teacherid" id="teacherid" type="text" class="form-control"  aria-describedby="sizing-addon1" value="${teacher.teacherid}"/>
						</div>
					</div>
					
					<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建客户窗口中的数据
	function clearCustomer() {
	    $("#new_customerName").val("");
	    $("#new_customerFrom").val("")
	    $("#new_custIndustry").val("")
	    $("#new_custLevel").val("")
	    $("#new_linkMan").val("");
	    $("#new_phone").val("");
	    $("#new_mobile").val("");
	    $("#new_zipcode").val("");
	    $("#new_address").val("");
	}
	// 创建客户
	function checkStudentInfor() {
	$.post("<%=basePath%>student/checkStudentInfor.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data !=null){
	        
	            alert("Loading success");
	           
	           $("#studentid").val(data.studentid);
	            $("#studentname").val(data.studentname);
	            $("#studentsex").val(data.studentsex)
	            $("#collegeid").val(data.collegeid)
	            $("#gradeid").val(data.gradeid)
	            $("#studentemail").val(data.studentemail);
	            $("#studenttelephone").val(data.studenttelephone);
	            $("#userid").val(data.userid); 
	         
	           
	        }else{
	            alert("You need to fill in your personal information");
	            //window.location.reload();
	        }
	    });
	}
	function teacherInfor(id) {
		$.ajax({
	        type:"post",
	        url:"<%=basePath%>student/getTeacherInfoById.action",
	        data:{"id":id},
	        success:function(data) {
	        	$("#teacherid").val(data.teacherid);
	            $("#teachername").val(data.teachername);
	            $("#teachersex").val(data.teachersex)
	            $("#tcollegeid").val(data.collegeid)
	            $("#teacherfield").val(data.teacherfield)
	            $("#teacheremail").val(data.teacheremail);
	            $("#teachertelephone").val(data.teachertelephone);
	            $("#teacherpost").val(data.teacherpost);            
	        }
	    });    		     
		}
	// 通过id获取修改的客户信息
	function chooseSubject(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>customer/getCustomerById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_subjectid").val(data.subjectid);
	            $("#edit_customerName").val(data.subjectname);
	            $("#edit_customerFrom").val(data.subcontext)
	            $("#edit_custIndustry").val(data.teacherid)
	            $("#edit_custLevel").val(data.collegeid)
	            $("#edit_linkMan").val(data.cust_linkman);
	            $("#edit_phone").val(data.cust_phone);
	            $("#edit_mobile").val(data.cust_mobile);
	            $("#edit_zipcode").val(data.cust_zipcode);
	            $("#edit_address").val(data.cust_address);
	            
	        }
	    });
	}
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("success update！");
				window.location.reload();
			}else{
				alert("failed！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function chooseSubject(id) {
	    if(confirm('Are you sure you want to choose this proposition?After the successful selection, we need to wait for the teachers approval before the graduation topic design')) {
	$.post("<%=basePath%>student/chooseSubject.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("Choose success!	Please wait for the teachers reply, from 8:00 am to 11:30 am on weekdays from Monday to Friday.The reply will be given from 2:30 PM to 5:30 PM");
	                window.location.reload();
	            }else{
	                alert("failed！");
	                window.location.reload();
	            }
	        });
	    }
	}
	function check(){
	    
	    var studentname = $("#studentname").val();
	    var studentsex = $("#studentsex").val();
	   
	    var gradeid = $("#gradeid").val();
	    var studentemail = $("#studentemail").val();
	    var studenttelephone = $("#studenttelephone").val();
	    var userid = $("#userid").val();
	
	    if(studentname==""){
	    	 alert("The name cannot be empty");
	        return false;
	    }  
	    if(studentsex==""){
	    	 alert("Gender cannot be null");
	        return false;
	    }  
	    if(gradeid==""){
	    	 alert("The grade cannot be empty");
	        return false;
	    }  
	    if(studentemail==""){
	    	 alert("The mailbox cannot be empty");
	        return false;
	    }  
	    if(studenttelephone==""){
	    	 alert("The phone cannot be empty");
	        return false;
	    }  
	    
	    return true;
	}
</script>
</body>
</html>