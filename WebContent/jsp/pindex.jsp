<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 
	描述：个人中心 ---- 我的51Job

 -->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>
<title>Message Center--My51job--个人服务</title>
<link href="../css/personal/public/base.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/personal/public/form.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/personal/public/panel-pop.css?20170619" rel="stylesheet" type="text/css" />
<link href="../css/personal/my/my51.css?20170619" rel="stylesheet" type="text/css" />


<script language="javascript" src="../js/personal/jquery.js?20170619"></script>
<script language="javascript" src="../js/personal/layer/layer.js?20170619"></script>
<script language="javascript" src="../js/personal/resume/RefreshResume.js?20170504?20170619"></script>
<script language="javascript" src="../js/personal/my/my_51job.js?20170504?20170619"></script>
<script language="javascript" src="../js/personal/resume/modify_userinfo.js?20170627?20170619"></script>
<script language="javascript" src="../js/personal/login/mobile_original.js?20170619"></script>
<script language="javascript" src="../js/personal/my/my_collection.js?20170504?20170619"></script>
<script language="javascript" src="../js/personal/my/my.js?20170619"></script>
<script language="javascript" src="../js/personal/delivery.js?20170504?20170619"></script>
<script language="javascript" src="../js/personal/my/pointtrack_my.js?20170706?20170619"></script>
<script language="javascript" src="../js/personal/pointtrack.js?20170623?20170619"></script>
<script language="javascript" src="../js/personal/login/d_nation.js?20170619"></script>
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
                        <img width="80" height="80" src="http://img03.51jobcdn.com/im/2016/code/web_top.png" alt="app download">
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
    
    <div class="pcon">
        <div class="ht">
           
                           
                        </div>
        <div class="cbox">
           
            <div class="clst"  id="area_channel_layer_all">
                                    <div class="e" name="area_channel_div_abc">                     
                    </div>                  
                            </div>
            <div class="clear"></div>
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
            <a href="http://www.51job.com"><img class="logo" width="90" height="40" src="http://img05.51jobcdn.com/im/2016/logo/logo_90x40.png" alt="前程无忧"></a>
                <img class="slogen" width="162" height="17" src="http://img05.51jobcdn.com/im/2016/header/slogen.png">
            
<p class="nlink">
    <a class="" href="index.jsp">首页</a>
    <a class="" href="http://search.51job.com/jobsearch/search_result.php">职位搜索</a>
    <a class="" href="javascript:openAreaChannelLayer();">地区频道</a>
    <a class="" href="http://www.51job.com/default_res.php">职场资讯</a>
    <a class="" href="http://xy.51job.com/default-xs.php">校园招聘</a>
    <a href="http://my.51job.com/my/gojingying.php?direct=http%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
</p>        </div>
    </div>
    <!-- nag end -->
</div>    
	           
            	<div class="content">

		<div class="exlt">
    <a track-type="trackIndexClick" event-type="28" href="pindex.jsp" class="on"><span>我的51Job</span></a>
    <a track-type="trackIndexClick" event-type="29" href="description.jsp" class=""><span>简历中心</span></a>
    <a track-type="trackIndexClick" event-type="30" href="resume_browsed.jsp?lang=c" class=""><span>谁看过我</span></a>
    <a track-type="trackIndexClick" event-type="31" href="my_collection.jsp?lang=c" class=""><span>我的收藏</span></a>
    <a track-type="trackIndexClick" event-type="32" href="my_apply.jsp?lang=c" class=""><span>我的申请<em class="new"></em></span></a>    
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
</script>        <input type="hidden" id="pageCode" value="11203">
		<div class="exrt">
                                        
			<div class="resume">
                            <div class="rview">
                    <div class="pre" style="display:"></div>
                    <div class="rmsg clearfix">
                                                    <div class="rli">
                                <img src="http://images.51job.com/im/2016/resume/man.png" alt="头像" width="85" height="104">
                                <a class="a" track-type="trackButtonClick" event-type="1" href="description.jsp?lang=c">设置</a>
                                <div class="rcon">
                                    <div class="h1 e2"><a href="javascript:void(0);" title="我的简历1" onclick="edit(354961236,0,'http://i.51job.com/resume')">我的简历1</a><em class="td">快速投递</em><em class="gk">对所有公开</em></div>
                                    <div class="e">
                                        <label>更新：</label>
                                        <span class="refreshdate" id="refreshdate_354961236">2017-07-17</span>
                                    </div>
                                    <div class="r1"><span title="缪晓磊&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;23岁&nbsp;&nbsp;|&nbsp;&nbsp;暂无经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住上海">缪晓磊&nbsp;&nbsp;|&nbsp;&nbsp;男&nbsp;&nbsp;|&nbsp;&nbsp;23岁&nbsp;&nbsp;|&nbsp;&nbsp;暂无经验&nbsp;&nbsp;|&nbsp;&nbsp;现居住上海</span></div>
                                                                        
                                </div>
                                <div class="btnbox">
                                  <span class="p_but geige" track-type="trackButtonClick" event-type="3" onclick="edit(354961236,0,'http://i.51job.com/resume')">编辑</span>
                                </div>
                            </div>                                              
                                                                           
                        																		
                    </div>
                    <div class="next" style="display:"></div>
                    <div class="page clearfix">
                                                            <a class="pli on"></a>
                                                            <a class="pli"></a>	 
                        											
                    </div>
                </div>
                <div class="rsee clearfix">
                    <div class="rsl"><a track-type="trackButtonClick" event-type="4" href="http://i.51job.com/userset/resume_browsed.php?lang=c">谁看过我 <span class="c_orange">2</span></a></div>
                    <div class="rsl r1"><a track-type="trackButtonClick" event-type="5" href="http://i.51job.com/userset/my_apply.php?lang=c">我的申请 <span class="c_orange">1</span></a></div>
                    <div class="rsl r2"><a track-type="trackButtonClick" event-type="6" href="http://i.51job.com/userset/my_collection.php?lang=c">我的收藏 <span class="c_orange" id="my_collection_num">1</span></a></div>
                </div>
            								
				<div class="rex"></div>
			</div>
            <div class="ebox">                        
                                                                                
                    <div class="e_tit"><a class="a" track-type="trackButtonClick" event-type="15" href="http://i.51job.com/userset/resume_browsed.php?lang=c">更多</a>谁看过我<span class="c_999 f12">（近60天内简历被浏览<span class="c_orange">2</span>次，浏览公司<span class="c_orange">2</span>家）</span></div>
                                        
                                                <div class="emsg">                        
                            <div class="e qy">
                                <div class="h1"><a href="http://jobs.51job.com/all/co158644.html" title="上海恒信电脑软件有限公司">上海恒信电脑软件有限公司</a><em>企业搜索</em><label>2017-07-18 13:49</label></div>
                                <div class="h2"><p title="民营公司&nbsp;&nbsp;|&nbsp;&nbsp;少于50人&nbsp;&nbsp;|&nbsp;&nbsp;计算机软件">民营公司&nbsp;&nbsp;|&nbsp;&nbsp;少于50人&nbsp;&nbsp;|&nbsp;&nbsp;计算机软件</p><label><span>浏览(筛选中)：</span><span title="我的简历1">我的简历1</span></label></div>
                            </div>
                        </div>                    	                                     
            </div>
			
		</div>
        <div class="clear"></div>
<a href="#top" id="goTop" style="display: none;">回到<br>顶部</a>
<a href="http://i.51job.com/userset/advice.php?from=my51job" target="_blank" class="dw_fb">意见反馈</a>	</div>
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
</body>
</html>