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
						<a class="head-ss" href="./index.jsp">首页</a>
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
							<li>
								<a href="selectCompany.action">基本信息</a>
							</li>
							<li class="active">
								<a href="slectRecruitinfo.action">发布招聘</a>
							</li>
							<li>
								<a href="javascript:void(0)">基本信息</a>
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
							<label class="c-qylabel1" style="width:40%;">公司性质：</label>
							<span>${list[0].companyNature}</span>
						</div>
						<div class="c-qytext1 c-qytext2">
							<label class="c-qylabel1" style="width:38%;">规 &nbsp;&nbsp;&nbsp;&nbsp; 模：</label>
							<span>${list[0].companySize}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">招聘需求：</label>
							<span class="c-qyspan1">${list[0].job}</span><span class="c-qyspan1">${list[0].jobtype }</span><span class="c-qyspan1">${list[0].salary}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1"></label>
							<span class="c-qyspan1">${list[0].worktype}</span><span class="c-qyspan1">&nbsp;</span><span class="c-qyspan1">${list[0].hiring }人</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1"></label>
							<span style="width:80%;float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${list[0].descriptions}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">招聘条件：</label>
							<span class="c-qyspan1">${list[0].recordschool }</span><span class="c-qyspan1">&nbsp;</span><span class="c-qyspan1">${list[0].workExperience}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1"></label>
							<span style="width:80%;float: left;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${list[0].requirement}</span>
						</div>
						<div class="c-qytext1">
							<label class="c-qylabel1">福利待遇：</label>
							<span class="c-qyspan1">${list[0].welfare}</span>
						</div>
						<div class="c-qytext1" style="border:none">
							<label class="c-qylabel1" style="width:50%;text-align: center;">
								<input class="c-qyinput2" type="button" onclick="cqypsub('${list[0].companyName}','${list[0].membership}')" value="发布招聘" />
							</label>
							<label class="c-qylabel1" style="width:50%;text-align: center;">
								<input class="c-qyinput2" type="button" onclick="cqypclose('${list[0].companyName}','${list[0].membership}' ,'${list[0].recruitID}')" value="修改信息"/>
							</label>
						</div>
					</div>
					
						<div class="c-qybasic" id="c-qypost2" style="display: none;">
						<form id="qyzbform" action="" method="post">
							<div class="c-qytext1">
								<label class="c-qylabel1">公司名称：</label>
								<input class="c-qyinput1" type="text" name="companyName" id="cp-companyName"  readonly="readonly"/>
							</div>
							<div class="c-qytext1">
								<label class="c-qylabel1">公司简称：</label>
								<input class="c-qyinput1" type="text" name="membership" id="cp-membership"  readonly="readonly"/>
							</div>
							<div class="c-qytext1">
								<label class="c-qylabel1">地 &nbsp;&nbsp;&nbsp;&nbsp; 址：</label>
								<input class="c-qyinput1" type="text" name="companyLocation" />
							</div>
							<div class="c-qytext1 c-qytext2">
								<label class="c-qylabel1" style="width:38%;">公司性质：</label>
								<select class="c-qyinput1 c-qyinput3" name="companyNature">
									<option value="民企 ">民企</option>
									<option value="国企 ">国企</option>
									<option value="外资 ">外资</option>
								</select>
							</div>
							<div class="c-qytext1 c-qytext2 ">

							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">职位：</label>
								<select class="c-qyinput1 c-qyinput3 " name="job">
									<option value="技术 ">技术</option>
									<option value="销售 ">销售</option>
								</select>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">岗位：</label>
								<input class="c-qyinput1 c-qyinput3 " type="text"  name="jobtype"/>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">工作性质：</label>
								<select class="c-qyinput1 c-qyinput3 " name="worktype">
									<option value="全职 ">全职</option>
									<option value="兼职 ">兼职</option>
									<option value="实习 ">实习</option>
								</select>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">薪资：</label>
								<input class="c-qyinput1 c-qyinput3 " type="number"  name="salary"/>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">人数：</label>
								<input class="c-qyinput1 c-qyinput3 " type="number" name="hiring" />
							</div>
							<div class="c-qytext1 c-qytext2 ">
							</div>
							<div class="c-qytext1 " style="height:150px; ">
								<label class="c-qylabel1 ">岗位描述：</label>
								<textarea class="c-qyinput1 " style="width:70%;height:120px;min-height: 120px;min-width: 70%;margin-left: -10px; " name="descriptions" placeholder="请输入岗位描述 " ></textarea>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">学历：</label>
								<input class="c-qyinput1 c-qyinput3 " name="recordschool" type="text " />
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">工作时间：</label>
								<select class="c-qyinput1 c-qyinput3 " name="workExperience">
									<option value="1-3年 ">1-3年</option>
									<option value="3-5年 ">3-5年</option>
									<option value="5-10年 ">5-10年</option>
									<option value="10年以上 ">10年以上</option>
								</select>
							</div>
							<div class="c-qytext1 " style="height:150px; ">
								<label class="c-qylabel1 ">职位需求：</label>
								<textarea class="c-qyinput1 " style="width:70%;height:120px;min-height: 120px;min-width: 70%;margin-left: -10px; " name="requirement" placeholder="请输入职位需求 "></textarea>
							</div>
							<div class="c-qytext1 " style="height:150px; ">
								<label class="c-qylabel1 ">公司福利：</label>
								<textarea class="c-qyinput1 " style="width:70%;height:120px;min-height: 120px;min-width: 70%;margin-left: -10px; " name="welfare" placeholder="请输入公司福利 "></textarea>
							</div>
							<div class="c-qytext1 " style="border:none ">
								<label class="c-qylabel1" style="width:50%;text-align: center;">
									<input class="c-qyinput2" type="button" id="c-qyzpsub" value="确认"/>
								</label>
								<label class="c-qylabel1" style="width:50%;text-align: center;">
									<input class="c-qyinput2" type="button" id="c-qyzpclose" value="取消"/>
								</label>
							</div>
						</form>
					</div>

					<div class="c-qybasic " id="c-qypost3" style="display: none; ">
						<form id="qygbform" action="updateRecruitinfo.action" method="post">
							<input type="hidden" id="cg-recruitID" name="recruitID"/>
							<div class="c-qytext1 ">
								<label class="c-qylabel1 ">公司名称：</label>
								<input class="c-qyinput1 " type="text" id="cg-companyName" name="companyName" readonly="readonly"/>
							</div>
							<div class="c-qytext1 ">
								<label class="c-qylabel1 ">公司简称：</label>
								<input class="c-qyinput1 " type="text" id="cg-membership" name="membership" readonly="readonly"/>
							</div>
							<div class="c-qytext1 ">
								<label class="c-qylabel1 ">地 &nbsp;&nbsp;&nbsp;&nbsp; 址：</label>
								<input class="c-qyinput1 " type="text" name="companyLocation" />
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">公司性质：</label>
								<select class="c-qyinput1 c-qyinput3" name="companyNature">
									<option value="民企">民企</option>
									<option value="国企">国企</option>
									<option value="外资">外资</option>
								</select>
							</div>
							<div class="c-qytext1 c-qytext2 ">
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">职位：</label>
								<select class="c-qyinput1 c-qyinput3 " name="job">
									<option value="技术">技术</option>
									<option value="销售">销售</option>
								</select>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">岗位：</label>
								<input class="c-qyinput1 c-qyinput3 " type="text " name="jobtype"/>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">工资性质：</label>
								<select class="c-qyinput1 c-qyinput3 " name="worktype">
									<option value="全职">全职</option>
									<option value="兼职">兼职</option>
									<option value="实习">实习</option>
								</select>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">薪资：</label>
								<input class="c-qyinput1 c-qyinput3 " type="number" name="salary"/>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">人数：</label>
								<input class="c-qyinput1 c-qyinput3 " type="number" name="hiring"/>
							</div>
							<div class="c-qytext1 c-qytext2 ">
							</div>
							<div class="c-qytext1 " style="height:150px; ">
								<label class="c-qylabel1 ">岗位描述：</label>
								<textarea class="c-qyinput1 " style="width:70%;height:120px;min-height: 120px;min-width: 70%;margin-left: -10px; " placeholder="请输入岗位描述 " name="descriptions"></textarea>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">学历：</label>
								<input class="c-qyinput1 c-qyinput3 " type="text" name="recordschool"/>
							</div>
							<div class="c-qytext1 c-qytext2 ">
								<label class="c-qylabel1 " style="width:38%; ">工作时间：</label>
								<select class="c-qyinput1 c-qyinput3 " name="workExperience">
									<option value="1-3年 ">1-3年</option>
									<option value="3-5年 ">3-5年</option>
									<option value="5-10年 ">5-10年</option>
									<option value="10年以上 ">10年以上</option>
								</select>
							</div>
							<div class="c-qytext1" style="height:150px; ">
								<label class="c-qylabel1 ">职位需求：</label>
								<textarea class="c-qyinput1 " style="width:70%;height:120px;min-height: 120px;min-width: 70%;margin-left: -10px; " placeholder="请输入职位需求" name="requirement"></textarea>
							</div>
							<div class="c-qytext1" style="height:150px; ">
								<label class="c-qylabel1 ">公司福利：</label>
								<textarea class="c-qyinput1 " style="width:70%;height:120px;min-height: 120px;min-width: 70%;margin-left: -10px; " placeholder="请输入公司福利 " name="welfare"></textarea>
							</div>
							<div class="c-qytext1 " style="border:none ">
								<label class="c-qylabel1" style="width:50%;text-align: center;">
									<input class="c-qyinput2" type="button" id="c-qygpsub" value="确认"/>
								</label>
								<label class="c-qylabel1" style="width:50%;text-align: center;">
									<input class="c-qyinput2" type="button" id="c-qygpclose" value="取消"/>
								</label>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		function cqypsub(name,id){
			$("#cp-companyName").val(name);
			$("#cp-membership").val(id);
			$("#c-qypost2").css("display", "block");
			$("#c-qybasic1").css("display", "none");
		}
		function cqypclose(name,ip,id){
			$("#cg-companyName").val(name);
			$("#cg-membership").val(ip);
			$("#cg-recruitID").val(id);
			$("#c-qypost3").css("display", "block");
			$("#c-qybasic1").css("display", "none");
		}
		$("#c-qygpclose").click(function(){
			$(':input','#qygbform').not(':button,:submit, :reset, :hidden').val('');
			$("#c-qybasic1").css("display", "block");
			$("#c-qypost3").css("display", "none");
		});
		$("#c-qyzpclose").click(function(){
			$(':input','#qyzbform').not(':button,:submit, :reset, :hidden').val('');
			$("#c-qybasic1").css("display", "block");
			$("#c-qypost2").css("display", "none");
		});
		$("#c-qyzpsub").click(function(){
			if(confirm("是否确认？")){
				$("#qyzbform").submit();
			}
		});
		$("#c-qygpsub").click(function(){
			if(confirm("是否确认？")){
				$("#qygbform").submit();
			}
		});
	</script>

</html>