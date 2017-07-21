<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="../css/index/default.css" />
<link rel="stylesheet" href="../css/index/css.css" />
<!-- Jquery.js -->
<script type="text/javascript" src="../js/jquery.js"></script>
<!-- Bootstrap.js -->
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
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
					<span class="head-shu">|</span><span style="color: #333;">欢迎登录</span>
				</div>
				<div class="head-right">
					<a class="head-ss" href="index.html">首页</a> <a class="head-ss"
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
				<div>
					<a name="A1"></a>
					<div class="c-prointext c-proinbor" id="c-prointext1">
						<div class="c-ptimg">
							<a href="#"><img src="../img/touxiang.png" alt="" /></a>
						</div>
						<div class="c-ptright">
							<p>
								<span style="font-size: 30px;">xxx</span><span
									style="float: right;"><a href="#" class="c-gai">修改</a></span>
							</p>
							<p>
								<span class="c-ptrborder">现居地：</span><span class="c-ptrborder">性别</span><span
									class="c-ptrborder">年龄</span> <span class="c-ptrborder">暂无经验</span><span
									class="c-ptrborder">目前正在寻找工作</span>
							</p>
							<p>
								<span class="c-ptrborder" style="width: 45%;">邮箱：</span> <span
									class="c-ptrborder" style="width: 45%;">手机号：</span>
							</p>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-prointext2"
						style="display: none;">
						<div class="c-ptimg">
							<a href="#"><img src="../img/touxiang.png" alt="" /></a>
						</div>
						<div class="c-ptright">
							<form id="jibengaiform" action="" method="post">
								<div class="c-inputline">
									<label class="c-linelabel1">用户名：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">性别：</label> <input type="radio"
										name="sex" value="男" checked />男 <input type="radio"
										name="sex" value="女" />女
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">现居地：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">邮箱：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">手机号：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">出生日期：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">身份证号码：</label> <input
										class="c-inputtext1" type="text" />
								</div>

								<div class="c-inputline">
									<label class="c-linelabel1">求职状况：</label> <select
										class="c-inputselect1">
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
				</div>
				<div>

					<div class="c-prointext c-proinbor" id="c-yxtext1">
						<div class="c-yxtit">
							求职意向<span style="float: right;"><a id="c-yxgai" href="#">修改</a></span>
						</div>
						<div class="c-yxtxt">
							<span class="c-yxtext">期望薪资：</span><span class="c-yxtext">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点：</span>
							<span class="c-yxtext">职
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</span><span class="c-yxtext">工作性质：</span>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-yxtext2"
						style="display: none">
						<div class="c-yxtit">
							求职意向<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="yxform" action="" method="post">
								<div class="c-inputline">
									<label class="c-linelabel1">期望薪资：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">地点：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">工作性质：</label> <select
										class="c-inputselect1">
										<option value="全职">全职</option>
										<option value="兼职">兼职</option>
										<option value="实习 ">实习</option>
									</select>
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">身份证号码：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-yxsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-yxclose"
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
							工作经验<span style="float: right;"><a id="c-jygai" href="#">修改</a></span>
						</div>
						<div class="c-yxtxt">
							<span class="c-yxtext">时
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：</span><span class="c-yxtext">公司名称：</span>
							<span class="c-yxtext">部
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</span><span class="c-yxtext">职
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</span> <span class="c-yxtext"
								style="width: 100%">工作描述：</span>
							<textarea></textarea>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-jytext2"
						style="display: none;">
						<div class="c-yxtit">
							工作经验<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="jyform" action="" method="post">
								<div class="c-inputline">
									<label class="c-linelabel1">时间：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1" style="text-align: center;">至</label>
									<input class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">公司名称：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">部门：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">职位：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline" style="width: 100%;">
									<label class="c-linelabel1"
										style="text-align: left; padding-left: 30px;">工作描述：</label>
									<textarea placeholder="请详细貌似您的工作职责，成绩等"></textarea>
								</div>
								<div class="c-inputline2" style="margin-top: 170px;">
									<input class="c-inputsub" type="button" id="c-jysub" value="保存" />
									<input class="c-inputsub" type="button" id="c-jyclose"
										value="取消" />
								</div>
							</form>
						</div>
					</div>
				</div>
				<div>
					<a name="A4"></a>
					<div class="c-prointext c-proinbor" id="c-jltext1">
						<div class="c-yxtit">
							教育经历<span style="float: right;"><a id="c-jlgai" href="#">修改</a></span>
						</div>
						<div class="c-yxtxt">
							<span class="c-yxtext">时
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：</span> <span class="c-yxtext">学
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校：</span> <span class="c-yxtext">学
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</span> <span class="c-yxtext">专
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</span>
						</div>
					</div>
					<div class="c-prointext c-proinbor" id="c-jltext2"
						style="display: none;">
						<div class="c-yxtit">
							教育经历<span style="float: right;"></span>
						</div>
						<div class="c-yxtxt">
							<form id="jlform" action="" method="post">
								<div class="c-inputline">
									<label class="c-linelabel1">时间：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1" style="text-align: center;">至</label>
									<input class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">学校：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">学历：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline">
									<label class="c-linelabel1">专业：</label> <input
										class="c-inputtext1" type="text" />
								</div>
								<div class="c-inputline2">
									<input class="c-inputsub" type="button" id="c-jlsub" value="保存" />
									<input class="c-inputsub" type="button" id="c-jlclose"
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
	$(".c-resumeleft li").click(function() {
		//为当前DOM添加class 并删除兄弟DOM的calss
		$(this).addClass("c-on").siblings().removeClass('c-on');
	});
	//修改基本信息
	$(".c-gai").click(function() {
		$("#c-prointext2").addClass("c-gaicolor").removeClass("c-proinbor");
		$("#c-prointext2").css("display", "block");
		$("#c-prointext1").css("display", "none");
	});
	//提交修改基本信息
	$("#c-insub").click(function() {
		if (confirm("是否保存？")) {
			$("#jibengaiform").submit();
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
	//修改求职意向
	$("#c-yxgai").click(function() {
		$("#c-yxtext2").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-yxtext1").css("display", "none");
		$("#c-yxtext2").css("display", "block");
	});
	//提交修改求职意向
	$("#c-yxsub").click(function() {
		if (confirm("是否保存？")) {
			$("#yxform").submit();
		}
	});
	//取消修改求职意向
	$("#c-yxclose").click(function() {
		$(':input', '#yxform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-yxtext2").css("display", "none");
		$("#c-yxtext1").css("display", "block");
	});
	//修改工作经验
	$("#c-jygai").click(function() {
		$("#c-jytext2").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-jytext1").css("display", "none");
		$("#c-jytext2").css("display", "block");
	});
	//提交修改工作经验
	$("#c-jysub").click(function() {
		if (confirm("是否保存？")) {
			$("#jyform").submit();
		}
	});
	//取消修改工作经验
	$("#c-jyclose").click(function() {
		$(':input', '#jyform').not(':button,:submit, :reset, :hidden').val('');
		$("#c-jytext2").css("display", "none");
		$("#c-jytext1").css("display", "block");
	});
	//修改教育经历
	$("#c-jlgai").click(function() {
		$("#c-jltext2").addClass("c-gaicolor").remove("c-proinbor");
		$("#c-jltext1").css("display", "none");
		$("#c-jltext2").css("display", "block");
	});
	//提交修改教育经历
	$("#c-jlsub").click(function() {
		if (confirm("是否保存？")) {
			$("#jlform").submit();
		}
	});
	//取消修改教育经历
	$("#c-jlclose").click(function() {
		$("#c-jltext2").css("display", "none");
		$("#c-jltext1").css("display", "block");
	});
</script>
</html>