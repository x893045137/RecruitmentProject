function needLogin()
{
    var refer = '?url=' + encodeURIComponent(window.location);
    window.location.href = window.cfg.domain.login + '/login.php' + refer;
}

function systemError()
{//需要弹层js支持
    sHtml = '<div class="panel_lnp panel_py">'
        + '<h2>'
        + '<p>提示</p>'
        + '<a class="layer_close" href="javascript:void(0)"><i></i></a>'
        + '</h2>'
        + '<div class="pannel_con">'
        + '<div class="gp2">'
        + '<p class="wd center c_666">'
        + '系统繁忙，请稍后重试'
        + '</p>'
        + '</div>';
        + '</div>'
        + '</div>';
    oLayerSettings = jQuery.FLayer.init();
    jQuery.FLayer.setContent(oLayerSettings,sHtml);
    jQuery.FLayer.open(oLayerSettings);
}

function strlength(str)
{
    return str.replace(/[^\x00-\xff]/gi,'xx').length;
}

function jump_page()
{
	var p = document.getElementById('jump_page').value;
	var protocol 	= 	window.location.protocol;
	var host 		= 	window.location.host;
	var pathname 	= 	window.location.pathname;
	var url = protocol+'//'+host+pathname;

    var tmp = window.location.search.substr(1).split('&');
    var sParam = '';
    if (tmp != '')
    {
        $.each(tmp, function(k,v){
            v = v.split("=");
            var key = v[0];
            var value = v[1];
            if (key != 'page')
            {
                sParam += '&' + key + '=' + value;
            }
        });
    }

    window.location = url +'?page=' + p + sParam;
}

function tipPopForm(p_sId, p_sTitle, p_sContent, p_callback)
{
    var sHtml = '<div id="'+ p_sId +'" class="panel_lnp panel_py">' +
        '<h2>' +
        '<p>'+ p_sTitle +'</p>' +
        '<a class="layer_close" href="javascript:void(0);"><i></i></a>' +
        '</h2>' +
        '<div class="pannel_con">' +
        '<div class="gp3">' +
        '<strong class="wd f16 center c_orange">' + p_sContent +
        '</strong>'+
        '</div>'+
        '</div>' +
        '</div>';
    var oLayerSettings = jQuery.FLayer.init();

    var iTimeoutId = setTimeout('$("#'+ p_sId +'").find(".layer_close").click();', 2000);

    if (typeof(p_callback) == 'function') {
        oLayerSettings['layer_after_close'] = function(){
            clearTimeout(iTimeoutId);
            p_callback();
        };
    }
    jQuery.FLayer.setContent(oLayerSettings,sHtml);
    jQuery.FLayer.open(oLayerSettings);
}

function failTipPopForm(p_sId, p_sTitle, p_sContent, p_callback)
{
    var sHtml = '<div id="'+ p_sId +'" class="panel_lnp panel_py">' +
        '<h2>' +
        '<p>'+ p_sTitle +'</p>' +
        '<a class="layer_close" href="javascript:void(0);"><i></i></a>' +
        '</h2>' +
        '<div class="pannel_con">' +
        '<div class="gp3">' +
        '<p class="wd center c_666">'+
        p_sContent +
        '</p>'+
        '</div>'+
        '</div>' +
        '</div>';
    var oLayerSettings = jQuery.FLayer.init();

    if (typeof(p_callback) == 'function') {
        oLayerSettings['layer_after_close'] = function(){
            p_callback();
        };
    }
    jQuery.FLayer.setContent(oLayerSettings,sHtml);
    jQuery.FLayer.open(oLayerSettings);
}

function confirmPopForm(p_sId, p_sTitle, p_sContent, p_yesAction)
{
    var sHtml = '<div id="'+ p_sId +'" class="panel_lnp panel_py">' +
        '<h2>' +
        '<p>'+ p_sTitle +'</p>' +
        '<a class="layer_close" href="javascript:void(0);"><i></i></a>'+
        '</h2>'+
        '<div class="pannel_con">'+
        '<div class="gp2">'+
        '<p class="wd center c_666">'+
        p_sContent +
        '</p>'+
        '</div>'+
        '</div>'+
        '<div class="but_box b2">' +
        '<span class="p_but" id="popYes">确定</span><span class="p_but gray" id="popNo">取消</span>'+
        '</div>'+
        '</div>';
    var oLayerSettings = jQuery.FLayer.init();
    jQuery.FLayer.setContent(oLayerSettings,sHtml);
    jQuery.FLayer.open(oLayerSettings);

    $('#popYes').click(function() {
        if (typeof(p_yesAction) == 'function') {
            $('#' + p_sId).find('.layer_close').click();
            p_yesAction();
        }
    });

    $('#popNo').click(function() {
        $('#' + p_sId).find('.layer_close').click();
    });
}

function closeAllFloatDiv()
{
    var p_oJqueryOn = arguments[0] ? arguments[0] : "";
    var p_oJqueryIndex = arguments[1] ? arguments[1] : "";
    var p_oJqueryAssoInput = arguments[2] ? arguments[2] : "";
    $("div[float-on='true']").not(p_oJqueryOn).each(function(){
        $(this).removeClass("on");
        $(this).attr("float-on", "false");
        $(this).removeClass("focusinput");
    });
    $("div[float-on='false']").not(p_oJqueryOn).each(function(){
        $(this).removeClass("focusinput");
    });

    $("div[float-index='true']").not(p_oJqueryIndex).each(function(){
        $(this).css("z-index", "0");
        $(this).attr("float-index", "false");
    });
    $("div[layer_float_on='true']").each(function(){
        $(this).css("display", "none");
        $(this).attr("layer_float_on", "false");
    });
    $("input[pre_code='']").val("");

    $('.flboxwp,.ln,.c,.box,.l,.e,.clearfix').css("z-index", "");
    $('.hpBox').removeClass("on").parents('.c,.box,.top_wrap,.wrap,.cup').css("z-index", "");
}

function checkSalary(p_sStr)
{
    if(isNaN(p_sStr) || (p_sStr.indexOf(".") > 1 && p_sStr.substr(0, 1) == "0") || $.trim(p_sStr).length > 6 || Number(p_sStr) > 999.99 || (p_sStr.indexOf(".") > -1 && p_sStr.indexOf(".") <  $.trim(p_sStr).length - 3) || p_sStr.indexOf(".") == -1 && p_sStr.substr(0, 1) == "0" && p_sStr != "0"|| Number(p_sStr) < 0 || p_sStr.substr(0, 1) == "+")
    {
        return false;
    }
    return true;
}

//勾选普通checkbox
function checkBoxConnect(sInputStr, oThis)
{
    var sThisStr = arguments[2] || '';
    oThis = sThisStr == '' ? oThis : sThisStr;
    if($(oThis).hasClass("on"))
    {
        $(sInputStr).attr("checked", false);
        $(oThis).removeClass("on");
    }
    else
    {
        $(sInputStr).attr("checked", true);
        $(oThis).addClass("on");
    }
}

function manualTrackByEventType(sEventType)
{
    if("undefined" != typeof manualTrack)
    {
        var trackChangeParams = {
            eventType: sEventType
        };
        manualTrack("manualTrack", trackChangeParams);
    }
}

$(document).ready(function(){
    //是否显示回到顶部
    $(window).scroll(function(){
        if($(window).scrollTop() > 100){
            $("#goTop").css("display","inline");
        }else if($(window).scrollTop() <= 100){
            $("#goTop").css("display","none");
        }
    });
	/*知己知彼进度条*/
	$(".pgs").each(function(){
		var dw=$(this).width()*$(this).attr("data-pregass")*0.01;
		$(this).children(".bar").css("width", dw);
	});
	/*展开收起*/
	$('.stati .item').each(function(index, el) {
		$(this).find('.view').click(function(event) {
			if($(this).hasClass('on')){
				$(this).html('展开').removeClass('on').next('ul').css({
					'height':'155px',
					'overflow':'hidden'
				});
			}else{
				$(this).html('收起').addClass('on').next('ul').css({
					'height':'auto',
					'overflow':'visible'
				});
			}
		});
	});
	
});