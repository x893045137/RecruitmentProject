/*
*知己知彼权限验证
*
*/
function GetCompetition(oElement,jobid,resumeid){		
	var root_i = "http://i.51job.com";
	var action_url = root_i + "/userset/ajax/verify_competition.php?rand="+Math.random()+"&jsoncallback=?";
	$.getJSON( action_url, { jobid:jobid, resumeid:resumeid} , function(result){
		if(result.status == 0){//alert
			alert(result.content);
		}else if(result.status == 1){//pop
			var oLayerSettings = jQuery.FLayer.init();
			oLayerSettings['layer_after_close'] = function(){
				$(".layer_class, .layer_back_drop_class").remove();
			};
			jQuery.FLayer.setContent(oLayerSettings,result.content);
			jQuery.FLayer.open(oLayerSettings);
		}else if(result.status == 2){//jump
			var url = "";
			$(oElement).attr("target",'_blank');
			if(result.msg == 'no_login'){
				url = result.content + encodeURIComponent(window.location.href.indexOf('big5.51job.com') != -1 ? '':window.location.href);
				$(oElement).attr("target",'_self');
			}else if(result.msg == 'compus_competition' || result.msg == 'one_resume_finish' || result.msg == 'society'){
				url = result.content;
			}else{
				url = root_i + "/userset/my_51job.php?lang=c";
			}
			$(oElement).attr("href",url);
			$(oElement).removeAttr("onclick");
			var id = $(oElement).attr("id");
			document.getElementById(id).click();
		}
	});
	
	
}