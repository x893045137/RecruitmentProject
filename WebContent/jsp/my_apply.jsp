<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!--
    	作者：mxl
    	时间：2017-07-19
    	描述：个人中心 --- 我的申请页面
    -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
<title>我的申请丨前程无忧（51Job）</title>
<meta name="description" content="工作申请记录--My51job--个人服务.前程无忧为个人提供最全最新最准确的企业职位招聘信息，为企业提供人才招聘、猎头、培训、测评和人事外包在内的全方位的人力资源服务，帮助个人求职者与企业搭建最佳的人才招募和人才培养渠道。">
<meta name="keywords" content="人才，招聘，简历，工作，面试，薪酬，跳槽，猎头，培训，测评，人事">
<meta name="robots" content="all">
<link href="../css/personal/public/base.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/personal/public/panel-pop.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/personal/public/form.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/personal/my/my51.css?20170619" rel="stylesheet" type="text/css" />

<script language="javascript" src="../js/personal/jquery.js?20170619"></script>
<script language="javascript" src="../js/personal/layer/layer.js?20170619"></script>
<script language="javascript" src="../js/personal/delivery.js?20170314?20170619"></script>
<script language="javascript" src="../js/personal/my/my.js?20170619"></script>
<script language="javascript" src="../js/personal/my/pointtrack_my.js?20170706?20170619"></script>
<script language="javascript" src="../js/personal/pointtrack.js?20170623?20170619"></script>
<script language="javascript" src="../js/personal/my/apply.js?20170703?20170619"></script>
<script language="javascript" src="../js/personal/my/GetCompetition.js?20170619"></script>
<script language="javascript" src="../js/personal/iframeheight.js?20170619"></script>
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
             <div class="uer">
              				 <p class="op">
                			<a class="uname e_icon at" href="pindex.jsp">
                                ${consumer.username }</a>
                                    </p>                                             
                			<span class="l">|</span>
                <ul>               	
                    <li class="tle"><span><a href="pindex.jsp?lang=c">我的51Job</a><em class="icon_arrow"></em></span></li>
                    <li class="e1 e_icon"><a href="description.jsp?lang=c">简历中心</a></li>
                    <li class="e2 e_icon"><a href="resume_browsed.jsp?lang=c">谁看过我</a></li>
                    <li class="e3 e_icon"><a href="my_collection.jsp?lang=c">我的收藏</a></li>
                    <li class="e4 e_icon "><a href="my_apply.jsp?lang=c">我的申请</a></li>
                    <li class="e6 e_icon last"><a href="#">退出帐号</a></li>
                                    </ul>
           		 </div>          
        </div>
    </div>
    <!-- top end -->
	<!-- 英文版为body添加class -->
	<script>
			</script>
    <!-- nag start -->
    <div class="pop-city" style="display:none;position: absolute; z-index: 1000;" id="area_channel_layer">
    <div class="tle">
      
    </div>
    <div class="pcon">
        <div class="ht">
        
         </div>
      
    </div>
</div>

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
            <a href="http://www.51job.com"><img class="logo" width="90" height="40" src="http://img04.51jobcdn.com/im/2016/logo/logo_90x40.png" alt="前程无忧"></a>
                <img class="slogen" width="162" height="17" src="http://img05.51jobcdn.com/im/2016/header/slogen.png">
            
<p class="nlink">
    <a class="" href="index.jsp">首页</a>
    <a class="" href="search_result.jsp">职位搜索</a>
    <a class="" href="javascript:openAreaChannelLayer();">地区频道</a>
    <a class="" href="http://www.51job.com/default_res.php">职场资讯</a>
    <a class="" href="http://xy.51job.com/default-xs.php">校园招聘</a>
    <a href="http://my.51job.com/my/gojingying.php?direct=http%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
</p>        </div>
    </div>
    <!-- nag end -->
</div><div class="content">
    <!-- 左侧边栏 -->
    <div class="exlt">
   <a track-type="trackIndexClick" event-type="28" href="pindex.jsp?lang=c" class=""><span>我的51Job</span></a>
    <a track-type="trackIndexClick" event-type="29" href="description.jsp" class=""><span>简历中心</span></a>
    <a track-type="trackIndexClick" event-type="30" href="resume_browsed.jsp?lang=c" class=""><span>谁看过我</span></a>
    <a track-type="trackIndexClick" event-type="31" href="my_collection.jsp?lang=c" class=""><span>我的收藏</span></a>
    <a track-type="trackIndexClick" event-type="32" href="my_apply.jsp?lang=c" class="on"><span>我的申请<em class="new"></em></span></a>

    <div class="more" style="display: block;">
       
    </div>
</div>
<script>
    $('.mbtn').click(function() {
        if($(this).hasClass('mk')){
            $(this).removeClass('mk');
            $('.more').css('display','none');
            $(this).attr("event-type", "22")
        }else{
            $(this).addClass('mk');
            $('.more').css('display','block');
            $(this).attr("event-type", "21")
        }
    });
</script>    <div class="exrt">
        <!--二级导航-->
        <div class="mt">
    <ul class="mt_l">
        <input name="accountid" type="hidden" id="accountid" value="120249678">
        <input name="c_url" type="hidden" id="c_url" value="http://vipapi.51job.com/for51job/personal.ashx">
        <input name="c_token" type="hidden" id="c_token" value="5153a2ab0fef9bbbc3b8b33ec2d29ee6">
        <input name="c_func" type="hidden" id="c_func" value="getjobapplycount">
        <input name="c_timestamp" type="hidden" id="c_timestamp" value="1500454858">

        <input name="s_url" type="hidden" id="s_url" value="http://xyz.51job.com/ServiceForApply/JobService.asmx/getPostCount">
        <input name="s_sign" type="hidden" id="s_sign" value="b39edfd2bce429176927f868df7e30d7">

        <li class="on"><a href="http://i.51job.com/userset/my_apply.php?type=sh&lang=c">社会申请</a> <span>1</span></li>
                    </ul>
        <ul class="mt_r" style="display: block;">
        <li>仅保留近60天的社会申请记录</li>
    </ul>
    </div>
        <!--社会申请 不为空-->
                    <div class="exmsg" style="display:block">
                <div class="rbox">
                    <div class="tit">
                        <ul class="clearfix">
                            <li class="l4">职位名</li>
                            <li class="l9">公司名</li>
                            <li class="l6">工作地点</li>
                            <li class="l10">薪资</li>
                            <li class="l11">申请日期</li>
                        </ul>
                    </div>
                                            <div class="rli">
                            <ul class="clearfix">
                                <li class="l4 dt">
                                    <a target="_blank" title="品牌经理&amp;总监" href="http://jobs.51job.com/all/91830760.html?s=02&t=0">
                                        品牌经理&amp;总监                                    </a>
                                                                    </li>
                                <li class="l9">
                                    <a target="_blank" title="众邦金控投资有限公司" href="http://jobs.51job.com/all/co4061131.html">
                                        众邦金控投资有限公司                                    </a>
                                </li>
                                <li class="l6">上海</li>
                                <li class="l10 c_orange">1.5-2万/月</li>
                                <li class="l11">2017-07-19</li>
                            </ul>
                            <div class="rsp">
                                <ul class="clearfix">
                                    <li class="l8">申请：<span>我的简历1 </span> </li>
                                                                            <li class="l8">近两个月申请：
                                            <span class="c_green">6</span>人
                                        </li>
                             <li class="l12">&nbsp;<span class="c_green">&nbsp;</span></li>
                                                                    </ul>
                            </div>
                            <div class="rate" style="display: none;">
                            </div>
                        </div>
                                    </div>
                <!--分页-->
                <div class="dw_page">
                    <div class="p_box">
                        <div class="p_wp">
                            <div class="p_in">
                                <ul>
                                    <!-- 上一页 -->
                                  <li class="bk"><span>上一页</span></li>
                                         <!--数字页码-->
                                       <li class="on">1</li>
                                           <!-- 下一页 -->
                                <li class="bk"><span>下一页</span></li>
                                                                    </ul>
                                <span class="td">共1页，到第</span>
                                <input id="jump_page" class="mytxt" type="text" value="1">
                                <span class="td">页</span>
                                <span class="og_but" onclick="jump_page();">确定</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
    <div class="clear"></div>
<a href="#top" id="goTop" style="display: none;">回到<br>顶部</a>
<a href="http://i.51job.com/userset/advice.php?from=my51job" target="_blank" class="dw_fb">意见反馈</a></div>
<div class="footer">
    <div class="in">
        <div class="nag">
            <div class="e e_first">
                <label>销售热线：</label>400-886-0051&nbsp;&nbsp;027-87810888<br>
                <label>客服热线：</label>400-620-5100<br>
                <label>Email：</label><a href="mailto:club@51job.com">club@51job.com</a>（个人）<br>
                <a href="mailto:hr@51job.com">hr@51job.com</a>（公司）            </div>
            <div class="e">
                <strong>简介</strong><br>
                <a href="http://www.51job.com/bo/AboutUs.php" target="_blank">关于我们</a><br>
                <a href="http://www.51job.com/bo/service.php" target="_blank">服务声明</a><br>
                <a href="http://www.51job.com/bo/media/media.php" target="_blank">媒体报道</a><br>
                <a href="http://ir.51job.com" target="_blank">Investor Relations</a>
            </div>
            <div class="e">
                <strong>合作</strong><br>
                <a href="http://www.51job.com/bo/jobs/new_joinus.php" target="_blank">加入我们</a><br>
                <a href="http://www.51job.com/bo/contact.php" target="_blank">联系我们</a><br>
                <a href="http://www.51job.com/link.php" target="_blank">友情链接</a>
            </div>
            <div class="e">
                <strong>帮助</strong><br>
                <a href="http://help.51job.com/home.html" target="_blank">帮助中心</a><br>
                <a href="http://help.51job.com/qa.html?from=b" target="_blank">常见问题</a><br>
                <a href="http://help.51job.com/guide.html?from=d" target="_blank">新手引导</a>
            </div>
            <div class="e">
                <strong>导航</strong><br>
                <a href="http://www.51job.com/sitemap/site_Navigate.php" target="_blank">网站地图</a><br>
                <a href="http://search.51job.com/jobsearch/search_result.php" target="_blank">职位搜索</a><br>
                <a href="http://i.51job.com/resume/resume_center.php?lang=c" target="_blank">简历中心</a>
            </div>
            <div class="code c_first">
                <img width="80" height="80" src="http://img01.51jobcdn.com/im/2016/code/web_bottom.png" alt="APP下载">
                <span><a href="http://www.51job.com/pm/app/index.html">APP下载</a></span>
            </div>
            <div class="code">
                <img width="80" height="80" src="http://img01.51jobcdn.com/im/2016/code/weixin.png" alt="官方微信">
                <span>官方微信</span>
            </div>
            <div class="clear"></div>
        </div>

        <p class="note nag">
    <span>未经51Job同意，不得转载本网站之所有招聘信息及作品 | 无忧工作网版权所有&copy;1999-2017</span>
    
</p>         
    </div>
</div>
</body>
</html>