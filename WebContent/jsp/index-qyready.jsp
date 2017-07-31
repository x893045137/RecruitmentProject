<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<!--UTF-8编码-->
		<meta charset="utf-8" />
		<!-- 让bootstrap可以在IE浏览器中运行渲染模式 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<!-- 初始化移动浏览显示 width=device-width让页面的宽度等于视图的宽度 initial-scale 缩放比率 1:1-->
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<!-- Bootstrap.css -->
		<link rel="stylesheet" href="../css/index/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/index/default.css" />
		<link rel="stylesheet" href="../css/index/css.css" />
		<!-- Jquery.js -->
		<script type="text/javascript" src="../js/jquery.js"></script>
		<!-- Bootstrap.js -->
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		<title>企业</title>
		<style type="text/css">
			table{width:100%;font-size: 14px;color:#666;border:1px solid #d4d4d4;}
			table th{font-weight: bold;}
			table th,td{height:50px;line-height: 50px;text-align: center;border-bottom:1px dashed #d4d4d4;}
		</style>
	</head>
<body>
		<div id="head">
			<div class="wd">
				<div class="headsy">
					<div class="head-logo">
						<a href="#"> <img src="img/logo.png" alt="前程无忧" /></a>
					</div>
					<div class="head-logotxt">
						<img src="img/slogen.png" alt="" />
					</div>
					<div class="head-right">
						<a class="head-ss" href="./index.jsp">首页</a>
						<a class="head-ss" href="#">帮助中心</a>
					</div>
				</div>
			</div>
		</div>
		<div id="content">
			<div class="wd" style="margin-top: 60px;">
				<div class="c-resumeleft">
					<div class="c-resumesume">
						<ul class="nav nav-pills nav-stacked">
							<li class="active">
								<a href="javascript:void(0)">基本信息</a>
							</li>
							<li>
								<a href="javascript:void(0)">发表招聘</a>
							</li>
							<li>
								<a href="javascript:void(0)">查看投递</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="c-resumeright">
				<div class="c-qytable">
					<table>
						<tr>
							<th width="12%">姓名</th>
							<th width="12%">工作经验</th>
							<th width="12%">申请职位</th>
							<th width="12%">薪资</th>
							<th width="20%">电话</th>
							<th width="20%">email</th>
							<th width="12%">操作</th>
						</tr>
						<c:forEach items="${list}" var="readydelivery">
						<tr>
							<td>${readydelivery.rd_username}</td>
							<td>${readydelivery.rd_workexe}</td>
							<td>${readydelivery.rd_jobtype}</td>
							<td>${readydelivery.rd_salary}</td>
							<td>${readydelivery.rd_phone}</td>
							<td>${readydelivery.rd_email}</td>
							<td><span><a href="#">查看详情</a></span></td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
	</body>
</html>