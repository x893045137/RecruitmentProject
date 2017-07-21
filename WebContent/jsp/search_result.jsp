<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--   职位搜索网页  -->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
<title>【上海招聘，求职】-前程无忧</title>
<meta name="description" content="前程无忧为您提供最新最全的上海招聘，求职信息。网聚全国各城市的人才信息，找好工作，找好员工，上前程无忧。">
<meta name="keywords" content="找工作,求职,人才,招聘">
<meta name="mobile-agent" content="format=html5; url= http://m.51job.com/search/joblist.php?jobarea=020000&keyword=&partner=webmeta">
<meta name="mobile-agent" content="format=xhtml; url= http://3g.51job.com/sc/joblist.php?jobarea=020000&keyword=&partner=webmeta">
<meta name="robots" content="all">
<link href="../css/style.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/search.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/jobs/reset.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/jobs/tForm.css?20161130?20170619" rel="stylesheet" type="text/css" />
<link href="../css/jobs/tSearch-layout.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/jobs/dw_joblist.css?20170630?20170619" rel="stylesheet" type="text/css" />
<link href="../css/jobs/tpad.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/2017/public/base.css?20170117?20170619" rel="stylesheet" type="text/css" />
<link href="../css/2017/public/panel-pop.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/2017/public/form.css?20170619" rel="stylesheet" type="text/css" />

<script language="javascript" src="../js/search/CV_QuickApply.js?20160810?20170619"></script>
<script language="javascript" src="../js/search/Qpost_set.js?20170619"></script>
<script language="javascript" src="../js/search/Base.js?20170619"></script>
<script language="javascript" src="../js/search/Base.ZzLayer.js?20170619"></script>
<script language="javascript" src="../js/search/Base.ZzLayer.ExtZzLayer.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/jquery.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/jquery.placeholder.min.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/JsBase.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/login.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/Base.Search_Transition.js?20170504?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/search/search_data_c.js?20170504?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/search_box.js?20161121?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/search/search_result.js?20170706?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2009/component/mobile.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/delivery/delivery.js?20170504?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/search/search.js?20170504?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/my/my_collection.js?20170504?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/layer.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/common_layer.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/common_select.js?20170314?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/layer_main_map.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/layer_main.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/layer_main_navigation.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/association_main.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/common_association.js?20170314?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/merge_data_c.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/area_array_c.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/layer_c.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/indtype_array_c.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/layer/funtype_array_c.js?20170619"></script>
<script language="javascript" src="http://js.51jobcdn.com/in/js/2016/pointtrack.js?20170619"></script>
<style type="text/css">

	.dw_search .search_but
	{
		left: 8px;
	}
	
	.dw_search .mytxt {
		 width: 300px;
		position: absolute;
		left: 40px;
	}
	
	.dw_search .addbut input {
		width: 90px;
		text-align: center;
		color: red;
	}
</style>
</head>
<body>
<div class="header">
    <!-- bar start -->
    <div class="bar">
        <div class="in">     
        	<div class="app">
                <ul>
                    <li><em class="e_icon"></em><a href="http://www.51job.com/pm/app/index.html">APP下载</a><em class="icon_arrow"></em></li>
                    <li>
                        <img width="80" height="80" src="http://img01.51jobcdn.com/im/2016/code/web_top.png" alt="app download">
                        <p><a href="http://www.51job.com/pm/app/index.html">APP下载</a></p>
                    </li>
                </ul>
            </div>
            <p class="rlk">
            	<a href="http://ehire.51job.com" target="_blank">企业服务</a>
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
                		<li class="tle"><span><a href="pindex.jsp">我的51Job</a><em class="icon_arrow"></em></span></li>
                    	<li class="e1 e_icon"><a href="description.jsp?lang=c">简历中心</a></li>
                    	<li class="e2 e_icon"><a href="resume_browsed.jsp?lang=c">谁看过我</a></li>
                   	    <li class="e3 e_icon"><a href="my_collection.jsp?lang=c">我的收藏</a></li>
                        <li class="e4 e_icon "><a href="my_apply.jsp?lang=c">我的申请</a></li>
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
                		<li class="tle"><span><a href="index-login.jsp">我的51Job</a><em class="icon_arrow"></em></span></li>
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
	<!-- 英文版为body添加class -->
	<script>
			</script>
    <!-- nag start -->
<div id="area_channel_layer_backdrop" class="layer_back_drop_class" style="z-index:999;position:absolute;z-index:999;left:0;top:0;display:none"></div>
<script>
    function areaChannelChangeTab(sName, oEvent)
    {
        $("#area_channel_layer_all").children().hide();
        $("#area_channel_layer_list").children().removeClass("on");
        $(oEvent).addClass("on");
        $("#area_channel_layer_all").children("div[name='area_channel_div_" + sName + "']").show();
        $("#area_channel_layer_backdrop").show();
    }

    function openAreaChannelLayer()
    {
        setLayerPosition();
        $("#area_channel_layer,#area_channel_layer_backdrop").show();
    }

    function setLayerPosition()
    {
        var dl = $(document).scrollLeft();
        var dt = $(document).scrollTop();
        var ww = $(document).width();
        var dwh = $(document).height();
        var wwh = $(window).height();
        var ow = $("#area_channel_layer").width();
        var oh = $("#area_channel_layer").height();
        var fLeft = (ww - ow) / 2 + dl;
        var fTop = (wwh - oh) * 382 / 1000 + dt;//黄金比例
        $("#area_channel_layer").css({'left': Math.max(parseInt(fLeft), dl), 'top': Math.max(parseInt(fTop), dt)});
        $("#area_channel_layer_backdrop").css({'width': ww + 'px', 'height': dwh + 'px'});
    }

    $(window).resize(function(){
        if(!$("#area_channel_layer").is(":hidden"))
        {
            setLayerPosition();
        }
    });
</script>    <div class="nag">
        <div class="in">
            <a href="http://www.51job.com"><img class="logo" width="90" height="40" src="http://images.51job.com/im/2016/logo/logo_90x40.png" alt="前程无忧"></a>
                <img class="slogen" width="162" height="17" src="http://img05.51jobcdn.com/im/2016/header/slogen.png">
            
<p class="nlink">
    <a class="" href="index.jsp">首页</a>
    <a class="on" href="search_result.jsp">职位搜索</a>
    <a class="" href="javascript:openAreaChannelLayer();">地区频道</a>
    <a class="" href="http://www.51job.com/default_res.php">职场资讯</a>
    <a class="" href="http://xy.51job.com/default-xs.php">校园招聘</a>
    <a href="http://my.51job.com/my/gojingying.php?direct=http%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
</p>        </div>
    </div>
    <!-- nag end -->
</div><script>
    </script>
<div class="dw_wp">	
     <form name="searchForm" method="post" action="" autocomplete="off">
        <input type="hidden" name="lang" value="c">
        <input type="hidden" name="stype" value="2">
        <input type="hidden" name="postchannel" value="0000">
        <input type="hidden" name="fromType" value="1">
        <input type="hidden" name="line" value="">
        <input id="confirmdate" type="hidden" name="confirmdate" value="9">
        <input type="hidden" name="from" value="">
        <input name="keywordtype" id="keywordtype" type="hidden" value="2" />
        <!--搜索条件-->
        <div class="dw_search Fm">
            <!--关键词框 -->
            <div class="el on" style="width:448px">
                
                <p class="ipt"><em class="search_but dicon Dm"></em><input type="text" maxlength="200" id="kwdselectid" placeholder="请输入关键字" autocomplete="off" vindex="-1" name="keyword" value="平面设计" class="mytxt" preval="" /></p>
                                <p class="addbut" id="work_position_click">
                    <input id="work_position_input" type="button" value="搜索" class="at">                  
                </p>
                <input name="jobarea" id="jobarea" type="hidden" value="020000" />
                <!--搜索结果 -->
                <div class="ul" id="KwdSearchResult" style="display:none;">
                </div>
                <!--搜索历史 -->
                <div class="ul" id="searchHistory" style="display:none;">
    <span class="tl off"><span class="bg b_his">历史记录</span></span>
                <span class="li" onclick="javascript:window.location.href='http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=4&dibiaoid=0&address=&line=&specialarea=00&from=&welfare='"  >上海</span>
            <span class="li" onclick="javascript:window.location.href='http://search.51job.com/list/020000,000000,0000,00,9,02,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=4&dibiaoid=0&address=&line=&specialarea=00&from=&welfare='"  >上海+2-3千</span>
            <span class="li" onclick="javascript:window.location.href='http://search.51job.com/list/020000,000000,0000,00,9,99,%25E5%25B9%25B3%25E9%259D%25A2%25E8%25AE%25BE%25E8%25AE%25A1,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=4&dibiaoid=0&address=&line=&specialarea=00&from=&welfare='"  >平面设计(全文)+上海</span>
            </div>
            </div>         
           
        </div>
        <!--搜索条件 END-->

       
        <!--搜索条件 END-->
    </form>
    <!--根据关键字和城市展示的广告-->
        <!--过滤条件-->
                    
    <div class="dw_filter">
        
                <div class="el mk" id="filter_providesalary">
                    <span class="title">月薪范围</span>
                                           
                                                                
                                        <ul>
                                                                                                                                            <li><a class="dw_c_orange" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=21&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">所有</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,01,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=21&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">2千以下</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,02,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=21&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">2-3千</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,03,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=21&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">3-4.5千</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,04,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=21&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">4.5-6千</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,05,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=21&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">6-8千</a></li>
                                                                                                                           
                                            </ul>
                    <div class="clear"></div>
                </div>
                
                <div class="el" id="filter_cotype">
                    <span class="title">公司性质</span>
                                           
                                        <ul>
                                                                                                                                            <li><a class="dw_c_orange" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=8&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">所有</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=01&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=8&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">外资</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=03&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=8&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">合资</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=04&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=8&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">国企</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=05&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=8&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">民营公司</a></li>
                                            </ul>
                    <div class="clear"></div>
                </div>
                
                <div class="el" id="filter_workyear">
                    <span class="title">工作年限</span>
                                                                
                                        <ul>
                                                                                                                                            <li><a class="dw_c_orange" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=6&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">所有</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=01&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=6&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">无经验</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=02&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=6&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">1-3年</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=05&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=6&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">10年以上</a></li>
                                            </ul>
                    <div class="clear"></div>
                </div>
                
                <div class="el" id="filter_degreefrom">
                    <span class="title">学历要求</span>
                                                                
                                        <ul>
                                                                                                                                            <li><a class="dw_c_orange" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=7&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">所有</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=01&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=7&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">初中及以下</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=02&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=7&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">高中/中技/中专</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=03&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=7&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">大专/本科</a></li>
                                            </ul>
                    <div class="clear"></div>
                </div>
                
                <div class="el" id="filter_companysize">
                    <span class="title">公司规模</span>
                                                              
                                        <ul>
                                                                                                                                            <li><a class="dw_c_orange" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">所有</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=01&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">少于100人</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=02&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">100-500人</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=03&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">500-1000人</a></li>
                                                                                                                                            
                                            </ul>
                    <div class="clear"></div>
                </div>
                <div class="el" id="filter_companysize">
                    <span class="title">地区</span>
                                                              
                                        <ul>
                                                                                                                                            <li><a class="dw_c_orange" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">所有</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=01&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">北京</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=02&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">上海</a></li>
                                                                                                                                            <li><a class="" href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,1.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=03&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">江苏</a></li>
                                                                                                                                            
                                            </ul>
                    <div class="clear"></div>
                </div>
                

<div class="el e2 show">
    <span class="title">其他筛选</span>
    <ul class="ote" id="otherFilter">
        <li onclick="showFilterOther('filter_p_keyword', this);">
      <span>薪资福利</span>        </li>
        <li onclick="showFilterOther('filter_p_jobterm', this);;">
      <span>工作类型</span>        </li>
                
                                
            </ul>
    <div class="clear"></div>
</div>
<div class="kel" style="display:none;">
    
    <p id="filter_p_providesalary" style="display:none;">


    </p>

    <p id="filter_p_cotype" style="display:none;">


    </p>

    <p id="filter_p_workyear" style="display:none;">


    </p>

    <p id="filter_p_degreefrom" style="display:none;">


    </p>

    <p id="filter_p_companysize" style="display:none;">


    </p>

    

    <p id="filter_p_jobterm" style="display:none;">


                <a class="dw_c_orange" href="#">所有</a>
          
                <a class="" href="#">全职</a>
          
                <a class="" href="#">兼职</a>
          
                <a class="" href="#">实习全职</a>
          
                <a class="" href=" #">实习兼职</a>
          
    </p>

    <p id="filter_p_keyword" style="display:block;">


                <a class="dw_c_orange" href="#">所有</a>
          
                <a class="" href="#">周末双休</a>
                   
          
                <a class="" href="#">五险一金</a>
                        
          
                <a class="" href="#">绩效奖金</a>
                   
                <a class="" href="#">住房补贴</a>
                  
                <a class="" href="#">餐饮补贴</a>
                                
                <a class="" href="#">员工旅游</a>
          
    </p>

</div>

        <div class="op" onclick="collapseExpansionSearch('http://search.51job.com', 'dw_filter');">
            <span>展开更多选项<em class="dicon Dm"></em></span>
        </div>
    </div>
    <!--过滤条件 END-->

    <!--你是不是想找-->
        <!--相似职位 END-->

    <!--已选条件-->
    <div id="dw_choice_mk"></div>
    <div class="dw_choice">
        <div class="in">
            <span class="title dicon Dm">已选条件：</span>
            <p>上海</p>
            <a class="og_but" href="#search">修改</a>
        </div>
    </div>
    <!--已选条件 END-->

    <!-- 关键字广告 start -->
        <!-- 关键字广告 end -->
    <!--列表表格-->
    <div class="dw_table" id="resultList">
        <div class="dw_tlc">
            <div class="chall">
                <span>
                    <em class="check" onclick="selectAllJobs(this, 'delivery_em')" value="" name="select_all" id="top_select_all_jobs_checkbox" class="checkbox"></em>
                </span>
                全选
            </div>
            <div class="op">
                <span onclick="delivery('delivery_jobid', '2', 'http://my.51job.com', 'c', 'http://search.51job.com', '01', '01', 'http://img06.51jobcdn.com');" class="but_sq uck"><i class="dicon Dm"></i>申请职位</span><span onclick="saveCollection('');" class="but_sc uck"><i class="dicon Dm"></i>收藏职位</span>
            </div>

                            
                                            
                                        
            <div class="rt">
                共100000条职位
            </div>

           <div class="rt">
                <span id="rtPrev" class="dicon Dm"></span><span class="dw_c_orange">1</span> / 2000<a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,2.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=" id="rtNext" class="dicon Dm on" onclick="zzSearch.jumpPage(this.href);return false;"></a>            </div>

                                                                                        
           
            
        </div>

        <div class="el title">
            <span class="t1">职位名</span>
            <span class="t2">公司名</span>
            <span class="t3">工作地点</span>
            <span class="t4">薪资</span>
            <span class="t5">发布时间</span>
        </div>
                 <div class="el">
                        <p class="t1 ">
                            <em class="check" name="delivery_em" onclick="checkboxClick(this)"></em>
                            <input class="checkbox" type="checkbox" name="delivery_jobid" value="91756230" jt="0" style="display:none" />
                            <span>
                                <a target="_blank" title="课程顾问/电话销售+底薪（4-10K）+做五休二" href="http://jobs.51job.com/shanghai-jaq/91756230.html?s=01&t=0" onmousedown="">
                                    课程顾问/电话销售+底薪（4-10K）+做五休二                                </a>
                                                            </span>
                        </p>
                        <span class="t2"><a target="_blank" title="上海玺卷网络科技有限公司" href="http://jobs.51job.com/all/co4251114.html">上海玺卷网络科技有限公司</a></span>
                        <span class="t3">上海-静安区</span>
                        <span class="t4">0.8-1.5万/月</span>
                        <span class="t5">07-17</span>
                   </div>         
                     <div class="el">
                        <p class="t1 ">
                            <em class="check" name="delivery_em" onclick="checkboxClick(this)"></em>
                            <input class="checkbox" type="checkbox" name="delivery_jobid" value="91745065" jt="0" style="display:none" />
                            <span>
                                <a target="_blank" title="销售精英（公司直招）" href="http://jobs.51job.com/shanghai-pdxq/91745065.html?s=01&t=0" onmousedown="">
                                    销售精英（公司直招）                                </a>
                                                            </span>
                        </p>
                        <span class="t2"><a target="_blank" title="中国人寿保险股份有限公司上海市浦东支公司" href="http://jobs.51job.com/all/co4000402.html">中国人寿保险股份有限公司上海市浦...</a></span>
                        <span class="t3">上海-浦东新区</span>
                        <span class="t4">0.8-1万/月</span>
                        <span class="t5">07-17</span>
                    </div>
                    <div class="el">
                        <p class="t1 ">
                            <em class="check" name="delivery_em" onclick="checkboxClick(this)"></em>
                            <input class="checkbox" type="checkbox" name="delivery_jobid" value="91748321" jt="0" style="display:none" />
                            <span>
                                <a target="_blank" title="高薪诚聘金融交易员" href="http://jobs.51job.com/shanghai/91748321.html?s=01&t=0" onmousedown="">
                                    高薪诚聘金融交易员                                </a>
                            </span>
                        </p>
                        <span class="t2"><a target="_blank" title="台鸿（上海）股权投资基金管理中心（有限合伙）" href="http://jobs.51job.com/all/co3987773.html">台鸿（上海）股权投资基金管理中心...</a></span>
                        <span class="t3">上海</span>
                        <span class="t4">0.8-1.5万/月</span>
                        <span class="t5">07-17</span>
                    </div>
                                            <div class="dw_tlc">
            <input type="hidden" value="" id="advice_email"/>
            <div class="chall">
                <em class="check" onclick="selectAllJobs(this, 'delivery_em')" id="bottom_select_all_jobs_checkbox" name="select_all" value=""></em>
                全选
            </div>
            <div class="op">
                <span onclick="delivery('delivery_jobid', '2', 'http://my.51job.com', 'c', 'http://search.51job.com', '01', '01', 'http://img06.51jobcdn.com');" class="but_sq uck"><i class="dicon Dm"></i>申请职位</span><span onclick="saveCollection('');" class="but_sc uck"><i class="dicon Dm"></i>收藏职位</span>
            </div>

            <div class="sbox">
               
            </div>
        </div>
    </div>
    <!--列表表格 END-->

    <!--分页-->
                
                    
                <div class="dw_page">
                                <div class="p_box">
                                    <div class="p_wp">
                                        <div class="p_in">
                                            <ul><li class="bk"><span>上一页</span></li><li class="on">1</li><li><a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,2.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">2</a></li><li><a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,3.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">3</a></li><li><a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,4.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">4</a></li><li><a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,5.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">5</a></li><li><a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,6.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">6</a></li><li class="bk"><a href="http://search.51job.com/list/020000,000000,0000,00,9,99,%2B,2,2.html?lang=c&stype=1&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=99&companysize=99&lonlat=0%2C0&radius=-1&ord_field=0&confirmdate=9&fromType=&dibiaoid=0&address=&line=&specialarea=00&from=&welfare=">下一页</a></li></ul><span class="td">共2000页，到第</span><input id="jump_page" class="mytxt" type="text" value="1"/><span class="td">页</span><span class="og_but" onclick="jumpPage('2000');">确定</span></div></div></div></div>    <!--分页 END-->

    <a href="#top" id="goTop">回到<br>顶部</a>

    <!-- BANNER 广告 -->
    <div class="mainleft s_search search_btm0">
        <table border=0 cellspacing=0 cellpadding=4><tr>
	<td><a adid="24898612" onmousedown="return AdsClick(24898612)" href="http://companyadc.51job.com/companyads/2017vip/sh/bangyue0609_7330wh/index.htm" title="上海棒约翰餐饮管理有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2017/sh/banyh0609c_7330wh.gif" border="0" width="150" height="60"></a></td>
	<td><a adid="24499220" onmousedown="return AdsClick(24499220)" href="http://companyadc.51job.com/companyads/2017/sh/nan0512_7343wh/index.htm" title="上海新世界大丸百货" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2017/sh/dawan0515a_7235wh.gif" border="0" width="150" height="60"></a></td>
	<td><a adid="24629618" onmousedown="return AdsClick(24629618)" href="http://companyadc.51job.com/companyads/2017vip/sh/desha0523_7330wh/index.htm" title="德莎国际货运代理（上海）有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2017/sh/desha0523c_7330wh.gif" border="0" width="150" height="60"></a></td>
	<td><a adid="24430311" onmousedown="return AdsClick(24430311)" href="http://companyadc.51job.com/companyads/2017vip/sh/herzi0510_7330wh/index.htm" title="赫兹租车咨询（上海）有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2017/sh/heerzi0510c_7330wh.gif" border="0" width="150" height="60"></a></td>
	<td><a adid="24839241" onmousedown="return AdsClick(24839241)" href="http://companyadc.51job.com/companyads/2017/wh/damei0606_7330wh/index.htm" title="上海达美乐比萨有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2017/sh/damei0606c_7330wh.gif" border="0" width="150" height="60"></a></td>
	<td><a adid="24784834" onmousedown="return AdsClick(24784834)" href="http://companyadc.51job.com/companyads/2017vip/sh/dongfang0602_7330wh/index.htm" title="上海东方金融广场企业发展有限公司" target="_blank" onfocus="blur()"><img src="http://img05.51jobcdn.com/im/images/2017/sh/dongfang0602b_7330wh.gif" border="0" width="150" height="60"></a></td>
</tr>
</table>    </div>
   

   
        <div class="rollBox" style="border-bottom:#dfdfdf 1px solid; margin-bottom:10px;">
            <style type="text/css">
ul {
	margin: 0px;
	padding: 0px;
	clear:both;
}
#announcement {
	width:auto;
}
#announcement div {
	padding:0px 5px 0px 5px;
	overflow-y:hidden;
	line-height: 30px;
	height: 30px;
}
#announcement li {
	font-size: 14px;
	float: left;
	list-style-type: none;
	margin-right: 11px;
	margin-left: -5px;
	white-space: nowrap;
}
#announcement a {
	text-decoration: none;
	color:#666;
}
#announcement a:hover {
	text-decoration:none;
    color:#ff7300;
}
.st_one{
	margin-left:-22px;

}
</style>

</body>
</html>