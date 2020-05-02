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
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>teacher/subjectListByTeacher.action">Graduation project topic selection system</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
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
				    <a href="${pageContext.request.contextPath }/teacher/subjectListByTeacher.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> Graduation project topic selection 
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/teacher/studentChooseManangelist.action">
				      <i class="fa fa-dashboard fa-fw" ></i>student management
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
				<h1 class="page-header">Graduation project topic selection system</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newSubjectDialog" onclick="clearSubject()">Create new subject</a>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newTeacherDialog" onclick="checkTeacherInfor()" >my information</a>
		           
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">${USER_SESSION.username}list</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>id</th>
								<th>subjectname</th>
								<th>subject content</th>
								<th>teacher</th>
								<th>college</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.subjectid}</td>
									<td>${row.subjectname}</td>
									<td>${row.subcontext}</td>
									<td>${row.teachername}</td>
									<td>${row.collegename}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editSubject(${row.subjectid})">edit</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteSubject(${row.subjectid})">delete</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/teacher/subjectListByTeacher.action" />
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
<div class="modal fade" id="newTeacherDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">information</h4>
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
							<select	class="form-control" id="collegeid"  name="collegeid">
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
						<label for="new_linkMan" class="col-sm-2 control-label">email</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="teacheremail" placeholder="${teacher.teacheremail}" name="teacheremail" value="${teacher.teacheremail}" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">phone</label>
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
					<input name="teacherid" id="teacherid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" value="${teacher.teacherid}"/>
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
				<button type="submit" class="btn btn-primary" >submit</button>
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newSubjectDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">informaton</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal"  action="${pageContext.request.contextPath }/teacher/updateSubject.action" 
			                       method="post" onsubmit="return check()">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						 subject name
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="subjectname" placeholder="subjectname" name="subjectname" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">subcontext</label>
						<div class="col-sm-10">
						<textarea class="form-control" rows="6" id="subcontext" placeholder="subcontext" name="subcontext"></textarea>					
						</div>
					</div>
				<input name="teacherid" id="teacherid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" value="${teacher.teacherid}"/>
				<input name="collegeid" id="collegeid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" value="${teacher.collegeid}"/>
				<input name="subjectid" id="subjectid" type="hidden" class="form-control"  aria-describedby="sizing-addon1" value="0"/>
				<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
				<button type="submit" class="btn btn-primary">submit</button>  <!--  onclick="createCustomer()" -->
			</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<!-- 修改客户模态框 onclick="createCustomer()" -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
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
				<form class="form-horizontal" id="edit_customer_form" action="${pageContext.request.contextPath }/teacher/updateSubject.action" 
			                       method="post" onsubmit="return checke()">
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
				<button type="submit" class="btn btn-primary" >submit</button><!-- onclick="updateCustomer()" -->
			</div>
				</form>
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
//清空新建客户窗口中的数据
	function clearSubject() {
	    $("#subcontext").val("");
	    $("#subjectname").val("")
	   
	}
	function checkTeacherInfor() {
		$.post("<%=basePath%>teacher/checkTeacherInfor.action",
		$("#new_customer_form").serialize(),function(data){
		        if(data !=null){
		        
		            alert("loading success！");
		     
		           $("#teacherid").val(data.teacherid);
		            $("#teachername").val(data.teachername);
		            $("#teachersex").val(data.teachersex)
		            $("#collegeid").val(data.collegeid)
		            $("#teacherfield").val(data.teacherfield)
		            $("#teacheremail").val(data.teacheremail);
		            $("#teachertelephone").val(data.teachertelephone);
		            $("#teacherpost").val(data.teacherpost);
		            $("#userid").val(data.userid); 
		       
		           
		        }else{
		            alert("input your information");
		            //window.location.reload();
		        }
		    });
		}
	// 创建客户
	function createCustomer() {
	$.post("<%=basePath%>customer/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("success！");
	            window.location.reload();
	        }else{
	            alert("failed！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的客户信息
	function editSubject(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>teacher/getSubjectById.action",
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
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("success！");
				window.location.reload();
			}else{
				alert("failed！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteSubject(id) {
	    if(confirm('confirm subject delete?')) {
	$.post("<%=basePath%>teacher/deleteSubject.action",{"id":id},
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
function check(){
	    
	    var collegeid = $("#collegeid").val();
	    var teacherid = $("#teacherid").val();
	   
	    var subcontext = $("#subcontext").val();
	    var subjectname = $("#subjectname").val();
	  
	  
	
	    if(collegeid==""){
	    	 alert("Teacher information is insufficient to create a topic");
	        return false;
	    }  
	    if(teacherid==""){
	    	 alert("Teacher information is insufficient to create a topic");
	        return false;
	    }  
	    if(subjectname==""){
	    	 alert("The subject name cannot be empty");
	        return false;
	    }  
	   
	    if(subcontext==""){
	    	 alert("The topic cannot be empty");
	        return false;
	    }  
	    
	    return true;
	}
function checke(){
    
 
    var esubcontext = $("#esubcontext").val();
    var esubjectname = $("#esubjectname").val();
  
  
 
    if(esubjectname==""){
    	 alert("subjectname name  not null");
        return false;
    }  
   
    if(esubcontext==""){
    	 alert("subcontext not null");
        return false;
    }  
    
    return true;
}
function checkteacher(){

   
    var teachername = $("#teachername").val();
    var teachersex = $("#teachersex").val();
   
    var collegeid = $("#collegeid").val();
    var teacherfield = $("#teacherfield").val();
    var teacheremail = $("#teacheremail").val();
    var teachertelephone = $("#teachertelephone").val();
    var teacherpost = $("#teacherpost").val();
 

    if(teachername==""){
    	 alert("teachername cannot null");
        return false;
    }  
    if(teachersex==""){
    	 alert("teachersex cannot null");
        return false;
    }  
    if(collegeid==""){
    	 alert("collegeid cannot null");
        return false;
    }  
    if(teacheremail==""){
    	 alert(" teacheremail cannot null");
        return false;
    }  
    if(teachertelephone==""){
    	 alert(" teachertelephone cannot null");
        return false;
    }  
    
    if(teacherpost==""){
   	 alert(" teacherpost cannot null");
       return false;
   }  
    if(teacherfield==""){
   	 alert(" teacherfield cannot null");
       return false;
   }  
    return true;
}
</script>
</body>
</html>