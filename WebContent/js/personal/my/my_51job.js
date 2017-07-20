$(function(){
    //滑动
    $('.rview .pre').hide();
    var l1=820;
    $('.rview .pli').eq(0).animate({'background-positionX':'-13px'},200);
    var len=$('.rview .rli').length;
    var n=len*l1;
    $('.rview .rmsg').width(n);
    var j=len*15;
    $('.rview .page').width(j).css('margin-left',-j/2);
    $('.rview .pre').click(function(event) {
        $('.rview .rmsg').stop(false,true);
        var bleft=parseFloat($('.rview .rmsg').css('left'))+l1;
        if(bleft<=0){
            $('.rview .next').show();
            $('.rview .pli').animate({'background-positionX':'5px'},200);
            $('.rview .rmsg').animate({left: bleft});
            var on=-(bleft/l1);
            $('.rview .pli').eq(on).animate({'background-positionX':'-13px'},200);
            if(on==0){
                $('.rview .pre').hide();
            }
        }
    });
    $('.rview .next').click(function(event) {
        $('.rview .rmsg').stop(false,true);
        var bleft=parseFloat($('.rview .rmsg').css('left'))-l1;
        if((-bleft)<n){
            $('.rview .pre').show();
            $('.rview .pli').animate({'background-positionX':'5px'},200);
            $('.rview .rmsg').animate({left: bleft});
            var on=-(bleft/l1);
            if(on==(len-1)){
                $('.rview .next').hide();
            }
            $('.rview .pli').eq(on).animate({'background-positionX':'-13px'},200);
        }
    });
    $('.rview .rli').each(function(index, el) {
        var h=-$(el).children('.rcon').innerHeight()/2+6;
        $(el).children('.rcon').css('margin-top',h);
    });
    
    //上方黄条展示埋点
    if($('div.warn.w3').length > 0){
        manualTrackByEventType($('div.warn.w3').attr("event-type"));
    }
});

function edit(resume_id,addtype,DOMAIN_I)
{
    if(addtype == "9")
    {
        window.open(DOMAIN_I + "/paste_resume.php?lang=c&resumeid=" + resume_id + "&" + Math.random());
    }else{
        window.open(DOMAIN_I + "/standard_resume.php?lang=c&resumeid=" + resume_id + "&" + Math.random());
    }
}

function closetips(obj_id)
{
    $("#"+obj_id).hide();
}

function refresh_resume(ReSumeID,Lang,DOMAIN_MY)
{
    Refreshresume(ReSumeID,Lang,DOMAIN_MY);
    var mydate = new Date();
    var year = mydate.getFullYear();
    var month = mydate.getMonth()+1;
    var day = mydate.getDate();
    if(parseInt(month) < 10)
    {
        month = "0" + month;
    }
    if(parseInt(day) < 10)
    {
        day = "0" + day;
    }
    var date = year + "-" + month + "-" + day;
    $("#refreshdate_"+ReSumeID).html(date);
    if($("#layer_id").is(":visible"))
    {
        setTimeout("closerefresh()", 2000);
    }
}

function closerefresh()
{
    jQuery.FLayer.close(oLayerSettings);
    $("#longlogout").hide();
}

$(window).load(function()
{
    loadJobsRecommend();
});

function loadJobsRecommend()
{
    var url = 'http://i.51job.com/userset/ajax/getRecommendJob.php?jsoncallback=?';
    var jobareaValue = $("#jobarea").val();
    var lang = 'c';
    $.ajaxSettings.async = false;
    $.getJSON(url,{currentPage:1,number:5,jobareaCode:jobareaValue,langType:lang},function(data){ 
        if (data.rowcount > 0)
        {
            $("#jobs_recommend").show();
            $(".jobrecom").remove();
            createLogInData(data);
            $("#allRowcount").val(data.allRowCount);
            $("#nowpage").val("1");
        }
    });
}

function createLogInData(data)
{    
    var htm = "";
    for(var i=0;i<data.rowcount && i < 5;i++)
    {
        htm += '<div class="el jobrecom">\
                    <p class="t1">\
					    <span><a target="_blank" title="'+data.data[i]['cjobname']+'" href="'+data.data[i]['jobUrl']+'" onmousedown="">'+data.data[i]['cjobname']+'</a></span>\
                    </p>\
                    <span class="t2">\
						<a target="_blank" title="'+data.data[i]['cocname']+'" href="'+data.data[i]['coUrl']+'">\
								'+data.data[i]['cocname']+'\
						</a>\
					</span>\
                    <span class="t3">'+data.data[i]['jobareaname']+'</span>\
					<span class="t4">'+data.data[i]['salary']+'</span>\
					<span class="t5">'+(data.data[i]['issuedate']).substr(5,5)+'</span>\
			   </div>';
    }
    $("#discover").prepend(htm);
}

function updateResumeUpdateDate(updateDate)
{
    $("span[id^='refreshdate_']").text(updateDate);
}