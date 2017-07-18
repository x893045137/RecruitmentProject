<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<!-- UTF-8编码 -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- 让bootstrap可以在IE浏览器中运行渲染模式 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<!-- 初始化移动浏览显示 width=device-width让页面的宽度等于视图的宽度 initial-scale 缩放比率 1:1-->
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link rel="stylesheet" href="../WebContent/WEB-INF/css/bootstrap.min.css" />
		<link rel="stylesheet" href="../WebContent/WEB-INF/css/default.css" />
		<link rel="stylesheet" href="../WebContent/WEB-INF/css/css.css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<title>登录</title>
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
					<div class="headlogin">
						<span class="head-shu">|</span><span style="color:#333;">欢迎登录</span>
					</div>
					<div class="head-right">
						<a class="head-ss" href="index.jsp">首页</a>
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
								<div class="c-wbimg"><img src="img/lf-lo1.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">便捷的简历填写</p>
									<p style="color:#999">一份简历开启未来</p>
								</div>
							</div>
							<div class="c-wenben">
								<div class="c-wbimg"><img src="img/lf-lo2.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">海量的职位优选</p>
									<p style="color:#999">360行任你挑选</p>
								</div>
							</div>
							<div class="c-wenben">
								<div class="c-wbimg"><img src="img/lf-lo3.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">快速的职位投递</p>
									<p style="color:#999">分秒必争直达HR</p>
								</div>
							</div>
							<div class="c-wenben">
								<div class="c-wbimg"><img src="img/lf-lo4.png" /></div>
								<div class="c-wbtxt">
									<p style="font-size: 14px;">高效的投递反馈</p>
									<p style="color:#999">谁看我简历早知道</p>
								</div>
							</div>
						</div>
					</div>
					<div class="c-loginright">
						<div class="c-lrtop"></div>
						<div class="c-lrlogin">
							<div class="c-lrtopt">
								登录
							</div>
							<form id="loginform" action="" method="post">
								<div class="c-lrform">
									<div class="c-lrinline">
										<label class="c-lrlabel">账号：<span></span></label>
										<input class="c-lrinputpsd" id="loginname" type="text" name="name" placeholder="请输入账户" />
									</div>
									<div class="c-lrinline">
										<label class="c-lrlabel">密码：<span></span></label>
										<input class="c-lrinputpsd" id="loginpsd" type="password" name="password" placeholder="请输入密码" />
									</div>
									<div class="c-lrinline">
										<span style="line-height: 20px;"><input type="checkbox" style="vertical-align:middle; margin-top:-1px; margin-bottom:1px;"/> 自动登录</span>
										<span style="float: right;"><a href="#" class="c-lrccolor1">忘记密码</a>？</span>
									</div>
									<div class="c-lrinline">
										<input class="c-lrsubmit" id="login-sub" type="button" value="登 录" />
									</div>
									<div class="c-lrinline">
										<span style="width:100%;float:left;font-size:16px;text-align: center;">还没有账户去 <a href="index-register.jsp" style="color:#ff6000">注册</a>？</span>
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
		$("#login-sub").click(function() {
			if($("#loginname").val().length == 0 && $("#loginpsd").val().length == 0) {
				alert("用户名或密码不能为空")
			} else {
				$("#loginform").submit();
			}
		});
	</script>

</html>