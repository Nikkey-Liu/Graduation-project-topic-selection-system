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
		<a class="navbar-brand" href="<%=basePath%>manageruser/userList.action">Graduation project topic selection system</a>
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
     <li role="presentation" ><a href="${pageContext.request.contextPath }/managersubject/subjectList.action" >Subject</a></li>
    
    
    <li role="presentation"><a href="${pageContext.request.contextPath }/managerchoose/ChooseManangelist.action" >Choose</a></li>
        
    <li role="presentation" ><a href="${pageContext.request.contextPath }/managergrade/GradeList.action" >Grade</a></li>
        <li role="presentation" class="active"><a href="${pageContext.request.contextPath }/managercollege/CollegeList.action" >College</a></li>
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
				<h1 class="page-header">College management</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
						<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/managercollege/CollegeList.action">
					<div class="form-group">
						<label for="custSubjectContent">College</label> 
						<input type="text" class="form-control" id="allTimecollegeName" 
						                   value="${allTimecollegeName}" name="allTimecollegeName" />
					</div>
					<button type="submit" class="btn btn-primary">search</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newcollegeDialog" onclick="clearcollegeInfor()">Create new college</a>          
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">List</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Collegeid</th>
								<th>College</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page}" var="row">
								<tr>
									<td>${row.collegeid}</td>
									<td>${row.collegename}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#editcollegeDialog" onclick= "editcollegeInfor(${row.collegeid})">edit</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deletecollege(${row.collegeid})">delete</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<%-- <div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/managercollege/collegeList.action" />
					</div> --%>
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
<!-- 创建客户模态框 -->
<div class="modal fade" id="newcollegeDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">College</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal"  action="${pageContext.request.contextPath }/managercollege/updatecollegeInfor.action" 
			                       method="post" onsubmit="return check()"id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						  Collegename
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="collegename" placeholder="2015" name="collegename" />
						</div>
					</div>	
					
					
					<input name="collegeid" id="collegeid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" />
					<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
				<button type="submit" class="btn btn-primary" >Submit</button>
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<!-- 创建客户模态框 -->
 <div class="modal fade" id="editcollegeDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">College</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal"  action="${pageContext.request.contextPath }/managercollege/updatecollegeInfor.action" 
			                       method="post" onsubmit="return checke()"id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						   Collegename
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="ecollegename" placeholder="2015" name="collegename" />
						</div>
					</div>	
					<input name="collegeid" id="ecollegeid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" />
					<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary" >submit</button>
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
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
//清空输入信息
function clearcollegeInfor() {
    $("#collegeid").val("");
    $("#collegename").val("")
   
}
//加载用户信息
function editcollegeInfor(id) {
	$.ajax({
        type:"post",
        url:"<%=basePath%>managercollege/GetcollegeInforByID.action",
        data:{"id":id},
        success:function(data) {
        	$("#ecollegeid").val(data.collegeid);
            $("#ecollegename").val(data.collegename);
          
        }
    });    		     
	}
	//删除用户
function deletecollege(id) {
    if(confirm('Cofirm delete college')) {
$.post("<%=basePath%>managercollege/DeletecollegeById.action",{"id":id},
function(data){
            if(data =="OK"){
                alert("delete success");
                window.location.reload();
            }else{
                alert("delete failed！");
                window.location.reload();
            }
        });
    }
}
function check(){
    

    var collegename = $("#collegename").val();
    if(collegename==""){
    	 alert("Name can not null");
        return false;
    }  
  
    
    return true;
}
function checke(){
    

	    var ecollegename = $("#ecollegename").val();
	    if(ecollegename==""){
	    	 alert("Name can not null");
	        return false;
	    }  
	  
	    
	    return true;
	}
</script>
</body>
</html>