<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>招聘网站</title>
<meta name="mobile-agent"
	content="format=xhtml;http://m.51job.com/jobs/shanghai-pdxq/70492339.html">
<meta name="mobile-agent"
	content="format=html5;http://m.51job.com/jobs/shanghai-pdxq/70492339.html">
<meta name="mobile-agent"
	content="format=wml;http://m.51job.com/jobs/shanghai-pdxq/70492339.html">
<meta name="robots" content="all">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta http-equiv="Pragma" content="no-cache">
<meta name="applicable-device" content="pc">
<meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
<link href="../css/company/base.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/company/style.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/company/search.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/company/my.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/jobs/reset.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/jobs/tForm.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/jobs/tSearch-layout.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/company/graycss0.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/2017/public/base.css?20170605" rel="stylesheet"
	type="text/css" />
<link href="../css/2017/public/form.css?20170605" rel="stylesheet"
	type="text/css" />
<link href="../css/2017/public/panel-pop.css?20170605" rel="stylesheet"
	type="text/css" />
<link
	href="http://jobs.51job.com/shanghai-pdxq/70492339.html?s=01&amp;t=0"
	rel="canonical" />
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/jQuery.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/Base.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/search/Base.Search_Transition.js?20170605"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/ScrollText.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/my/My_SMS_Self.js?20170605"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/jobs/posterImgShow.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/jobs/jobdetail.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/component/mobile.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/jobs/headerlayer.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/JsBase.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/login.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2016/delivery/delivery.js?20170605"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/resume/layer.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2009/resume/select_layer.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2016/jquery.form.min.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2016/layer/layer.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2016/my/my_collection.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2016/my/report.js?20170619"></script>
<script language="javascript"
	src="http://js.51jobcdn.com/in/js/2017/payservice/GetCompetition.js?20170619"></script>
</head>

<script type="text/javascript">
	function apply(element) {
 		$.ajax({
			url:"apply.action",
			type:"post",
			async : true,
			data:{
				"userid" : element,
				"RecruitID" : ${Recruit.recruitID}
			},
			dataType : "text",
			
			success: function(amessage){
				
			/* 	var json = $.parseJSON(data);  */
			//alert(data)
			/* var json = jQuery.parseJSON(amessage);
			var list = json[0].amessage;	 */		
				alert(amessage); 
				
				
			}
		}); 
 		
 		
	}
	
	function rapply() {
		
		alert("请先登录后再申请职位");
		window.location.href = 'index-login.jsp';
		
	}

</script>

<body>
	<div class="header">
		<!-- bar start -->
		<div class="bar">
			<div class="in">
				<div class="app">
					<ul>
						<li><em class="e_icon"></em><a
							href="http://www.51job.com/pm/app/index.html">APP下载</a><em
							class="icon_arrow"></em></li>
						<li><img width="80" height="80"
							src="http://img03.51jobcdn.com/im/2016/code/web_top.png"
							alt="app download">
							<p>
								<a href="http://www.51job.com/pm/app/index.html">APP下载</a>
							</p></li>
					</ul>
				</div>

				<p class="rlk">

					<a href="http://ehire.51job.com/">企业服务</a>
				</p>
				<c:choose>
					<c:when test="${! empty consumer  }">
						<div class="uer">
							<p class="op">
								<a class="uname e_icon at" href="pindex.jsp?lang=c">
									${consumer.username }</a>
							</p>
							<span class="l">|</span>
							<!-- 1.选项栏 -->
							<ul>
								<li class="tle"><span><a href="Myjob.action?userid=${consumer.id }">我的51Job</a><em
										class="icon_arrow"></em></span></li>
								<li class="e1 e_icon"><a href="description.jsp?lang=c">简历中心</a></li>
								<li class="e2 e_icon"><a href="resume_browsed.jsp?lang=c">谁看过我</a></li>
								<li class="e4 e_icon "><a href="selectApply.action?userid=${consumer.id }">我的申请</a></li>
								<li class="e6 e_icon last"><a href="#">退出帐号</a></li>
							</ul>
						</div>
					</c:when>
					<c:otherwise>
						<div class="uer">
							<p class="op">
								<a href="index-login.jsp">登录</a> / <a href="index-register.jsp">注册</a>
							</p>
							<span class="l">|</span>
							<ul>
								<li class="tle"><span><a href="index-login.jsp">我的51Job</a><em
										class="icon_arrow"></em></span></li>
								<li class="e1 e_icon"><a href="index-login.jsp">简历中心</a></li>
								<li class="e2 e_icon"><a href="index-login.jsp">谁看过我</a></li>
								<li class="e3 e_icon"><a href="index-login.jsp">我的收藏</a></li>
								<li class="e4 e_icon "><a href="index-login.jsp">我的申请</a></li>
							</ul>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<!-- top end -->
		<!-- nag start -->
		<div class="pop-city"
			style="display: none; position: absolute; z-index: 1000;"
			id="area_channel_layer">
			<div class="tle">
				地区选择 <em class="close"
					onclick="jvascript:$('#area_channel_layer,#area_channel_layer_backdrop').hide();"></em>
			</div>
			<div class="pcon">

				<div class="cbox">

					<div class="clst" id="area_channel_layer_all"></div>
					<div class="clear"></div>
				</div>
			</div>
		</div>

		<div id="area_channel_layer_backdrop" class="layer_back_drop_class"
			style="z-index: 999; position: absolute; z-index: 999; left: 0; top: 0; display: none"></div>

		<script>
			function areaChannelChangeTab(sName, oEvent) {
				$("#area_channel_layer_all").children().hide();
				$("#area_channel_layer_list").children().removeClass("on");
				$(oEvent).addClass("on");
				$("#area_channel_layer_all").children(
						"div[name='area_channel_div_" + sName + "']").show();
				$("#area_channel_layer_backdrop").show();
			}

			function openAreaChannelLayer() {
				setLayerPosition();
				$("#area_channel_layer,#area_channel_layer_backdrop").show();
			}

			function setLayerPosition() {
				var dl = $(document).scrollLeft();
				var dt = $(document).scrollTop();
				var ww = $(document).width();
				var dwh = $(document).height();
				var wwh = $(window).height();
				var ow = $("#area_channel_layer").width();
				var oh = $("#area_channel_layer").height();
				var fLeft = (ww - ow) / 2 + dl;
				var fTop = (wwh - oh) * 382
				/ 1000 + dt;/ / 黄金比例
				$("#area_channel_layer").css({
					'left' : Math.max(parseInt(fLeft), dl),
					'top' : Math.max(parseInt(fTop), dt)
				});
				$("#area_channel_layer_backdrop").css({
					'width' : ww + 'px',
					'height' : dwh + 'px'
				});
			}

			$(window).resize(function() {
				if (!$("#area_channel_layer").is(":hidden")) {
					setLayerPosition();
				}
			});
		</script>
		<div class="nag">
			<div class="in">
				<a href="http://www.51job.com/"><img class="logo" width="90"
					height="40"
					src="http://img03.51jobcdn.com/im/2016/logo/logo_90x40.png"
					alt="前程无忧"></a>
				<!--LOGO-->
				<img class="slogen" width="162" height="17"
					src="http://img05.51jobcdn.com/im/2016/header/slogen.png">
				<p class="nlink">
					<a class="" href="index.jsp">首页</a>
					 <a class="" href="selectRecruit.action?lang=c&salary=${salary }&companyNature=${companyNature }&WorkExperience=${WorkExperience }&Recordschool=${Recordschool }&companySize=${companySize }&companyLocation=${companyLocation }&welfare=${welfare }&worktype=${worktype}">职位搜索</a>
					<a class="" href="javascript:openAreaChannelLayer()">地区频道</a> <a
						class="" href="http://www.51job.com/default_res.php">职场资讯</a> <a
						class="" href="http://xy.51job.com/default-xs.php">校园招聘</a> <a
						href="http://my.51job.com/my/gojingying.php?direct=http%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008"
						target="_blank">无忧精英</a>
				</p>
			</div>
		</div>
		<!-- nag end -->
	</div>
	<div class="tCompanyPage">

		<div class="tCompany_center clearfix">
			<div id="tHeader_mk" style="height: 0"></div>
			<div class="tHeader tHjob">
				<div class="in">
					<div class="cn">
						<h1>${Recruit.job }<input value="70492339" name="hidJobID"
								id="hidJobID" type="hidden" jt="0"><input value="jobs"
								name="hidHost" id="hidHost" type="hidden">
						</h1>
						<span class="lname">${Recruit.companyLocation }</span> <strong>${Recruit.salary }</strong>
						<p class="cname">${Recruit.companyName }</p>

						<p class="msg ltype">${Recruit.companyNature }
							&nbsp;&nbsp;|&nbsp;&nbsp;${Recruit.companySize }</p>
					</div>
					
					<c:choose>
						<c:when test="${ ! empty consumer }">
							<div class="op">
						<a class="but_sq" id="app" href="javascript:void(0);"
							onclick="apply('${consumer.id}');"><img
							width="22" height="22"
							src="http://img06.51jobcdn.com/im/jobs/but_img_sq.png" alt="" />申请职位</a>
					</div>
						</c:when>
						<c:otherwise>
							<div class="op">
							<%
								session.setAttribute("type", "1");				
							%>
						<a class="but_sq" id="app" href="javascript:void(0);"
							onclick="rapply();"><img
							width="22" height="22"
							src="http://img06.51jobcdn.com/im/jobs/but_img_sq.png" alt="" />申请职位</a>
					</div>
						</c:otherwise>
					
					</c:choose>

					
					
					<div class="clear"></div>
				</div>
			</div>
			<div class="tCompany_main">
				<div class="tBorderTop_box bt">
					<div class="jtag inbox">
						<div class="t1">
							<span class="sp4"><em class="i1"></em>${Recruit.workExperience }</span>
							<span class="sp4"><em class="i2"></em>${Recruit.recordschool }</span>
							<span class="sp4"><em class="i3"></em>招聘${Recruit.hiring }人</span>
							<span class="sp4"><em class="i4"></em>${Recruit.date }发布</span>
							<div class="clear"></div>


							<div class="clear"></div>
						</div>
						<p class="t2">
							<span>${Recruit.welfare }</span>

						</p>
					</div>
				</div>
				<div id='shareBox' style='display: none'>
					<a class='icon_share i_weixin' href='javascript:void(0)'
						onclick='weixinMa();'>微信</a><a class='icon_share i_mail'
						target="_blank"
						href='http://my.51job.com/sc/sendjob_tofriend.php?jobid=70492339&coid=2157407&divid=0'
						id='sendToFriend'>邮件</a>
				</div>

				<div id="weixinMa_fx" style="display: none;">
					<img width="198" height="198" alt="二维码"
						src="http://jobs.51job.com/comm/qrcode.php?url=http%3A%2F%2Fm.51job.com%2Fsearch%2Fjobdetail.php%3Fjobid%3D70492339"
						width="120" />
				</div>

				<div class="tBorderTop_box">
					<h2>
						<span class="bname">职位信息</span>
					</h2>
					<div class="bmsg job_msg inbox">
						<span class="label">职位描述：</span><br> <strong>${Recruit.jobtype }</strong>
					<br>岗位职责：<br>

						<c:forEach items="${description }" var="des">
							${des }<br>
						</c:forEach>
						<br>任职要求：<br>
						<c:forEach items="${requirement }" var="req">
							 ${req }<br>
						</c:forEach>
						<div class="mt10">
							<p class="fp f2">
						</div>

						<div class="clear"></div>
					</div>
				</div>




				<p class="tPosition_center_bottomText">*
					提醒：用人单位招聘人才，以任何名义向应聘者收取费用都属于违法（如体检费、兼职淘宝刷钻等），请应聘者提高警惕！</p>
			</div>
			<div class="tCompany_sidebar">
				<div class="tBorderTop_box">
					<h2>
						<span class="bname">相似职位推荐</span> <!-- <a class="op icon_b i_reflash"
							href="javascript:;" id="changeRecommend">换一换</a> -->
					</h2>
					<div class="rjlist" id="job_recommend">
						<input
							value="AWIHYgBkUDJVMV0%2BAClWZlpkBmZQaFZ%2BCzhRbQVhUz4BLgVlAmYGYAJvAmMEYgAzATNSfVJh"
							name="frompara" id="frompara" type="hidden">
							<c:choose>
								<c:when test="${! empty selectLikeRecruit }">
									<c:forEach items="${selectLikeRecruit }" var="select">
									<div class="e">
										<a class="name" target="_blank"
									href="company.action?recruitID=${select.recruitID }"
									>${select.job }</a><strong>${select.salary }</strong> 
									${select.companyName }<span>${select.companyLocation }</span>
									</div>
										</c:forEach>
								</c:when>
									
							</c:choose>
						
					</div>
				</div>
			</div>

			<div class="clear"></div>
			<style type="text/css">
#announcement ul {
	margin: 0px;
	padding: 0px;
	clear: both;
}

#announcement {
	width: auto;
}

#announcement div {
	padding: 0px 10px 0px 0px;
	overflow-y: hidden;
	line-height: 20px;
	height: 20px;
}

#announcement li {
	font-size: 14px;
	float: left;
	list-style-type: none;
	margin-right: 35px;
	margin-left: 5px;
	white-space: nowrap;
}

#announcement a {
	text-decoration: none;
	color: #9A9A9A;
}

#announcement a:hover {
	text-decoration: underline;
}

.st_one {
	margin-left: -22px;
}
</style>
			<script>
				if (document.getElementById("announcementbody")) {
					var scrollup = new ScrollText("announcementbody");
					scrollup.Amount = 1;
					scrollup.Delay = 20;
					scrollup.Start();
				}
			</script>



			<a href="#top" id="goTop">回到<br />顶部
			</a>
		</div>
	</div>


	<div class="footer">
		<div class="in">
			<div class="nag">
				<div class="e e_first">
					<label>销售热线：</label>400-886-0051&nbsp;&nbsp;027-87810888<br> <label>客服热线：</label>400-620-5100<br>
					<label>Email：</label><a href="mailto:club@51job.com">club@51job.com</a>（个人）<br>
					<a href="mailto:hr@51job.com">hr@51job.com</a>（企业）
				</div>
				<div class="e">
					<strong>简介</strong><br> <a
						href="http://www.51job.com/bo/AboutUs.php" target="_blank">关于我们</a><br>
					<a href="http://www.51job.com/bo/service.php" target="_blank">服务声明</a><br>
					<a href="http://www.51job.com/bo/media/media.php" target="_blank">媒体报道</a><br>
					<a href="http://ir.51job.com/" target="_blank">Investor
						Relations</a>
				</div>
				<div class="e">
					<strong>合作</strong><br> <a
						href="http://www.51job.com/bo/jobs/new_joinus.php" target="_blank">加入我们</a><br>
					<a href="http://www.51job.com/bo/contact.php" target="_blank">联系我们</a><br>
					<a href="http://www.51job.com/link.php" target="_blank">友情链接</a>
				</div>
				<div class="e">
					<strong>帮助</strong><br> <a
						href="http://help.51job.com/home.html" target="_blank">帮助中心</a><br>
					<a href="http://help.51job.com/qa.html?from=b" target="_blank">常见问题</a><br>
					<a href="http://help.51job.com/guide.html?from=d" target="_blank">新手引导</a>
				</div>
				<div class="e">
					<strong>导航</strong><br> <a
						href="http://www.51job.com/sitemap/site_Navigate.php"
						target="_blank">网站地图</a><br> <a
						href="http://search.51job.com/jobsearch/search_result.php"
						target="_blank">职位搜索</a><br> <a
						href="http://my.51job.com/cv/CResume/CV_CResumeManage.php"
						target="_blank">简历中心</a>
				</div>
				<div class="code c_first">
					<img width="80" height="80"
						src="http://img03.51jobcdn.com/im/2016/code/web_bottom.png"
						alt="APP下载"> <span><a
						href="http://www.51job.com/pm/app/index.html">APP下载</a></span>
				</div>
				<div class="code">
					<img width="80" height="80"
						src="http://img03.51jobcdn.com/im/2016/code/weixin.png" alt="官方微信">
					<span>官方微信</span>
				</div>
				<div class="clear"></div>
			</div>
			<p class="note">
				<span>未经51job同意，不得转载本网站之所有招聘信息及作品 | 无忧工作网版权所有&copy;1999-2017</span>
			</p>
		</div>
	</div>
</body>
</html>

<script language='javascript'>
<!--
	window.cfg = {
		fileName : '',
		lang : 'c',
		stype : '',
		fullLang : 'Chinese',
		langs : {
			sqzwml : 'applyjob',
			qzzwqdg : '请在要选择的职位前打勾!',
			myml : 'my',
			ts_qxjzw : '请选择职位',
			queren : '确认',
			guanbi : '关闭',
			nzdnxj : '您最多能选择',
			xiang : '项',
			xzdq : '选择地区',
			xj_xg : '选择/修改',
			zycs : '主要城市',
			sysf : '所有省份',
			tspd : '特殊频道',
			buxian : '不限',
			qingxj : '请选择',
			yixuan : '已选',
			znlb : '职能类别',
			hylb : '行业类别',
			gzdd : '工作地点',
			quanbu : '全部',
			zhineng : '职能',
			hangye : '行业',
			didian : '地点',
			qsrgjz : '请输入关键字',
			srpcgjz : '输入排除关键字'
		},
		url : {
			root : 'http://search.51job.com/jobsearch',
			image : 'http://img01.51jobcdn.com/im/2009',
			image_search : 'http://img01.51jobcdn.com/im/2009/search',
			image_search_lang : 'http://img01.51jobcdn.com/im/2009/search/c',
			image_search_c : 'http://img01.51jobcdn.com/im/2009/search/c',
			image_search_e : 'http://img01.51jobcdn.com/im/2009/search/e'
		},
		domain : {
			my : 'http://my.51job.com',
			my_ssl : 'https://mylogin.51job.com',
			search : 'http://search.51job.com'
		},
		isJobview : '1',
		isAcStatRecJob : '1',
		acStatRecJobType : '0803111457',
		isSearchDomain : '1'
	};

	function searchInit() {
		if (window.Search) {
			clearInterval(intVal);
			window.zzSearch = new Search({
				searchForm : document.searchForm,
				pageForm : document.pageForm,
				excludeForm : document.excludeForm,
				pageJumpForm : document.pageJumpForm,
				selJobPageForm : document.selJobPageForm,
				cfg : cfg
			});
		}
	}
	var intVal = window.setInterval(searchInit, 50);
//-->
</script>