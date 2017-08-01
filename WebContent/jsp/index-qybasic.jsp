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
					<div class="head-right">
						<a class="head-ss" href="index.jsp">首页</a>
						<a class="head-ss" href="#">帮助中心</a>
					</div>
				</div>
			</div>
		</div>
		<div id="content" >
			<div class="wd" style="margin-top: 60px;">
				<div class="c-resumeleft">
					<div class="c-resumesume">
						<ul class="nav nav-pills nav-stacked">
							<li class="active">
								<a href="selectCompany.action" >基本信息</a>
							</li>
							<li>
								<a href="slectRecruitinfo.action">发布招聘</a>
							</li>
							<li>
								<a href="javascript:void(0)">查看投递</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="c-resumeright">
				<span style="width:100%;height:24px;line-height: 24px;float:left;color:red;font-size:14px;">${message}</span>
					<div class="c-qybasic" id="c-qybasic1">
						<div class="c-qytext1">
							<label class="c-qylabel1">公司名称：</label>
							<span>${list[0].companyName}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">公司简称：</label>
							<span>${list[0].membership}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">地 &nbsp;&nbsp;&nbsp;&nbsp; 址：</label>
							<span>${list[0].companyLocation}</span>
						</div>
						<div class="c-qytext1 c-qytext2">
							<label class="c-qylabel1" style="width:38%;">公司性质：</label>
							<span>${list[0].companyNature}</span>
						</div>
						<div class="c-qytext1 c-qytext2">
							<label class="c-qylabel1" style="width:38%;">规 &nbsp;&nbsp;&nbsp;&nbsp; 模：</label>
							<span>${list[0].companySize}</span>
						</div>
						<div class="c-qytext1" style="border:none">
							<label class="c-qylabel1" style="width:100%;text-align: right;"><a class="c-qygai" href="javascript:void(0)" onclick="cqygai('${list[0].companyName}','${list[0].membership}')">完善信息</a></label>
						</div>
					</div>
					<div class="c-qybasic" id="c-qybasic2" style="display: none;">
						<form id="qybform" action="updateCompany.action" method="post">
						<div class="c-qytext1">
							<label class="c-qylabel1">公司名称：</label>
							<input class="c-qyinput1" id="cg-companyName" type="text" name="companyName" />
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">公司简称：</label>
							<input class="c-qyinput1" id="cg-membership" type="text" name="membership" />
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">地 &nbsp;&nbsp;&nbsp;&nbsp; 址：</label>
							<input class="c-qyinput1" type="text" name="companyLocation" />
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">公司性质：</label>
							<select class="c-qyinput1" name="companyNature" >
								<option value="民企">民企</option>
								<option value="国企">国企</option>
								<option value="外资">外资</option>
							</select>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">规 &nbsp;&nbsp;&nbsp;&nbsp; 模：</label>
							<select class="c-qyinput1" name="companySize" >
								<option value="低于100人">低于100人</option>
								<option value="100-500人">100-500人</option>
								<option value="500-1000人">500-1000人</option>
							</select>
						</div>
						<div class="c-qytext1" style="border:none">
							<label class="c-qylabel1" style="width:50%;text-align: center;">
								<input class="c-qyinput2" type="button" id="c-qysub" value="确认"/>
							</label>
							<label class="c-qylabel1" style="width:50%;text-align: center;">
								<input class="c-qyinput2" type="button" id="c-qyclose" value="取消"/>
							</label>
						</div>
						</form>
					</div>
				</div>
			</div>	
		</div>
	</body>
	<script type="text/javascript">
		function cqygai(name,ip){
			alert(name+" "+ ip);
			$("#cg-companyName").val(name);
			$("#cg-membership").val(ip);
			$("#c-qybasic1").css("display","none");
			$("#c-qybasic2").css("display","block");
		}
		$("#c-qyclose").click(function(){
			$(':input','#qybform').not(':button,:submit, :reset, :hidden').val('');
			$("#c-qybasic2").css("display","none");
			$("#c-qybasic1").css("display","block");
		});
		
		$("#c-qysub").click(function(){
			if(confirm("是否保存？")){
				$("#qybform").submit();
			}
		});
	</script>
</html>