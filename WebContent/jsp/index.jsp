<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>招聘网_人才网_找工作_求职_上前程无忧</title>
<meta name="description"
	content="前程无忧人才网面向全国,提供2017最新最全最准确的招聘网站信息,为企业和求职者提供人才招聘、求职、找工作、培训等在内的全方位的人力资源服务,更多求职找工作信息尽在前程无忧!">
<meta name="keywords" content="招聘网,人才网,求职,找工作">
<meta name="mobile-agent"
	content="format=html5; url=http://m.51job.com/?partner=webmeta">
<meta name="mobile-agent"
	content="format=xhtml; url=http://3g.51job.com/?partner=webmeta">
<meta name="google-site-verification"
	content="qHBjj4pWQYtblhSWxpYvl71W7Y09NLrBbj_Uasa8-K0">
<meta name="robots" content="all">
<meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
<link href="../css/personal/public/base.css?20170117?20170619"
	rel="stylesheet" type="text/css" />
<link href="../css/personal/public/form.css?20170619" rel="stylesheet"
	type="text/css" />
<link href="../css/personal/public/home.css?20170407?20170619"
	rel="stylesheet" type="text/css" />
<link href="../css/personal/public/panel-pop.css?20170619"
	rel="stylesheet" type="text/css" />
<link href="../css/personal/public/style.css?20170619" rel="stylesheet"
	type="text/css" />


<script language="javascript" src="../js/personal/jquery.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/layer.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/common_layer.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/common_select.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/layer_main_map.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/layer_main.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/layer_main_navigation.js?20170619"></script>
<script language="javascript"
	src="../js/personal/user/register_c.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/area_array_c.js?20170619"></script>
<script language="javascript"
	src="../js/personal/layer/layer_c.js?20170309?20170619"></script>
<script language="javascript"
	src="../js/personal/user/login.js?20170314?20170619"></script>
<script language="javascript"
	src="../js/personal/login/jquery.placeholder.min.js?20170619"></script>
<script language="javascript"
	src="../js/personal/pointtrack.js?20170623?20170619"></script>
<script language="javascript"
	src="../js/personal/chgFindType.js?20170405"></script>
<script language="javascript" src="../js/personal/jquery.lazyload.js"></script>
<script language="javascript"
	src="../js/personal/index_2012.js?20170405"></script>

<style type="text/css">
.content .el .ipt {
	width: 400px;
}
</style>
</head>
<body bgcolor="#FFFFFF">

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
							src="http://img01.51jobcdn.com/im/2016/code/web_top.png"
							alt="app download">
							<p>
								<a href="http://www.51job.com/pm/app/index.html">APP下载</a>
							</p></li>
					</ul>
				</div>

				<p class="rlk">

					<a href="http://ehire.51job.com" target="_blank">企业服务</a>
				</p>
				<c:choose>
					<c:when test="${! empty consumer  }">
						<div class="uer">
							<p class="op">
								<a class="uname e_icon at" href="Myjob.action?userid=${consumer.id }">
									${consumer.username }</a>
							</p>
							<span class="l">|</span>
							<!-- 1.选项栏 -->
							<ul>
								<li class="tle"><span><a
										href="Myjob.action?userid=${consumer.id }">我的51Job</a><em
										class="icon_arrow"></em></span></li>
								<!-- <li class="e1 e_icon"><a href="description.jsp?lang=c">简历中心</a></li> -->
								<li class="e2 e_icon"><a href="resume_browsed.jsp?lang=c">谁看过我</a></li>
								<li class="e4 e_icon "><a
									href="selectApply.action?userid=${consumer.id }">我的申请</a></li>
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
				<div class="ht"></div>
				<div class="cbox">

					<div class="clst" id="area_channel_layer_all">
						<div class="e" name="area_channel_div_abc"></div>
						<div class="e" name="area_channel_div_def" style="display: none">

						</div>





					</div>
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
				<a href="http://www.51job.com"><img class="logo" width="90"
					height="40"
					src="http://img01.51jobcdn.com/im/2016/logo/logo_90x40.png"
					alt="前程无忧"></a> <img class="slogen" width="162" height="17"
					src="http://img05.51jobcdn.com/im/2016/header/slogen.png">
				<p class="nlink">
					<a class="on" href="index.jsp">首页</a> <a class=""
						href="selectRecruit.action?lang=c&salary=${salary }&companyNature=${companyNature }&WorkExperience=${WorkExperience }&Recordschool=${Recordschool }&companySize=${companySize }&companyLocation=${companyLocation }&welfare=${welfare }&worktype=${worktype}&keyword =${keyword}">职位搜索</a>
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
	<script>
		var supporthttps = 1;
		var islogin = 0;
	</script>
	<div class="content"
		style="background: url(http://img01.51jobcdn.com/im/pm/pc/bjt/bjt_regular_1.jpg?1499410242) center no-repeat">
		<div class="in Fm">
			<input type="hidden" id="showguide" value="2" /> <input type="hidden"
				id="showlayer" value="2" /> <input type="hidden" id="language"
				value="c" /> <input type="hidden" id="userid" value="">
		</div>
	</div>
	
	<div class="hm container">
		<div class="cn">

			<div class="hcbox" id="area_channel_homepage_div"
				style="display: none">
				<div class="harea"></div>
				<div id="area_channel_homepage_all" class="clst">
					<div class="e" name="area_channel_div_abc"></div>
				</div>
			</div>
		</div>
		<script>
			function areaChannelHomepageChangeTab(sName, oEvent) {
				$("#area_channel_homepage_all").children().hide();
				$("#area_channel_homepage_list").children().removeClass("on");
				oEvent.addClass("on");
				$("#area_channel_homepage_all").children(
						"div[name='area_channel_div_" + sName + "']").show();
			}

			function openAreaChannelHomepageDiv() {
				if ($("#area_channel_homepage_div").is(":hidden")) {
					$("#area_channel_homepage_div").show();
					areaChannelHomepageChangeTab('abc', $(
							"#area_channel_homepage_list").children(":first"));
					$("#area_channel_homepage_more").addClass("on");
				} else {
					$("#area_channel_homepage_div").hide();
					$("#area_channel_homepage_more").removeClass("on");
				}
			}
		</script>
		<div class="cn hlist">
			<div class="e">
				<p class="tie">
					<span class="h1 e_icon"> <a target="_blank" title="互联网/电子商务"
						track-type="indKeyword"
						href="http://search.51job.com/list/020000,000000,0000,32,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">互联网/电子商务</a>
					</span>
				</p>
				<a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,32,9,99,%25E6%25B5%258B%25E8%25AF%2595%25E5%25B7%25A5%25E7%25A8%258B%25E5%25B8%2588,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="测试工程师">测试工程师</span> <em>(12,108)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,32,9,99,Java%25E5%25BC%2580%25E5%258F%2591,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="Java开发">Java开发</span> <em>(17,911)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,32,9,99,%25E7%25BD%2591%25E7%25BB%259C%25E6%258E%25A8%25E5%25B9%25BF,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="网络推广">网络推广</span> <em>(39,509)</em>
				</a><br>
			</div>
			<div class="e">
				<p class="tie">
					<span class="h2 e_icon"> <a target="_blank" title="金融/投资/证券"
						track-type="indKeyword"
						href="http://search.51job.com/list/020000,000000,0000,03,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">金融/投资/证券</a>
					</span>
				</p>
				<a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,03,9,99,%25E7%2590%2586%25E8%25B4%25A2%25E9%25A1%25BE%25E9%2597%25AE,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="理财顾问">理财顾问</span> <em>(61,471)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,03,9,99,%25E9%25A3%258E%25E9%2599%25A9%25E6%258E%25A7%25E5%2588%25B6,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="风险控制">风险控制</span> <em>(28,733)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,03,9,99,%25E7%25BB%258F%25E6%25B5%258E%25E7%25A0%2594%25E7%25A9%25B6%25E5%2591%2598,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="经济研究员">经济研究员</span> <em>(7,912)</em>
				</a><br>
			</div>
			<div class="e">
				<p class="tie">
					<span class="h3 e_icon"> <a target="_blank" title="汽车及零配件"
						track-type="indKeyword"
						href="http://search.51job.com/list/020000,000000,0000,33,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">汽车及零配件</a>
					</span>
				</p>
				<a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,33,9,99,%25E7%25BB%2593%25E6%259E%2584%252F%25E8%25AE%25BE%25E8%25AE%25A1,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="结构/设计">结构/设计</span> <em>(7,618)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,33,9,99,%25E9%2594%2580%25E5%2594%25AE%25E7%25BB%258F%25E7%2590%2586,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="销售经理">销售经理</span> <em>(13,454)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,33,9,99,%25E5%2594%25AE%25E5%2590%258E%25E6%259C%258D%25E5%258A%25A1,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="售后服务">售后服务</span> <em>(14,248)</em>
				</a><br>
			</div>
			<div class="e">
				<p class="tie">
					<span class="h4 e_icon"> <a target="_blank" title="房地产"
						track-type="indKeyword"
						href="http://search.51job.com/list/020000,000000,0000,26,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">房地产</a>
					</span>
				</p>
				<a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,26,9,99,%25E6%2588%2590%25E6%259C%25AC%25E7%25AE%25A1%25E7%2590%2586,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="成本管理">成本管理</span> <em>(5,045)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,26,9,99,%25E9%2594%2580%25E5%2594%25AE%252F%25E5%25B8%2582%25E5%259C%25BA,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="销售/市场">销售/市场</span> <em>(100,000)</em>
				</a><br> <a target="_blank" track-type="indSubKeyword"
					href="http://search.51job.com/list/020000,000000,0000,26,9,99,%25E8%25B4%25A2%25E5%258A%25A1%25E7%25BB%258F%25E7%2590%2586,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">
					<span class="at" title="财务经理">财务经理</span> <em>(3,371)</em>
				</a><br>
			</div>
		</div>
		<div class="cn hserver">
			<a href="http://ehire.51job.com" class="tie" target="_blank">企业服务</a>
			<div class="hlst">
				<span><a track-type="companyKeyword" target="_blank"
					href="http://hro.51job.com/">人事外包</a></span> <span><a
					track-type="companyKeyword" target="_blank"
					href="http://research.51job.com/">调研中心</a></span> <span><a
					track-type="companyKeyword" target="_blank"
					href="http://tr.51job.com/train/51px2009/index.php">企业培训</a></span> <span><a
					track-type="companyKeyword" target="_blank"
					href="http://my.51job.com/careerpost/2010/mkt_awards10/index.php">典范雇主</a></span>
				<span><a track-type="companyKeyword" target="_blank"
					href="http://talent.zhiding.com.cn/">在线测评</a></span> <span><a
					track-type="companyKeyword" target="_blank"
					href="http://research.51job.com/ssr_1.asp">薪酬调查</a></span>
			</div>
			<a class="cln" target="_blank"
				href="http://ehire.51job.com/MainLogin.aspx">企业入口</a>
		</div>


		<div class="cn type1">

			<!--ad_a start-->
		</div>
		<!--ad_a end-->
		<!--ad_b start-->
		<div class="cn type2">

			<div id="ad_b">
				<div id="bannerb">
					<table cellpadding='0' cellspacing='7' class="adtableb">


					</table>
				</div>

			</div>
		</div>
		<!--ad_b end-->
		<!--ad_c start-->
		<!--famous start-->

		<div class="blck cn">
			<strong class="tle c_orange">知名企业</strong>
			<div id="famous">

				<ul class="list_left">
					<li>·<a adid="25333844"
						onmousedown="return AdsClick(25333844)"
						href='http://companyadc.51job.com/companyads/2017/sh/kangtai0707a_7180wh/index.htm'
						class='font_show' target='_blank'>康泰伦特医药咨询</a>&nbsp;<a
						adid="25333844" onmousedown="return AdsClick(25333844)"
						href='http://jobs.51job.com/all/67329533.html' class='position'
						target='_blank'>包装操作员</a>&nbsp;<a adid="25333844"
						onmousedown="return AdsClick(25333844)"
						href='http://jobs.51job.com/all/63319934.html' class='position'
						target='_blank'>生产倒班督导</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25386469"
						onmousedown="return AdsClick(25386469)"
						href='http://companyadc.51job.com/companyads/2017/hz/lainzgi0712_7313wh/index.htm'
						class='font_show' target='_blank'>浙江九州量子信息技术股份有限公司</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25398678"
						onmousedown="return AdsClick(25398678)"
						href='http://www.51testing.net/htm/zpwv/51jobzmqywz.htm'
						class='font_show' target='_blank'>博为峰</a>&nbsp;<a adid="25398678"
						onmousedown="return AdsClick(25398678)"
						href='http://www.51testing.net/htm/zpwv/51jobzmqywz.htm'
						class='position' target='_blank'>大专生 本科生</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25471109"
						onmousedown="return AdsClick(25471109)"
						href='http://companyadc.51job.com/companyads/2017/bj/gfgc0613_7199wh/index.htm'
						class='font_show' target='_blank'>GF加工方案中国区</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25398731"
						onmousedown="return AdsClick(25398731)"
						href='http://companyadc.51job.com/companyads/2017/nb/huaxiang0717_8516/index.htm'
						class='font_show' target='_blank'>华翔集团-宁波井上华翔 诚聘 技术 销售人才</a></li>
					<li>·<a adid="25212528"
						onmousedown="return AdsClick(25212528)"
						href='http://companyadc.51job.com/companyads/2017/wh/hengxin0328aaa_7168wh/index.htm'
						class='font_show' target='_blank'>横新软件工程（无锡）有限公司</a>&nbsp;<a
						adid="25212528" onmousedown="return AdsClick(25212528)"
						href='http://jobs.51job.com/all/75905590.html' class='position'
						target='_blank'>自动化助理工程师</a></li>
				</ul>
				<ul class="list_center">
					<li>·<a adid="25277711"
						onmousedown="return AdsClick(25277711)"
						href='http://companyadc.51job.com/companyads/2017/sh/zhongjiao0704_7385wh/index.htm'
						class='font_show' target='_blank'>中交第三航务工程局有限公司</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25434545"
						onmousedown="return AdsClick(25434545)"
						href='http://companyadc.51job.com/companyads/2017/sh/feisituob0714_7385wh/index.htm'
						class='font_show' target='_blank'>费斯托（中国）有限公司</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25485190"
						onmousedown="return AdsClick(25485190)"
						href='http://companyadc.51job.com/companyads/2017/cq/sk0718_7181wh/index.htm'
						class='font_show' target='_blank'>SK海力士半导体</a>&nbsp;<a
						adid="25485190" onmousedown="return AdsClick(25485190)"
						href='http://jobs.51job.com/all/83437339.html' class='position'
						target='_blank'>process工程师</a>&nbsp;<a adid="25485190"
						onmousedown="return AdsClick(25485190)"
						href='http://jobs.51job.com/all/76869941.html' class='position'
						target='_blank'>设备技术员</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25471714"
						onmousedown="return AdsClick(25471714)"
						href='http://companyadc.51job.com/companyads/2017/bj/wanbang0717-7201wh/index.htm'
						class='font_show' target='_blank'>北京万邦达环保技术股份有限公司</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25433865"
						onmousedown="return AdsClick(25433865)"
						href='http://companyadc.51job.com/companyads/2017/dl/wanjiang0714_7114wh/index.htm'
						class='font_show' target='_blank'>皖江金融租赁股份有限公司</a>&nbsp;<a
						adid="25433865" onmousedown="return AdsClick(25433865)"
						href='http://jobs.51job.com/all/91127568.html' class='position'
						target='_blank'>北京业务部项目经理</a></li>
					<li>·<a adid="25384836"
						onmousedown="return AdsClick(25384836)"
						href='http://search.51job.com/list/co,c,2171169,000000,10,1.html'
						class='font_show' target='_blank'>武汉大润发</a>&nbsp;<a
						adid="25384836" onmousedown="return AdsClick(25384836)"
						href='http://jobs.51job.com/all/87939331.html' class='position'
						target='_blank'>数据分析师</a>&nbsp;<a adid="25384836"
						onmousedown="return AdsClick(25384836)"
						href='http://jobs.51job.com/all/91380239.html' class='position'
						target='_blank'>采购</a>&nbsp;<a adid="25384836"
						onmousedown="return AdsClick(25384836)"
						href='http://jobs.51job.com/all/91383200.html' class='position'
						target='_blank'>采购助理</a></li>
				</ul>
				<ul class="list_right">
					<li>·<a adid="25175559"
						onmousedown="return AdsClick(25175559)"
						href='http://www.51testing.net/htm/zpwm/51jobzmqywz.htm'
						class='font_show' target='_blank'>51Testing</a>&nbsp;<a
						adid="25175559" onmousedown="return AdsClick(25175559)"
						href='http://www.51testing.net/htm/zpwm/51jobzmqywz.htm'
						class='position' target='_blank'>应往届毕业生</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25297994"
						onmousedown="return AdsClick(25297994)"
						href='http://companyadc.51job.com/companyads/2017/hz/zhonke0705_7134/index.htm'
						class='font_show' target='_blank'>杭州中科微电子有限公司</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25421480"
						onmousedown="return AdsClick(25421480)"
						href='http://companyadc.51job.com/companyads/2017/bj/duoyuanb0713_7163wh/index.htm'
						class='font_show' target='_blank'>小南国（集团）有限公司</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25471195"
						onmousedown="return AdsClick(25471195)"
						href='http://campus.51job.com/esunny/' class='font_show'
						target='_blank'>郑州商品交易所易盛信息技术有限公司</a>&nbsp;<a adid="25471195"
						onmousedown="return AdsClick(25471195)"
						href='http://jobs.51job.com/all/85084380.html' class='position'
						target='_blank'>网络服务</a><img
						src='http://img01.51jobcdn.com//im/2012/index/info_new.gif?20130218'></li>
					<li>·<a adid="25097886"
						onmousedown="return AdsClick(25097886)"
						href='http://companyadc.51job.com/companyads/2017vip/bj/yili0421_7147wh/index.htm'
						class='font_show' target='_blank'>内蒙古伊利实业集团股份有限公司</a></li>
					<li>·<a adid="25300360"
						onmousedown="return AdsClick(25300360)"
						href='http://companyadc.51job.com/companyads/2017/dl/yinhang0418a_7150wh/index.htm'
						class='font_show' target='_blank'>杭州银行股份有限公司</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<!--famous end-->
		<!-- 职场资讯 begin -->
		<div class="zlck cn">
			<strong class="tle c_orange">职场资讯</strong>
			<div class="msg">
				<a class="tname at" target="_blank"
					href="http://arts.51job.com/arts/05/420742.html"
					title="中年大叔面临选择，鹅厂OR券商?"> <strong>中年大叔面临选择，鹅厂OR券商?</strong>
				</a>
				<p class="p">
					有网友分享：手上有两个offer不知如何选择。offer1:国内top5券商的信息技术中心，base月薪给29k, 据说券... <a
						target="_blank" href="http://arts.51job.com/arts/05/420742.html">
						<span style="color: #FF7300;">阅读全文>></span>
					</a>
				</p>
			</div>
			<ul class="dcon">
				<li><a target="_blank"
					href="http://arts.51job.com/arts/05/420746.html"
					title="6年跳了6次槽，竟然没一次是为了钱？！">6年跳了6次槽，竟然没一次...</a><img
					src="http://images.51job.com/im/2016/temp/new.png" /></li>
				<li><a target="_blank"
					href="http://arts.51job.com/arts/05/420743.html"
					title="这类公司骗方案骗资源，千万不要去！">这类公司骗方案骗资源，千...</a><img
					src="http://images.51job.com/im/2016/temp/new.png" /></li>
				<li><a target="_blank"
					href="http://arts.51job.com/arts/05/420740.html" title="扎心：惭愧，又失业了">扎心：惭愧，又失业了</a><img
					src="http://images.51job.com/im/2016/temp/new.png" /></li>
				<li><a target="_blank"
					href="http://arts.51job.com/arts/05/420736.html"
					title="[本周气象]知识产权成为长沙创新驱动发展的新引擎">[本周气象]知识产权成为长...</a><img
					src="http://images.51job.com/im/2016/temp/new.png" /></li>
				<li><a target="_blank"
					href="http://arts.51job.com/arts/05/420734.html"
					title="入职两年，忍无可忍，终于要走了！">入职两年，忍无可忍，终于...</a><img
					src="http://images.51job.com/im/2016/temp/new.png" /></li>
				<li><a target="_blank"
					href="http://arts.51job.com/arts/05/420733.html"
					title="身高不够，车子也卖不出去？">身高不够，车子也卖不出去？</a><img
					src="http://images.51job.com/im/2016/temp/new.png" /></li>
			</ul>
			<div class="clear"></div>
		</div>
		<!-- 职场资讯 end -->
		<div class="mlck cn">
			<div class="flashid">
				<a target="_blank"
					href="http://trace.51job.com/mktrace.php?tag=club_other_mkt_591&u=aHR0cDovL3UuNTFqb2IuY29tL3RyYWNlP209MTE1Njg2OSZwPTExNTY4NzA=&k=c19c86b496dd63283db38a83c2628657"><img
					src="http://img01.51jobcdn.com/im/images/2017/careerpost/banner/dianjing4/400_72.gif" /><a />
			</div>
			<div class="clear"></div>
			<ul class="dcon">
				<li><a href="http://www.51job.com/pm/app/3g.php"
					target="_blank">手机找工作，请访问 m.51job.com</a></li>
				<li><a href="http://www.51job.com/careerpost/jianlishuoming/"
					target="_blank">简历模板,个人简历模板下载</a></li>
			</ul>
			<ul class="dcon">
				<li><a href="http://app.51job.com/" target="_blank">手机求职：必备软件，免费安装-></a></li>
				<li><a
					href="http://www.51job.com/sitemap/position_Navigate.php"
					target="_blank">全国人才招聘热门职位</a></li>
			</ul>
			<div class="clear"></div>
			<div id="hmScrollLinks" class="lks">
				<label>合作伙伴：</label>
				<div class="scrollin">
					<div>
						<p>
							<a href="http://www.lumi258.com" class="font_show"
								target="_blank">Lumi胶原蛋白</a> <a href="http://www.hudong.com"
								class="font_show" target="_blank">互动百科</a> <a
								href="http://jianli.51job.com/biaoge/" class="font_show"
								target="_blank">简历表格下载</a> <a
								href="http://jianli.51job.com/jianlifanwen/" class="font_show"
								target="_blank">简历范文</a> <a href="http://www.51job.com/shanghai"
								target="_blank" class="font_show">上海人才网</a> <a
								href="http://jianli.51job.com/" class="font_show"
								target="_blank">个人简历模板</a> <a
								href="http://jianli.51job.com/jianliyangben/" class="font_show"
								target="_blank">简历样本</a> <a
								href="http://www.51job.com/careerpost/tiaocao/mianshi.php"
								class="font_show" target="_blank">面试技巧</a> <a
								href="http://www.gaodun.com/" class="font_show" target="_blank">高顿网校</a>
							<a href="http://jianli.51job.com" class="font_show"
								target="_blank">求职信&nbsp;</a>
						</p>
					</div>
				</div>
			</div>

		</div>
		<div class="clear"></div>
		<a href="#top" id="goTop">回到<br>顶部
		</a> <a href="http://i.51job.com/userset/advice.php?from=index"
			target="_blank" class="dw_fb">意见反馈</a>
	</div>

	<div class="footer">
		<div class="in">
			<div class="nag">
				<div class="e e_first">
					<label>销售热线：</label>400-886-0051&nbsp;&nbsp;027-87810888<br> <label>客服热线：</label>400-620-5100<br>
					<label>Email：</label><a href="mailto:club@51job.com">club@51job.com</a>（个人）<br>
					<a href="mailto:hr@51job.com">hr@51job.com</a>（公司）
				</div>
				<div class="e">
					<strong>简介</strong><br> <a
						href="http://www.51job.com/bo/AboutUs.php" target="_blank">关于我们</a><br>
					<a href="http://www.51job.com/bo/service.php" target="_blank">服务声明</a><br>
					<a href="http://www.51job.com/bo/media/media.php" target="_blank">媒体报道</a><br>
					<a href="http://ir.51job.com/ir/IRMain.php" target="_blank">Investor
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
						href="http://i.51job.com/resume/resume_center.php?lang=c"
						target="_blank">简历中心</a>
				</div>
				<div class="code c_first">
					<img width="80" height="80"
						src="http://img01.51jobcdn.com/im/2016/code/web_bottom.png"
						alt="APP下载"> <span><a
						href="http://www.51job.com/pm/app/index.html">APP下载</a></span>
				</div>
				<div class="code">
					<img width="80" height="80"
						src="http://img01.51jobcdn.com/im/2016/code/weixin.png" alt="官方微信">
					<span>官方微信</span>
				</div>
				<div class="clear"></div>
			</div>
			<p class="note">
				<span>未经51Job同意，不得转载本网站之所有招聘信息及作品 | 无忧工作网版权所有&copy;1999-2017</span>

			</p>

		</div>
	</div>
	<div class="license">
		<div class="in">
			<p class="note">
				<a class="gan" target="_blank"
					href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011502002551">沪公网安备
					31011502002551 号</a>
			</p>
			<a target="_blank"
				href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&entyId=20111110135406666"><img
				width="30" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/gongshang.png" alt=""><span>上海工商</span></a>
			<a target="_blank" href="http://www.miibeian.gov.cn/"><img
				width="28" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/icp.png" alt=""><span>沪ICP备案<br>12015550号
			</span></a> <a target="_blank"
				href="http://www.pdxa.cn/Welcome.Asp?Id=3101150532"><img
				width="29" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/pdcp.png" alt=""></a>
			<a target="_blank" href="http://sh.cyberpolice.cn"><img
				width="83" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/sh110.png" alt=""></a>
			<a target="_blank"
				href="https://search.szfw.org/cert/l/CX20120110001801001838"><img
				width="90" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/cecdc.png" alt=""></a>
			<a target="_blank"
				href="http://report.12377.cn:13225/toreportinputNormal_anis.do"><img
				width="90" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/shjubao2.png" alt=""></a>
			<a target="_blank" href="http://i.51job.com/userset/report.php"><img
				width="108" height="32"
				src="http://img01.51jobcdn.com/im/2016/license/report.png" alt=""></a>
		</div>
	</div>
</body>
</html>

<script>
	$('.showLogin').click(function() {
		$('.content .ufm').animate({
			'top' : 7
		}, 300, function() {
			$("#loginname").focus();
		});
	});

	$('.hideLogin').click(function() {
		$('.content .ufm').animate({
			'top' : 248
		}, 300)
	});

	$(function() {
		var $that = $('#hmScrollLinks .scrollin div');
		var w = $that.find('p').width();
		var htm = $that.html();
		var s = w / 0.06;

		$that.append(htm);

		function move() {
			s = (w + parseInt($that.css("left"))) / 0.06;
			$that.animate({
				'left' : -w
			}, s, 'linear', function() {
				$that.css('left', 0);
				move();
			});
		}

		move();

		$('#hmScrollLinks .scrollin').hover(function() {
			$that.stop(true);
		}, function() {
			move();
		});

		//返回顶部
		var stop = '';
		$(window).scroll(function() {
			$('#goTop').hide();
			stop = $(this).scrollTop();
			if (stop > 0) {
				$('#goTop').show();
			} else {
				$('#goTop').hide();
			}
		});
		//悬浮搜索框
		$(window).scroll(
				function() {
					var adtop = $('.hm .entry').offset().top;
					var wtop = document.documentElement.scrollTop
							+ document.body.scrollTop;
					if (wtop > adtop) {
						$('.header.fix').fadeIn(400);
					} else {
						$('.header.fix').fadeOut(400);
					}
				});
	})
</script>
</body>


</div>
</div>
<!--content end-->
</div>

<div id="zoomer" class="" style="display: none;"></div>
<!--  微访谈页面开始-->
<div></div>
<!--  微访谈页面结束-->

<script language="javascript">
	$(document)
			.ready(
					function() {
						setTimeout(
								function() {
									$(".index_ad_popup")
											.each(
													function() {
														var width = $(this)
																.find("img")
																.attr("width");
														width = parseInt(width) - 8;
														var height = $(this)
																.find("img")
																.attr("height");
														height = parseInt(height) - 8;
														var span = '<span class="ad_more" style="margin-top:'+ height +'px;margin-left:'+ width +'px;"> </span>';
														$(this).prepend(span);
													});
								}, 1);
						$("#zoomer").mouseleave(function() {
							$("#zoomer").css({
								"display" : "none"
							});
							$("#zoomer").html('');
						});

					});
</script>
</body>
</html>


<script language="javascript">
<!--
	var systemtime = 1587059685;
	var d_system_client_time = systemtime - new Date().getTime();
	window.cfg = {
		lang : 'c',
		fullLang : 'Chinese',
		fileName : 'default.php',
		tracedata : {
			domain : 'www.51job.com',
			guid : '',
			ip : '116.231.137.251',
			accountid : '',
			searchkeyword : '',
		},

		langs : {
			ts_qxjzw : '请选择职位',
			queren : '确认',
			guanbi : '关闭',
			yxdd : '已选地点',
			yxzn : '已选职能',
			yxhy : '已选行业',
			nzdnxj : '您最多能选择',
			xiang : '项',
			xjdq : '选择地区',
			xj_xg : '选择/修改',
			zycs : '主要城市',
			sysf : '所有省份',
			tspd : '特殊频道',
			qxjgzdd : '请选择工作地点',
			qxjznlb : '请选择职能类别',
			qxjhylb : '请选择行业类别',
			gzdd : '工作地点',
			buxian : '不限'
		},
		url : {
			image : 'http://img01.51jobcdn.com/im/2009',
			image_search : 'http://img01.51jobcdn.com/im/2009/search',
			image_search_lang : 'http://img01.51jobcdn.com/im/2009/search/c',
			image_search_c : 'http://img01.51jobcdn.com/im/2009/search/c',
			image_search_e : 'http://img01.51jobcdn.com/im/2009/search/e'
		}
	};
	function searchInit() {
		if (window.JobLayer) {
			clearInterval(intVal);

			var param = {
				cfg : cfg,
				openNodes : document.frmKeywordSearch.btnJobarea,
				_valueNodes : document.frmKeywordSearch.jobarea,
				_textNodes : document.frmKeywordSearch.btnJobarea,
				isMulty : false,
				isHasNolimit : true
			};
			var jl = new JobareaLayer(param);
		}
	}
	var intVal = window.setInterval(searchInit, 50);

	function onloadFun() {
		if (window.$) {
			$(document)
					.ready(
							function() {
								/*去除链接，button，image button的点击时虚线框*/
								$(
										"a,input[type='button'],input[type='image'],input[type='submit'],area,img")
										.bind("focus", function() {
											if (this.blur) {
												this.blur();
											}
										})
							})
		} else {
			setTimeout("onloadFun()", 1000);
		}
	}
	onloadFun();
	function closeRightBottomLayer(sClassName) {
		$('.weifantang-wrap').hide();
	}

	-->
</script>
<script language="javascript" type="text/javascript">
<!--
	$(function() {
		$("img").lazyload({
			placeholder : "http://img01.51jobcdn.com/im/2009/grey.gif",
			effect : "fadeIn",
			threshold : 200
		});
	});
	-->
</script>