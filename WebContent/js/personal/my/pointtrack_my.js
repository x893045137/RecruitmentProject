var trackPoints = {
    'trackButtonClick': {
        trackType: '1',
        elementsStr: "[track-type='trackButtonClick']",
        paramsRank: ["logCode", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: ''
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['pageCode'] = $("#pageCode").val();
            params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid;
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['eventType'] = $(e).attr('event-type');
            params['logTime'] = new Date().getTime() + d_system_client_time;
            return params;
        }
    },
    'trackIndexClick': {
        trackType: '1',
        elementsStr: "[track-type='trackIndexClick']",
        paramsRank: ["logCode", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: ''
        },
        dealParamsBeforeEvent: function(params){
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['pageCode'] = '11203';//特殊点，必须记录在my51job下
            params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid;
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['eventType'] = $(e).attr('event-type');
            params['logTime'] = new Date().getTime() + d_system_client_time;
            return params;
        }
    },
    'manualTrack': {
        trackType: '3',
        elementsStr: '',
        paramsRank: ["logCode", "webId", "version", "logTime", "ip", "guid", "domain", "pageCode", "eventType","traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            version: "1",
            domain: 'i.51job.com',
            traceName: ''
        },
        dealParamsBeforeEvent: function(params){
            params['logTime'] = new Date().getTime() + d_system_client_time;
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['pageCode'] = $("#pageCode").val();
            params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid;
            
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['logTime'] = new Date().getTime() + d_system_client_time;
            return params;
        }
    },
    'trackTriresumeClick': {
        trackType: '3',
        elementsStr: '',
        paramsRank: ["logCode", "webId", "ip", "guid", "domain", "eventType", "pageCode", "traceName", "cusParam"],
        params: {
            logCode: "81",
            webId: "2",
            domain: "i.51job.com",
            pageCode: 19999,
            traceName: "",
        },
        dealParamsBeforeEvent: function(params){
            params['logTime'] = new Date().getTime() + d_system_client_time;
            params['ip'] = trackConfig.ip;
            params['guid'] = trackConfig.guid;
            params['accountId'] = trackConfig.accountid;
            params['eventType'] = $('#event-type').val();
            switch (trackConfig.refpage) {
                case '/resume/standard_resume.php':
                    params['guideSource'] = 1;
                    break;
                case '':
                    params['guideSource'] = 2;
                    break;
                case '/jobsearch/search_result.php':
                case '/userset/user_discover.php':
                    params['guideSource'] = 3;
                    break;
                case '/':
                    params['guideSource'] = 5;
                    break;
                case '/userset/my_51job.php':
                    params['guideSource'] = 6;
                    break;
                case '/userset/resume_browsed.php':
                    params['guideSource'] = 7;
                    break;
                case '/payservice/my_service.php':
                    params['guideSource'] = 9;
                    break;
                default:
                    params['guideSource'] = 3;
                    break;
            }
            if (trackConfig.refpage.indexOf(".html")!= -1)
            {
                params['guideSource'] = 3;
            }
            
            if ($('#event-type').val() == "3" || $('#event-type').val() == "4")
            {
                params['guideSource'] = "";
            }
            var str = new Array;
            $('.error:visible').each(function(i,n){str.push($(this).siblings("label").text().replace("*", "")+"："+$(this).text());});
            if (str.length>0)
            {
                params['paramInfo'] = "1" + String.fromCharCode(22) + str.join('|');
            }else{
                params['paramInfo'] = "";
            }
            
			
			params['cusParam'] = "1" + String.fromCharCode(22) + trackConfig.accountid + String.fromCharCode(22) + "1" + String.fromCharCode(22) + String.fromCharCode(22) + params['guideSource'] + String.fromCharCode(22) + params['paramInfo'] + String.fromCharCode(22) + $('#registertype').val();
			
            return params;
        },
        dealParamsAfterEvent: function(params, e){
            params['logTime'] = new Date().getTime() + d_system_client_time;
            return params;
        }
    }
}