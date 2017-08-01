<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<!--UTF-8编码-->
<meta charset="utf-8" />
<!-- 让bootstrap可以在IE浏览器中运行渲染模式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- 初始化移动浏览显示 width=device-width让页面的宽度等于视图的宽度 initial-scale 缩放比率 1:1-->
<meta name="viewport" content="width=device-width,initial-scale=1" />
<!-- Bootstrap.css -->
<link rel="stylesheet" href="../css/index/bootstrap.min.css" />
<link rel="stylesheet"
	href="../css/index/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="../css/index/default.css" />
<link rel="stylesheet" href="../css/index/css.css" />
<!-- Jquery.js -->
<script type="text/javascript" src="../js/jquery.js"></script>
<!-- Bootstrap.js -->
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="../js/bootstrap-datetimepicker.fr.js"></script>
<title>编辑简历</title>
<style type="text/css">
.c-on {
	background: #eee;
}

.c-proinbor {
	border-bottom: 1px solid #ddd;
}

.c-gaicolor {
	border: 1px solid #ff9f20;
}

textarea {
	width: 90%;
	height: 150px;
	float: left;
	font-size: 14px;
	color: #666;
	text-indent: 10px;
	max-width: 90%;
	max-height: 150px;
	padding: 10px;
	margin-left: 50px;
}
</style>
</head>
<body>
	<div id="head">
		<div class="wd">
			<div class="headsy">
				<div class="head-logo">
					<a href="#"> <img src="../img/logo.png" alt="前程无忧" /></a>
				</div>
				<div class="head-logotxt">
					<img src="../img/slogen.png" alt="" />
				</div>
				<div class="headlogin">
					<span class="head-shu">|</span>
				</div>
				<div class="head-right">
					<a class="head-ss" href="index.jsp">首页</a> <a class="head-ss"
						href="#">帮助中心</a>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="wd" style="margin-top: 60px;">
			<div class="c-resumeleft">
				<div class="c-resumesume">
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href=>我的简历</a></li>
						<li><a href="#A1">基本信息</a></li>
						<li><a href="#A2">求助意向</a></li>
						<li><a href="#A3">工作经验</a></li>
						<li><a href="#A4">教育经历</a></li>
					</ul>
				</div>
			</div>
			<div class="c-resumeright">
				<!-- 随便试一个 -->
				<span
					style="width: 100%; font-size: 16px; color: red; float: left; text-align: certer;">${message}</span>
				<div>
					<a name="A1"></a>
					<div class="c-prointext c-proinbor" id="c-prointext1">
						<div class="c-ptimg">
							<a href="#"><img src="../img/touxiang.png" alt="" /></a>
						</div>
						<div class="c-ptright">
							<p>
								<span style="font-size: 30px;">${list[0].username}</span>
								<span style="float: right;"><a href="#" class="c-gai" onclick="jbzeng('${list[0].id}')">新增</a>
									<a href="#" class="c-gai" onclick="jbgai('${list[0].id}','${userbasic[0].id }')">修改</a></span>
							</p>
							<p>
								<span class="c-ptrborder">现居地：${userbasic[0].ub_address}</span><span
									class="c-ptrborder">${userbasic[0].sex}</span> <span
									class="c-ptrborder">${userbasic[0].age}</span> <span
									class="c-ptrborder">${userbasic[0].job_status}</span>
							</p>
							<p>
								<span class="c-ptrborder" style="width: 45%;">邮箱：${userbasic[0].email}</span>
								<span class="c-ptrborder" style="width: 45%;">手机号：${userbasic[0].phone}</span>
							</p>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-prointext2"
						style="display: none;">
						<div class="c-ptimg">
							<a href="#"><img src="../img/touxiang.png" alt="" /></a>
						</div>
						<div class="c-ptright">
							<form id="jibengaiform" action="updateUserbasic.action"
								method="post">
								<input type="hidden" id="jibenid" name="id" />
								<input type="hidden" id="jibenuserid" name="userid" />
								<div class="c-inputline">
									<label class="c-linelabel1">现居地：</label> <input
										class="c-inputtext1" name="ub_address" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">性别：</label> <input type="radio"
										name="sex" value="男" checked />男 <input type="radio"
										name="sex" value="女" />女
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">邮箱：</label> <input
										class="c-inputtext1" name="email" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">手机号：</label> <input
										class="c-inputtext1" name="phone" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">年龄：</label> <input
										class="c-inputtext1" name="age" type="text" />
								</div>  
								<div class="c-inputline">
									<label class="c-linelabel1">身份证号码：</label> <input
										class="c-inputtext1" name="cardid" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">求职状况：</label> <select
										class="c-inputselect1" name="job_status">
										<option value="观望观望">观望观望</option>
										<option value="目前正在求职">目前正在求职</option>
										<option value="我热爱我目前的工作 ">我热爱我目前的工作</option>
									</select>
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-insub" value="保存" />
									<input class="c-inputsub" type="button" id="c-inclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-prointext3"
						style="display: none;">
						<div class="c-ptimg">
							<a href="#"><img src="../img/touxiang.png" alt="" /></a>
						</div>
						<div class="c-ptright">
							<form id="jibenzengform" action="insertUserBasic.action"
								method="post">
								<input type="hidden" id="jibenzuserid" name="userid" />
								<div class="c-inputline">
									<label class="c-linelabel1">现居地：</label> <input
										class="c-inputtext1" name="ub_address" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">性别：</label> <input type="radio"
										name="sex" value="男" checked />男 <input type="radio"
										name="sex" value="女" />女
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">邮箱：</label> <input
										class="c-inputtext1" name="email" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">手机号：</label> <input
										class="c-inputtext1" name="phone" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">年龄：</label> <input
										class="c-inputtext1" name="age" type="text" />
								</div>  
								<div class="c-inputline">
									<label class="c-linelabel1">身份证号码：</label> <input
										class="c-inputtext1" name="cardid" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">求职状况：</label> <select
										class="c-inputselect1" name="job_status">
										<option value="观望观望">观望观望</option>
										<option value="目前正在求职">目前正在求职</option>
										<option value="我热爱我目前的工作 ">我热爱我目前的工作</option>
									</select>
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-inzsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-inzclose" value="取消" />
								</div>
							</form>
						</div>
				</div>
				<div>

					<div class="c-prointext c-proinbor" id="c-yxtext1">
						<div class="c-yxtit">
							求职意向<span style="float: right;"> <a  id="c-yxgai"   href="#" onclick="yxzeng('${list[0].id}')">新增</a>  <a id="c-yxgai" href="#"
								onclick="yxgai('${list[0].id}','${userobjective[0].id}')">修改</a> </span>
						</div>
						<div class="c-yxtxt">
							<span class="c-yxtext">期望薪资：${userobjective[0].uo_salary}</span><span
								class="c-yxtext">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点：${userobjective[0].uo_address}</span>
							<span class="c-yxtext">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：${userobjective[0].uo_position}</span><span
								class="c-yxtext">工作性质：${userobjective[0].worknature}</span>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-yxtext2"
						style="display: none">
						<div class="c-yxtit">
							求职意向<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="yxform" action="updateUserobjective.action"
								method="post">
								<input type="hidden" id="yxid" name="id" />
								<input type="hidden" id="yxuserid" name="userid" />
								<div class="c-inputline">
									<label class="c-linelabel1">期望薪资：</label> <input
										class="c-inputtext1" name="uo_salary" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">地点：</label> <input
										class="c-inputtext1" name="uo_address" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">职位：</label> <input
										class="c-inputtext1" name="uo_position" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">工作性质：</label> <select
										name="worknature" class="c-inputselect1">
										<option value="全职">全职</option>
										<option value="兼职">兼职</option>
										<option value="实习 ">实习</option>
									</select>
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-yxsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-yxclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-yxtext3"
						style="display: none">
						<div class="c-yxtit">
							求职意向<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="yxzform" action="insertUserObjective.action"
								method="post">
								<input type="hidden" id="yxzuserid" name="userid" />
								<div class="c-inputline">
									<label class="c-linelabel1">期望薪资：</label> <input
										class="c-inputtext1" name="uo_salary" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">地点：</label> <input
										class="c-inputtext1" name="uo_address" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">职位：</label> <input
										class="c-inputtext1" name="uo_position" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">工作性质：</label> <select
										name="worknature" class="c-inputselect1">
										<option value="全职">全职</option>
										<option value="兼职">兼职</option>
										<option value="实习 ">实习</option>
									</select>
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-yxzsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-yxzclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
				</div>
				<div>
					<a name="A3"></a>
					<div class="c-prointext c-proinbor" id="c-jytext1">
						<div class="c-yxtit">
							工作经验<span style="float: right;">
							<a id="c-jygai" href="#" onclick="jyzeng('${list[0].id}')">新增</a> <a id="c-jygai" href="#"
								onclick="jygai('${list[0].id}','${userworkexe[0].id }')">修改</a></span>
						</div>
						<div class="c-yxtxt">
							<span class="c-yxtext">时
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：<spring:eval
									expression="userworkexe[0].uw_starttime"></spring:eval> -<spring:eval
									expression="userworkexe[0].uw_endtime"></spring:eval>
							</span><span class="c-yxtext">公司名称：${userworkexe[0].uw_position}</span> <span
								class="c-yxtext">部
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：${userworkexe[0].companyname}</span><span
								class="c-yxtext">职
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：${userworkexe[0].department}</span>
							<span class="c-yxtext" style="width: 100%">工作描述：</span>
							<textarea readonly="true">${userworkexe[0].job_description }</textarea>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-jytext2"
						style="display: none;">
						<div class="c-yxtit">
							工作经验<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="jyform" action="updateUserworkexe.action" method="post">
								<input type="hidden" id="jyid" name="id" />
								<input type="hidden" id="jyuserid" name="userid" />
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1">时间：</label>
               						 <div class="input-group date form_datetime" style="width:70%;"  data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="uw_starttime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1" style="text-align:center">至</label>
               						 <div class="input-group date form_datetime" style="width:70%;"  data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="uw_endtime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="c-inputline">
									<label class="c-linelabel1">公司名称：</label> <input
										class="c-inputtext1" name="uw_position" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">部门：</label> <input
										class="c-inputtext1" name="companyname" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">职位：</label> <input
										class="c-inputtext1" name="department" type="text" />
								</div>
								<div class="c-inputline" style="width: 100%;">
									<label class="c-linelabel1"
										style="text-align: left; padding-left: 30px;">工作描述：</label>
									<textarea placeholder="请详细貌似您的工作职责，成绩等" name="job_description"></textarea>
								</div>
								<div class="c-inputline2" style="margin-top: 170px;">
									<input class="c-inputsub" type="button" id="c-jysub" value="保存" />
									<input class="c-inputsub" type="button" id="c-jyclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-jytext3"
						style="display: none;">
						<div class="c-yxtit">
							工作经验<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="jyzform" action="insertUserWorkexe.action" method="post">
								<input type="hidden" id="jyzuserid" name="userid" />
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1">时间：</label>
               						 <div class="input-group date form_datetime" style="width:70%;"  data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="uw_starttime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1" style="text-align:center">至</label>
               						 <div class="input-group date form_datetime" style="width:70%;"  data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="uw_endtime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="c-inputline">
									<label class="c-linelabel1">公司名称：</label> <input
										class="c-inputtext1" name="uw_position" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">部门：</label> <input
										class="c-inputtext1" name="companyname" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">职位：</label> <input
										class="c-inputtext1" name="department" type="text" />
								</div>
								<div class="c-inputline" style="width: 100%;">
									<label class="c-linelabel1"
										style="text-align: left; padding-left: 30px;">工作描述：</label>
									<textarea placeholder="请详细貌似您的工作职责，成绩等" name="job_description"></textarea>
								</div>
								<div class="c-inputline2" style="margin-top: 170px;">
									<input class="c-inputsub" type="button" id="c-jyzsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-jyzclose" 	value="取消" />
								</div>
							</form>
						</div>
					</div>
				</div>
				<div>
					<a name="A4"></a>
					<div class="c-prointext c-proinbor" id="c-jltext1">
						<div class="c-yxtit">
							教育经历<span style="float: right;">
							<a id="c-jlgai" href="#" onclick="jlzeng('${list[0].id}')">新增</a>
							<a id="c-jlgai" href="#" onclick="jlgai('${list[0].id}','${usereducation[0].id }')">修改</a></span>
						</div>
						<div class="c-yxtxt">
							<span class="c-yxtext">时
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：<spring:eval
									expression="usereducation[0].ue_starttime"></spring:eval> - <spring:eval
									expression="usereducation[0].ue_endtime"></spring:eval>
							</span> <span class="c-yxtext">学
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校：${usereducation[0].school}</span>
							<span class="c-yxtext">学
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：${usereducation[0].record }</span>
							<span class="c-yxtext">专
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：${usereducation[0].professional }</span>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-jltext2"
						style="display: none;">
						<div class="c-yxtit">
							教育经历<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="jlform" action="updateUsereducation.action"
								method="post">
								<input type="hidden" id="jlid" name="id" />
								<input type="hidden" id="jluserid" name="userid" />
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1">时间：</label>
               						 <div class="input-group date form_datetime" style="width:70%;" data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="ue_starttime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1" style="text-align:center">至</label>
               						 <div class="input-group date form_datetime" style="width:70%;" data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="ue_endtime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="c-inputline">
									<label class="c-linelabel1">学校：</label> <input name="school"
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">学历：</label> <input name="record"
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">专业：</label> <input
										name="professional" class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-jlsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-jlclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
						<div class="c-prointext c-proinbor" id="c-jltext3"
						style="display: none;">
						<div class="c-yxtit">
							教育经历<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="jlzform" action="insertUserEducation.action"
								method="post">
								<input type="hidden" id="jlzuserid" name="userid" />
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1">时间：</label>
               						 <div class="input-group date form_datetime" style="width:70%;" data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="ue_starttime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="form-group c-inputline">
              					  <label for="dtp_input1" class="c-linelabel1" style="text-align:center">至</label>
               						 <div class="input-group date form_datetime" style="width:70%;" data-date-format="yyyy-mm-dd" >
                    					<input class="form-control" size="16" type="text" value="" name="ue_endtime" readonly>
                   						 <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon" ><span class="glyphicon glyphicon-th" ></span></span>
              					  	</div>
           						 </div>
								<div class="c-inputline">
									<label class="c-linelabel1">学校：</label> <input name="school"
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">学历：</label> <input name="record"
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">专业：</label> <input
										name="professional" class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-jlzsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-jlzclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$('.form_datetime').datetimepicker({
		//language:  'fr',
		weekStart : 1,  //一周开始的时间
		todayBtn : 1, //在底部显示一个选择当前日期的按钮
		autoclose : 1, //选择一个日期后关闭时间选择器
		todayHighlight : 1,
		startView : 3,
		forceParse : 0,
		showMeridian : 1
	});
	$(".c-resumeleft li").click(function() {
		//为当前DOM添加class 并删除兄弟DOM的calss
		$(this).addClass("c-on").siblings().removeClass('c-on');
	});
	//修改基本信息
	function jbgai(userid,id) {
		$("#jibenuserid").val(userid);
		$("#jibenid").val(id);
		$("#c-prointext2").addClass("c-gaicolor").removeClass("c-proinbor");
		$("#c-prointext2").css("display", "block");
		$("#c-prointext1").css("display", "none");
	}
	//新增基本信息
	function jbzeng(userid) {
		$("#jibenzuserid").val(userid);
		$("#c-prointext3").addClass("c-gaicolor").removeClass("c-proinbor");
		$("#c-prointext3").css("display", "block");
		$("#c-prointext1").css("display", "none");
	}
	
	//提交修改基本信息
	$("#c-insub").click(function() {
		if (confirm("是否保存？")) {
			$("#jibengaiform").submit();
		}
	});
	
	//提交新增基本信息
	$("#c-inzsub").click(function(){
		if(confirm("是否保存？")){
			$("#jibenzengform").submit();
		}
	});
	//取消修改基本信息
	$("#c-inclose").click(
			function() {
				//清楚表单缓存
				$(':input', '#jibengaiform').not(
						':button,:submit, :reset, :hidden').val('');
				$("#c-prointext1").css("display", "block");
				$("#c-prointext2").css("display", "none");
			});
	//取消新增基本信息
	$("#c-inzclose").click(
			function() {
				//清楚表单缓存
				$(':input', '#jibenzengform').not(
						':button,:submit, :reset, :hidden').val('');
				$("#c-prointext1").css("display", "block");
				$("#c-prointext3").css("display", "none");
	});
	//修改求职意向
	function yxgai(userid,id) {
		$("#yxuserid").val(userid);
		$("#yxid").val(id);
		$("#c-yxtext2").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-yxtext1").css("display", "none");
		$("#c-yxtext2").css("display", "block");
	}
	//新增求职意向
	function yxzeng(userid) {
		$("#yxzuserid").val(userid);
		$("#c-yxtext3").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-yxtext1").css("display", "none");
		$("#c-yxtext3").css("display", "block");
	}
	//提交修改求职意向
	$("#c-yxsub").click(function() {
		if (confirm("是否保存？")) {
			$("#yxform").submit();
		}
	});
	//提交新增求职意向
	$("#c-yxzsub").click(function() {
		if (confirm("是否保存？")) {
			$("#yxzform").submit();
		}
	});
	//取消修改求职意向
	$("#c-yxclose").click(function() {
		$(':input', '#yxform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-yxtext2").css("display", "none");
		$("#c-yxtext1").css("display", "block");
	});
	//取消新增求职意向
	$("#c-yxzclose").click(function() {
		$(':input', '#yxzform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-yxtext3").css("display", "none");
		$("#c-yxtext1").css("display", "block");
	});
	
	//修改工作经验
	function jygai(userid,id) {
		$("#jyuserid").val(userid);
		$("#jyid").val(id);
		$("#c-jytext2").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-jytext1").css("display", "none");
		$("#c-jytext2").css("display", "block");
	}
	//新增工作经验
	function jyzeng(userid) {
		$("#jyzuserid").val(userid);
		$("#c-jytext3").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-jytext1").css("display", "none");
		$("#c-jytext3").css("display", "block");
	}
	//提交修改工作经验
	$("#c-jysub").click(function() {
		if (confirm("是否保存？")) {
			$("#jyform").submit();
		}
	});
	//提交新增工作经验
	$("#c-jyzsub").click(function() {
		if (confirm("是否保存？")) {
			$("#jyzform").submit();
		}
	});
	//取消修改工作经验
	$("#c-jyclose").click(function() {
		$(':input', '#jyform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-jytext2").css("display", "none");
		$("#c-jytext1").css("display", "block");
	});
	//取消新增工作经验
	$("#c-jyzclose").click(function() {
		$(':input', '#jyzform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-jytext3").css("display", "none");
		$("#c-jytext1").css("display", "block");
	});
	
	//修改教育经历
	function jlgai(userid,id) {
		$("#jluserid").val(userid);
		$("#jlid").val(id);
		$("#c-jltext2").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-jltext1").css("display", "none");
		$("#c-jltext2").css("display", "block");
	}
	//新增教育经历
	function jlzeng(userid) {
		$("#jlzuserid").val(userid);
		$("#c-jltext3").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-jltext1").css("display", "none");
		$("#c-jltext3").css("display", "block");
	}
	//提交修改教育经历
	$("#c-jlsub").click(function() {
		if (confirm("是否保存？")) {
			$("#jlform").submit();
		}
	});
	//提交新增教育经历
	$("#c-jlzsub").click(function() {
		if (confirm("是否保存？")) {
			$("#jlzform").submit();
		}
	});
	//取消修改教育经历
	$("#c-jlclose").click(function() {
		$(':input', '#jlzform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-jltext2").css("display", "none");
		$("#c-jltext1").css("display", "block");
	});
	//取消修改教育经历
	$("#c-jlzclose").click(function() {
		$(':input', '#jlzform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-jltext3").css("display", "none");
		$("#c-jltext1").css("display", "block");
	});
	
</script>
</html>