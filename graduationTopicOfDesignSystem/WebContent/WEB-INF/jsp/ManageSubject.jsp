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

  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>managersubject/subjectList.action">Graduation project topic selection system</a>
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
			<ul class="nav" id="side-menu" role="tablist">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="search content...">
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
     <li role="presentation" class="active"><a href="${pageContext.request.contextPath }/managersubject/subjectList.action" >Subject</a></li>
    
    
    <li role="presentation"><a href="${pageContext.request.contextPath }/managerchoose/ChooseManangelist.action" >Choose</a></li>
        
    <li role="presentation" ><a href="${pageContext.request.contextPath }/managergrade/GradeList.action" >Grade</a></li>
        <li role="presentation"><a href="${pageContext.request.contextPath }/managercollege/CollegeList.action" >College</a></li>
		</ul>
		</div>
	</div>
	
  </nav>
  
  
   <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
    <div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">subject Management</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/managersubject/subjectList.action">
					<div class="form-group">
						<label for="custSubjectContent">SubjectContent</label> 
						<input type="text" class="form-control" id="allTimeSubjectContent" 
						                   value="${allTimeSubjectContent }" name="allTimeSubjectContent" />
					</div>
					<div class="form-group">
						<label for="custSubjectname">Subjectname</label> 
						<select	class="form-control" id="allTimeSubjectname" name="allTimeSubjectname">
							<option value="">--please selcet--</option>
							<c:forEach items="${subjectType}" var="item">
								<option value="${item.subjectid}"
								       <c:if test="${item.subjectid == allTimeSubjectname}">selected</c:if>>
								    ${item.subjectname }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custCollege">College</label> 
						<select	class="form-control" id="allTimeCollege"  name="allTimeCollege">
							<option value="">--please selcet--</option>
							<c:forEach items="${collegeType}" var="item">
								<option value="${item.collegeid}"
								        <c:if test="${item.collegeid == allTimeCollege}"> selected</c:if>>
								    ${item.collegename }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custteachers">Teacher</label>
						<select	class="form-control" id="allTimeteachers" name="allTimeteachers">
							<option value="">--please selcet--</option>
							<c:forEach items="${teachers}" var="item">
								<option value="${item.teacherid}"
								        <c:if test="${item.teacherid == allTimeteachers}"> selected</c:if>>
								    ${item.teachername }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">search</button>
				</form>
			</div>
		</div>
	        
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">List</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>subjectid</th>
								<th>subjectname</th>
								<th>subjectcontent</th>
								<th>Teacher</th>
								<th>collegename</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.subjectid}</td>
									<td>${row.subjectname}</td>
									<td>${row.subcontext}</td>
									<td><a href="#" class="btn btn-primary btn-xs"  data-toggle="modal" data-target="#TeacherDialog"onclick= "teacherInfor(${row.subjectid})">${row.teachername}</a></td>
									<td>${row.collegename}</td>
									
									<td>
										<a href="#" class="btn btn-primary btn-xs"  onclick= "deleteSubject(${row.subjectid})">delete</a>
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/managersubject/subjectList.action" />
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
<!-- 客户列表查询部分  end-->
</div>
<div class="modal fade" id="TeacherDialog" tabindex="-1" role="dialog"
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
<!-- 创建客户模态框 -->

<!-- 创建客户模态框 -->
 
<!-- 修改客户模态框 onclick="createCustomer()" -->

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
function teacherInfor(id) {
	$.ajax({
        type:"post",
        url:"<%=basePath%>managersubject/getTeacherInfoById.action",
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
//删除客户
function deleteSubject(id) {
    if(confirm('comfirm delete subject')) {
$.post("<%=basePath%>managersubject/deleteSubject.action",{"id":id},
function(data){
            if(data =="OK"){
                alert("success！");
                window.location.reload();
            }else{
                alert("failed！");
                window.location.reload();
            }
        });
    }
}

</script>
</body>
</html>