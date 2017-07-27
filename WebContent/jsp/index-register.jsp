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
		<title>注册</title>
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
						<span class="head-shu">|</span><span style="color:#333;">欢迎注册</span>
					</div>
					<div class="head-right">
						<a class="head-ss" href="./index.jsp">首页</a>
						<a class="head-ss" href="#">帮助中心</a>
					</div>
				</div>
			</div>
		</div>
		<div id="content">
			<div class="wd">
				<div class="content-login">
					<div class="c-loginleft">
						<div class="c-ltop"></div>
						<div class="c-lltext">
							<div class="c-wenben">
								<div class="c-wbimg"><img src="../img/lf-lo1.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">便捷的简历填写</p>
									<p style="color:#999">一份简历开启未来</p>
								</div>
							</div>
							<div class="c-wenben">
								<div class="c-wbimg"><img src="../img/lf-lo2.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">海量的职位优选</p>
									<p style="color:#999">360行任你挑选</p>
								</div>
							</div>
							<div class="c-wenben">
								<div class="c-wbimg"><img src="../img/lf-lo3.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">快速的职位投递</p>
									<p style="color:#999">分秒必争直达HR</p>
								</div>
							</div>
							<div class="c-wenben">
								<div class="c-wbimg"><img src="../img/lf-lo4.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">高效的投递反馈</p>
									<p style="color:#999">谁看我简历早知道</p>
								</div>
							</div>
							
						</div>
					</div>
					<div class="c-loginright" id="userregister">
						<div class="c-lrtop"></div>
						<div class="c-lrlogin">
							<div class="c-lrtopt">
								用户注册 <span style="float: right; font-size: 14px;margin-top: 8px;"><a id="enter-register" href="#">企业注册</a></span>
							</div>
							<form id="userregisterform" action="register.action" method="post">
								<div class="c-lrform">
									<div class="c-lrinline">
										<label class="c-lrlabel">用户名：<span></span></label>
										<input class="c-lrinputpsd" id="user-registername" type="text" name="username" placeholder="请输入用户名" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">密码：<span></span></label>
										<input class="c-lrinputpsd" id="user-registerpsd" type="password" name="password" placeholder="请输入密码" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">确认密码：<span></span></label>
										<input class="c-lrinputpsd" id="user-registerrepsd" type="password" name="repassword" placeholder="请再次输入密码" />
									</div>
									<div class="c-lrinline">
										<input class="c-lrsubmit" id="user-registersub" type="button" value="注 册" />
									</div>
									<div class="c-lrinline">
										<span style="width:100%;float:left;font-size:16px;text-align: center;">已经有账户啦去 <a href="./index-login.jsp" style="color:#ff6000">登录</a>？</span>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="c-loginright" id="enterregister" style="display: none;">
						<div class="c-lrtop"></div>
						<div class="c-lrlogin">
							<div class="c-lrtopt">
								企业注册 <span style="float: right; font-size: 14px;margin-top: 8px;"><a id="user-register" href="#">用户注册</a></span>
							</div>
							<form id="cop-registerform" action="enterprise.action" method="post">
								<div class="c-lrform">
									<div class="c-lrinline">
										<label class="c-lrlabel">公司地址：<span></span></label>
										<select class="c-lrselect" id="" name = "companyLocation">
											<option value="上海">上海</option>
											<option value="北京">北京</option>
											<option value="广州">江苏</option>											
										</select>
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">公司名称：<span></span></label>
										<input class="c-lrinputpsd" type="text" id="enter-companyname" name="companyname" placeholder="请输入公司名称" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">会员名：<span></span></label>
										<input class="c-lrinputpsd"  type="text" id="enter-hyname" name="Membership" placeholder="请输入会员名,建议使用公司简称" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">用户名：<span></span></label>
										<input class="c-lrinputpsd"  type="text" id="enter-name" name="enterprisename" placeholder="请输入用户名" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">密码：<span></span></label>
										<input class="c-lrinputpsd"  type="password" id="enter-psd" name="enterprisepwd" placeholder="请输入密码" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">确认密码：<span></span></label>
										<input class="c-lrinputpsd"  type="password" id="enter-repsd" name="renterprisepwd" placeholder="请再次输入密码" />
									</div>
									<div class="c-lrinline">
										<input class="c-lrsubmit" id="cop-registersub" type="button" value="注 册" />
									</div>
									<div class="c-lrinline">
										<span style="width:100%;float:left;font-size:16px;text-align: center;">已经有账户啦去 <a href="./index-login.jsp" style="color:#ff6000">登录</a>？</span>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<p>未经本人同意，不得转载本网站之所有招聘信息及作品 | 最强招聘工作室版权所有2017</p>
		</div>

	</body>
	<script type="text/javascript">
		$("#user-registersub").click(function() {
			if($("#user-registername").val().length == 0 || $("#user-registerpsd").val().length == 0 || $("#user-registerrepsd").val().length == 0) {
				alert("用户名或密码不能为空")
			} else if($("#user-registerpsd").val() != $("#user-registerrepsd").val()) {
				alert("两次密码不同")
			} else {
				$("#userregisterform").submit();
			}
		});
		
		$("#cop-registersub").click(function() {
			if($("#enter-companyname").val().length == 0 || $("#enter-hyname").val().length == 0 || $("#enter-name").val().length == 0 
			|| $("#enter-psd").val().length == 0 || $("#enter-repsd").val().length == 0) {
				alert("用户名或密码不能为空")
			} else if($("#enter-psd").val() != $("#enter-repsd").val()) {
				alert("两次密码不同")
			} else {
				$("#cop-registerform").submit();
			}
		});
		//切换成普通用户登录
		$("#user-register").click(function(){
			$("#userregister").css("display","block");
			$("#enterregister").css("display","none");
		});
		
		//切换成企业登录
		$("#enter-register").click(function(){
			$("#userregister").css("display","none");
			$("#enterregister").css("display","block");
		});
		
	</script>

</html>	