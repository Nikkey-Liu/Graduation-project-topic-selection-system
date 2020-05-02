<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
  <!--  navigation bar -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>managerchoose/ChooseManangelist.action">Graduation project topic selection system</a>
	</div>
	<!-- The icon section on the right side of the navigation bar -->
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
			<ul class="nav" id="side-menu" role="tablist">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search content...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
			<%-- 	<li>
				    <a href="${pageContext.request.contextPath }/teacher/subjectListByTeacher.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 课题管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/teacher/studentChooseManangelist.action">
				      <i class="fa fa-dashboard fa-fw" ></i>学生管理
				    </a>
				</li> --%>
				
				
		<li role="presentation" ><a href="${pageContext.request.contextPath }/manageruser/userList.action" >User</a></li>
     <li role="presentation" ><a href="${pageContext.request.contextPath }/managersubject/subjectList.action" >Subject</a></li>
    
    
    <li role="presentation"  class="active"><a href="${pageContext.request.contextPath }/managerchoose/ChooseManangelist.action" >Choose</a></li>
        
    <li role="presentation" ><a href="${pageContext.request.contextPath }/managergrade/GradeList.action" >Grade</a></li>
        <li role="presentation" ><a href="${pageContext.request.contextPath }/managercollege/CollegeList.action" >College</a></li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
   <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
    <div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">User management</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
						<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/managerchoose/ChooseManangelist.action">
					<div class="form-group">
						<label for="custStudentName">Student name</label> 
						<input type="text" class="form-control" id="AllTimeStudentName" 
						                   value="${AllTimeStudentName}" name="AllTimeStudentName" />
					</div>
					<div class="form-group">
						<label for="custStudentName">Teacher name</label> 
						<input type="text" class="form-control" id="AllTimeTeacherName" 
						                   value="${AllTimeTeacherName}" name="AllTimeTeacherName" />
					</div>
					<div class="form-group">
						<label for="custStudentName">Topic name</label> 
						<input type="text" class="form-control" id="AllTimeSubjectname" 
						                   value="${AllTimeSubjectname}" name="AllTimeSubjectname" />
					</div>
						<div class="form-group">
						<label for="custCollege">College</label> 
						<select	class="form-control" id="allTimeCollege"  name="allTimeCollege">
							<option value="">--please select--</option>
							<c:forEach items="${collegeType}" var="item">
								<option value="${item.collegeid}"
								        <c:if test="${item.collegeid == allTimeCollege}"> selected</c:if>>
								    ${item.collegename }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custIsChoose">state</label>
						<select	class="form-control" id="AllTimeIsChoose" name="AllTimeIsChoose">
							<option value="">--select--</option>
							
								<option value="1"
								        <c:if test="${AllTimeIsChoose == '1'}"> selected</c:if>>
								 approval
								</option>
						
								<option value="0"
								        <c:if test="${AllTimeIsChoose == '0'}">selected </c:if>>
								   processing or failed 
								</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">check</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newSubjectDialog" onclick="clearSubject()">new user</a>

		           
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">topic list</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>College</th>
								<th>Student</th>
								<th>Teacher</th>
								<th>Topic</th>
								<th>State</th>
								<th>Operation</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.chooseid}</td>
									<td>${row.collegename}</td>
									<td><button class="btn btn-danger btn-xs"  data-toggle="modal" data-target="#studentInforDialog"  onclick="findStudentName(${row.chooseid})">${row.studentname}</button></td>
									<td><button class="btn btn-danger btn-xs"  data-toggle="modal" data-target="#TeacherInforDialog"  onclick="findTeacherName(${row.chooseid})">${row.teachername}</button></td>
									<td><button class="btn btn-danger btn-xs"  data-toggle="modal" data-target="#SubjectInforShow"  onclick="findSubjectName(${row.chooseid})">${row.subjectname}</button></td>
									<td>${row.ischoose}</td>
									<td>
										<%-- <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editSubject(${row.chooseid})">修改</a> --%>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteChoose(${row.chooseid})">Delete</a>
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/managerchoose/ChooseManangelist.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	</div>
    
    
  </div>
  
  
  
  
    <!-- 客户列表查询部分  start-->
	
	<!-- 客户列表查询部分  end-->
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="TeacherInforDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">teacher Information</h4>
			</div>
			<div class="modal-body">
				
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
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">College</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="tcollegeid"  name="tcollegeid">
								<option value="">--please select--</option>
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
						<label for="new_phone" class="col-sm-2 control-label">teacherid</label>
						<div class="col-sm-10">
						<input name="teacherid" id="teacherid" type="text" class="form-control"  aria-describedby="sizing-addon1" value="${teacher.teacherid}"/>
						</div>
					</div>
					
					<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
			</div>
			
			</div>
			
		</div>
	</div>
<!-- Create the customer modal box -->
<div class="modal fade" id="studentInforDialog" tabindex="-1" role="dialog"
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
				
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    Studentname
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="studentname" placeholder="${student.studentname}" name="studentname" value="${student.studentname}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">sex</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="studentsex" name="studentsex">
								<option value="">--please select--</option>
								
								</option>
									<option value="male"<c:if test="${student.studentsex == 'male'}">selected</c:if>>
								   
										male						
									</option>
									<option value="female"<c:if test="${student.studentsex == 'male'}">selected</c:if>>
								   
										male		
									</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">学院</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="scollegeid"  name="scollegeid">
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
								<option value="">--please--</option>
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
						<label for="new_phone" class="col-sm-2 control-label">phone number</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="studenttelephone" placeholder="${student.studenttelephone}" name="studenttelephone" value="${student.studenttelephone}"/>
						</div>
					</div>
						<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">studentid</label>
						<div class="col-sm-10">
					<input name="studentid" id="studentid" type="text" class="form-control"  aria-describedby="sizing-addon1" value="${student.studentid}"/>
						</div>
					</div>
					
					<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
				
			</div>

			</div>
			
		</div>
	</div>
</div>
<div class="modal fade" id="SubjectInforShow" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">edit information</h4>
			</div>
			<div class="modal-body">
				
					<input type="hidden" id="edit_cust_id" name="cust_id"/>
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">subjectname</label>
						<div class="col-sm-10">
						<input type="text" class="form-control" id="esubjectname" placeholder="subjectname" name="subjectname" />
						</div>
					</div>	
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">subcontext</label>
						<div class="col-sm-10">
						<textarea class="form-control" rows="6" id="esubcontext" placeholder="subcontext" name="subcontext" ></textarea>					
						</div>
					</div>
					<input name="teacherid" id="eteacherid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" />
				<input name="collegeid" id="ecollegeid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" />
				<input name="subjectid" id="esubjectid" type="hidden" class="form-control"  aria-describedby="sizing-addon1"/>
				<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
			
			</div>
			
			</div>
			
		</div>
	</div>
</div>


<!-- 引入js文件onclick="updateCustomer()" -->
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
function findTeacherName(id) {
	$.ajax({
        type:"post",
        url:"<%=basePath%>managerchoose/getTeacherInforById.action",
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
function findStudentName(id) {
	 $.ajax({
	        type:"post",
	        url:"<%=basePath%>managerchoose/getStudentInforByChooseId.action",
	        data:{"id":id},
	        success:function(data) {
	           
	           
	           $("#studentid").val(data.studentid);
	            $("#studentname").val(data.studentname);
	            $("#studentsex").val(data.studentsex)
	            $("#scollegeid").val(data.collegeid)
	            $("#gradeid").val(data.gradeid)
	            $("#studentemail").val(data.studentemail);
	            $("#studenttelephone").val(data.studenttelephone);
	            
	        }
	    });
	
	
	}
function deleteChoose(id) {
    if(confirm('Delete confirm?')) {
$.post("<%=basePath%>managerchoose/deleteChoose.action",{"id":id},
function(data){
            if(data =="OK"){
                alert("success delete！");
                window.location.reload();
            }else{
                alert("delete failed！");
                window.location.reload();
            }
        });
    }
}
function findSubjectName(id) {
    $.ajax({
        type:"get",
        url:"<%=basePath%>managerchoose/getSubjectInforById.action",
        data:{"id":id},
        success:function(data) {
            $("#esubjectid").val(data.subjectid);
            $("#esubjectname").val(data.subjectname);
            $("#esubcontext").val(data.subcontext);
            $("#ecollegeid").val(data.collegeid);
            $("#eteacherid").val(data.teacherid);
            
        }
    });
}
</script>
</body>
</html>