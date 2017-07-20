/**
 * Created by linton.cao on 2017/2/21.
 */
function ajaxFailResult(p_iResult)
{
    if (p_iResult == 1)
    {
        //nothing
    }
    else if (p_iResult == 2)
    {
        //复制失败
        failTipPopForm('tipForm', '提示', '很抱歉，复制简历失败！');
    }
    else if (p_iResult == 3)
    {
        //删除失败
        failTipPopForm('tipForm', '提示', '很抱歉，删除简历失败！');
    }
    else if (p_iResult == 4)
    {
        //粘贴简历不可复制
        failTipPopForm('tipForm', '提示', '最多创建1份粘贴简历！');
    }
    else if (p_iResult == 5)
    {
        //最多三份简历
        failTipPopForm('tipForm', '提示', '最多创建3份标准简历！');
    }
    else if (p_iResult == 6)
    {
        //求职信长度过长
        failTipPopForm('tipForm', '提示', '标题或内容过长！');
    }
    else if (p_iResult == 7)
    {
        //最多创建10份求职信
        failTipPopForm('tipForm', '提示', '最多创建10份求职信！');
    }
    else if (p_iResult == 8)
    {
        //添加求职信失败
        failTipPopForm('tipForm', '提示', '很抱歉，添加求职信失败！');
    }
    else if (p_iResult == 9)
    {
        //修改求职信失败
        failTipPopForm('tipForm', '提示', '很抱歉，修改求职信失败！');
    }
    else if (p_iResult == 10)
    {
        //复制求职信失败
        failTipPopForm('tipForm', '提示', '很抱歉，复制求职信失败！');
    }
    else if (p_iResult == 11)
    {
        //删除求职信失败
        failTipPopForm('tipForm', '提示', '很抱歉，删除求职信失败！');
    }
    else if (p_iResult == 12)
    {
        //复制简历名称过长
        $("div[id^='copy_']").find(".err").text('简历名不能超过50个字符').show();
        $('#rsmname').focus();
    }
    else if (p_iResult == 13)
    {
        //快速投递失败
        failTipPopForm('tipForm', '提示', '很抱歉，快速投递设置失败！');
    }
    else if (p_iResult == 14)
    {
        //复制简历简历名重名
        $("div[id^='copy_']").find(".err").text('简历名称已存在').show();
        $('#rsmname').focus();
    }
    else if (p_iResult == 15)
    {
        //简历名为空
        $("div[id^='copy_']").find(".err").text('请填写简历名称').show();
        $('#rsmname').focus();
    }
    else if (p_iResult == 'needlogin')
    {
        needLogin();
    }
    else if (p_iResult == 'notowner')
    {
        needLogin();
    }
    else
    {
        needLogin();
    }
}

//快速投递ajax
function setQuickPost(p_iResumeId, p_iCoverId, p_sOnOff, p_callback)
{
    if (!p_iResumeId) p_iResumeId = '';
    if (!p_iCoverId)  p_iCoverId = '';
    if(p_iResumeId == '' && p_iCoverId == '')
    {
        return false;
    }
    else
    {
        $.getJSON(
            'http://i.51job.com/resume/ajax/setquickpost.php?rand=' + Math.random(),
            {'resumeid':p_iResumeId,'coverid':p_iCoverId,'onoff':p_sOnOff},
            function (result)
            {
                if (result.status == '1')
                {
                    if (typeof(p_callback) == 'function')
                    {
                        p_callback();
                    }
                }
                else
                {
                    ajaxFailResult(result.result);
                }
            }
        );
    }
}

/**简历**/
//简历公开度ajax
function setOpenness(p_iResumeId, p_iOpenStatus, p_callback)
{
    $.getJSON(
        'http://i.51job.com/resume/ajax/resume_openness.php?rand=' + Math.random(),
        {'resumeid':p_iResumeId,'openstatus':p_iOpenStatus},
        function (result)
        {
            if (result.status == '1')
            {
                if (typeof(p_callback) == 'function')
                {
                    p_callback();
                }
            }
            else
            {
                ajaxFailResult(result.result);
            }
        }
    );
}

//简历复制
function copyResume(p_iResumeId, p_iResumeType)
{
    var data = {};
    var resume = $('#copy_' + p_iResumeId);

    if ($.trim($('#rsmname').val()) == '')
    {
        resume.find(".err").text("请填写简历名称").show();
        $('#rsmname').focus();
        return false;
    }
    else
    {
        if (strlength($.trim($('#rsmname').val())) > 50)
        {
            resume.find(".err").text('简历名不能超过50个字符').show();
            $('#rsmname').focus();
            return false;
        }
        else
        {
            data['rsmname'] = $('#rsmname').val();
        }
    }

    //复制信息打钩
    var checkBox = resume.find('input:checkbox');
    checkBox.each(function() {
        var key = $(this).attr('id');
        if ($(this).is(':checked'))
        {
            data[key] = 1;
        }
        else
        {
            data[key] = 0;
        }
    });

    $.getJSON(
        'http://i.51job.com/resume/ajax/resume_action.php?rand=' + Math.random(),
        {data:data,action:'copy',resumeid:p_iResumeId},
        function (result)
        {
            if(result.status == 1)
            {
                tipPopForm('copysuccess', '提示', '恭喜你，简历复制成功！', function(){
                    window.location.reload();
                });
            }
            else
            {
                ajaxFailResult(result.result);
            }
        }
    );
}

$(function() {
    var pasteCnt = 0;
    var normalCnt = 0;
    $('input[name=resumetype]').each(function(){
        if ($(this).val() == '9')
        {
            pasteCnt += 1;
        }
        else
        {
            normalCnt += 1;
        }
    });

    //创建简历按钮
    $('#createResume').click(function() {
        if (normalCnt >= 3)
        {
            failTipPopForm('tipForm', '提示', '最多创建3份标准简历！');
        }
        else
        {
            location.href = "http://i.51job.com/resume/standard_resume.php?lang=c";
        }
    });
    $('#createPaste').click(function() {
        if (pasteCnt >= 1)
        {
            failTipPopForm('tipForm', '提示', '最多创建1份粘贴简历！');
        }
        else
        {
            location.href = "http://i.51job.com/resume/paste_resume.php?lang=c";
        }
    });

    $('#emptyCreateResume').click(function(){
        location.href = "http://i.51job.com/resume/standard_resume.php?lang=c";
    });

    $("div[id^='resume_']").each(function (){
        var $this = $(this);
        var resumeId = $this.attr('id');
        resumeId = resumeId.substring(7, resumeId.length);
        var resumetype = $this.find('input[name=resumetype]').val();

        //公开程度下拉关闭
        $(document).click(function (){
            if ($this.hasClass('ek'))
            {
                $this.removeClass('ek');
            }
        });
        //公开程度下拉打开
        var seltBtn = $this.find('.selt');
        seltBtn.click(function (event){
            $this.toggleClass('ek');
            $this.siblings().removeClass('ek');
            event.stopPropagation();
        });
        //公开程度列表单击
        var seltBtnList = seltBtn.find('.ul>span');
        seltBtnList.click(function() {
            if ($(this).attr('value') != seltBtn.find('span:first').attr('value'))
            {
                //公开度ajax
                var tmpthis = $(this);
                setOpenness(resumeId, tmpthis.attr('value'), function(){
                    seltBtnList.removeClass('on');
                    // tmpthis.addClass('on');
                    seltBtn.find('span:first').text(tmpthis.text()).attr('value',tmpthis.attr('value'));
                    //公开的简历去重
                    if (tmpthis.attr('value') == '0')
                    {
                        $this.siblings().find('.selt').each(function(){
                            if ($(this).find('span:first').attr('value') == '0')
                            {
                                $(this).find('span:first').attr('value','2');
                                $(this).find('span:first').text($(this).find('.ul>span:eq(1)').text());
                                // $(this).find('.ul>span:eq(1)').addClass('on');
                                $(this).find('.ul>span:eq(0)').removeClass('on');
                            }
                        });
                    }
                })
            }
        });
        //快速投递按钮
        var quickBtn = $this.find('.l2:eq(1)>em');
        quickBtn.click(function (){
            var sOnOff = 'off';
            if (quickBtn.hasClass("off"))
            {
                sOnOff = 'on';
            }
            setQuickPost(resumeId, '', sOnOff,function(){
                quickBtn.toggleClass('off open');
                $this.siblings().find('.l2:eq(1)>em.open').toggleClass('open off');
            });
        });

        //复制简历按钮
        var copyBtn = $this.find('.l3>a:eq(1)');
        copyBtn.click(function(){
            $.getJSON(
                'http://i.51job.com/resume/ajax/resume_action.php?rand=' + Math.random(),
                {action:'getcopy',resumeid:resumeId},
                function (result)
                {
                    if(result.status == 1)
                    {
                        var resumeTmpName = [];
                        $("div[id^='resume_']").find('.l1>a').each(function (){
                            resumeTmpName.push($(this).text());
                        });

                        var initResumeName = '';
                        for (var i=1;i<4;i++)
                        {
                            if ($.inArray('我的简历' + i, resumeTmpName) == -1)
                            {
                                initResumeName = '我的简历' + i;
                                break;
                            }
                        }

                        //非粘贴简历
                        var sHtml = '<div id="copy_'+ resumeId +'" class="panel_lnp panel_py">' +
                            '<h2>' +
                            '<p>简历复制</p>' +
                            '<a class="layer_close" href="javascript:void(0);"><i></i></a>' +
                            '</h2>'+
                            '<div class="pannel_con">'+
                            '<div class="gp4">'+
                            '<div class="search">'+
                            '<input type="text" id="rsmname" maxlength="50" value="'+ initResumeName +'" placeholder="请填写简历名称"/>'+
                            '<span class="err" style="display: none;"></span>' +
                            '</div>'+
                            '<div class="panel_box clearfix">'+
                            '<span class="c_999">请选择要复制的简历内容：</span>'+
                            '<br/>'+
                            '<span class="rdbox c_333"><em class="check mk"></em><input type="checkbox" id="base" checked disabled="true" style="display:none">基本信息</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#edu\',\'\',\'#edu_em\')"><em class="check on" id="edu_em"></em><input type="checkbox" checked id="edu" style="display:none">教育经历</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#intention\',\'\',\'#intention_em\')"><em class="check on" id="intention_em"></em><input type="checkbox" checked id="intention" style="display:none">求职意向</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#student\',\'\',\'#student_em\')"><em class="check on" id="student_em"></em><input type="checkbox" checked id="student" style="display:none">在校情况</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#work\',\'\',\'#work_em\')"><em class="check on" id="work_em"></em><input type="checkbox" checked id="work" style="display:none">工作经验</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#skills\',\'\',\'#skills_em\')"><em class="check on" id="skills_em"></em><input type="checkbox" checked id="skills" style="display:none">技能特长</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#project\',\'\',\'#project_em\')"><em class="check on" id="project_em"></em><input type="checkbox" checked id="project" style="display:none">项目经验</span>'+
                            '<span class="rdbox c_333" onclick="checkBoxConnect(\'#addition\',\'\',\'#addition_em\')"><em class="check on" id="addition_em"></em><input type="checkbox" checked id="addition" style="display:none">附加信息</span>'+
                            '</div>'+
                            '</div>'+
                            '</div>'+
                            '<div class="but_box b2">'+
                            '<span class="p_but" onclick="copyResume('+ resumeId +')">确定</span>'+
                            '</div>'+
                            '</div>';
                        var oLayerSettings = jQuery.FLayer.init();
                        jQuery.FLayer.setContent(oLayerSettings,sHtml);
                        jQuery.FLayer.open(oLayerSettings);

                        $("#rsmname").keyup(function(){
                            $("#copy_" + resumeId).find(".err").hide();
                        });
                    }
                    else
                    {
                        ajaxFailResult(result.result);
                    }
                }
            );
        });

        //删除简历
        var removeBtn = $this.find('.l3>a:eq(2)');
        removeBtn.click(function(){
            var alertInfo = '';
            if ($("div[id^='resume_']").length > 1)
            {
                $.getJSON(
                    'http://i.51job.com/payservice/ajax/verify_result.php?rand=' + Math.random() + '&jsoncallback=?',
                    {resumeid:resumeId},
                    function (result)
                    {
                        if (result.status == 1 && result.result == 3)
                        {
                            alertInfo = '你的简历中附有通过认证的诚信报告，一旦删除将无法恢复。<br>请问你确认删除吗？';
                        }
                        else
                        {
                            alertInfo = '确定删除这份简历吗？';
                        }
                        confirmPopForm('delete_' + resumeId, '提示', alertInfo, function () {
                            $.getJSON(
                                'http://i.51job.com/resume/ajax/resume_action.php?rand=' + Math.random(),
                                {resumeid: resumeId, action: 'delete'},
                                function (result) {
                                    if (result.status == 1)
                                    {
                                        window.location.reload();
                                    }
                                    else
                                    {
                                        ajaxFailResult(result.result);
                                    }
                                }
                            );
                        });
                    }
                );
            }
            else
            {
                failTipPopForm('tipForm', '提示', '对不起，目前你只有一份简历了，不能进行删除操作！');
            }
        });
    });
});


/**求职信**/
function editCVLetter(p_iCoverId)
{
    cvLetterAction(p_iCoverId,'getedit');
}

function createCVLetter()
{
    if ($("div[id^='cover_']").length >= 10)
    {
        failTipPopForm('tipForm', '提示', '最多创建10份求职信！');
    }
    else
    {
        cvLetterForm('create');
    }
}

function deleteCVLetter(p_iCoverId, p_bIsQuick)
{
    var str = "确定删除此求职信吗？";
    if (p_bIsQuick == true)
    {
        str = "该求职信已被你设置成默认发送的求职信,是否继续删除？";
    }

    confirmPopForm('delete_' + p_iCoverId, '提示', str,function(){
        cvLetterAction(p_iCoverId, 'delete');
    });
}

function copyCVLetter(p_iCoverId)
{
    if ($("div[id^='cover_']").length >= 10)
    {
        failTipPopForm('tipForm', '提示', '最多创建10份求职信！');
    }
    else
    {
        confirmPopForm('copy_' + p_iCoverId, '提示', "确定要复制此求职信吗？",function(){
            cvLetterAction(p_iCoverId, 'copy');
        });
    }
}

//求职信增删改ajax请求
function cvLetterAction(p_iCoverId, p_action)
{
    if (!p_iCoverId) p_iCoverId = '';
    $.post(
        'http://i.51job.com/resume/ajax/cvletter.php?rand=' + Math.random(),
        {coverid:p_iCoverId,action:p_action,title: $.trim($('#title').val()),content:$.trim($('#content').val())},
        function (result)
        {
            if(result.status == 1)
            {
                if (p_action == 'getedit')
                {
                    cvLetterForm('edit', result.title, result.content, p_iCoverId)
                }
                else if(p_action == 'copy')
                {
                    tipPopForm('copysuccess', '提示', '求职信复制成功！', function(){
                        window.location.reload();
                    });
                }
                else
                {
                    window.location.reload();
                }
            }
            else
            {
                ajaxFailResult(result.result);
            }
        },
        'json'
    );
}

function checkLetterCnt()
{
    var contentCNT = strlength($.trim($('#content').val()));
    if (contentCNT > 4000)
    {
        $('#content_err').text('求职信内容超长。请控制在2000个中文字以内。');
        $('.cunt').addClass('c_orange');
    }
    else
    {
        $('#content_err').text('').hide();
        $('.cunt').removeClass('c_orange');
    }

    $('.cunt').text(Math.round(contentCNT/2) + '/2000字');
}

function checkTitleCnt()
{
    var titleCNT = strlength($.trim($('#title').val()));
    if (titleCNT > 30)
    {
        $('#title_err').text('求职信标题超长。请控制在15个中文字以内。').show();
    }
    else
    {
        $('#title_err').text('').hide();
    }
}

//创建求职信窗体并绑定事件
function cvLetterForm(p_sAction, p_sTitle, p_sContent, p_iCoverId)
{
    if (!p_sTitle) p_sTitle = '';
    if (!p_sContent) p_sContent = '';
    if (!p_iCoverId) p_iCoverId = '';
    var initCNT = Math.round(strlength(p_sContent)/2);
    var sHtml = '<div id="cvLetterForm" class="panel_lnp panel_py panel_ct4 Fm">' +
        '<h2>' +
        '<p>编辑求职信</p>' +
        '<a class="layer_close" href="javascript:void(0);"><i></i></a>' +
        '</h2>' +
        '<div class="pannel_con">'+
        '<div class="gp4">'+
        '<div class="panel_box clearfix">'+
        '<div class="c">'+
        '<label>求职信名称<em>*</em></label>'+
        '<div class="txt">'+
        '<input class="ef c_333" type="text" maxlength="30" onkeyup="checkTitleCnt();" id="title" value="'+ p_sTitle +'">'+
        '</div>'+
        '<span class="err" id="title_err" style="display: none;"></span>'+
        '</div>'+
        '<div class="c c4">'+
        '<label>自我评价<em>*</em></label>'+
        '<div class="textarea">'+
        '<textarea class="clb" id="content" onkeyup="checkLetterCnt();">'+ p_sContent +'</textarea>'+
        '</div>'+
        '<div class="tbtm">'+
        '<p class="wlst">'+
        '<a class="a" id="sample_cvletter" href="javascript:void(0);">查看示例</a>'+
        '</p>'+
        '<p class="cunt">' + initCNT + '/2000字</p>'+
        '</div>'+
        '<span class="err" id="content_err" style="display: none;"></span>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '</div>'+
        '<div class="but_box b2">'+
        '<span class="p_but">保存</span><span class="p_but gray">取消</span>'+
        '</div>'+
        '</div>';
    var oLayerSettings = jQuery.FLayer.init();
    jQuery.FLayer.setContent(oLayerSettings,sHtml);
    jQuery.FLayer.open(oLayerSettings);


    var cvLetterForm = $('#cvLetterForm');
    cvLetterForm.find('.p_but:eq(1)').click(function() {
        cvLetterForm.find('.layer_close').click();
    });
    //保存按钮
    cvLetterForm.find('.p_but:eq(0)').click(function() {
        var titleflag = true;
        var contentflag = true;
        if($.trim($('#content').val()) == '')
        {
            contentflag = false;
            $('#content_err').text('请填写内容');
        }

        if($.trim($('#title').val()) == '')
        {
            titleflag = false;
            $('#title_err').text('请填写标题');
        }

        //标题字数
        var titleCNT = strlength($.trim($('#title').val()));
        if (titleCNT > 30)
        {
            titleflag = false;
            $('#title_err').text('求职信标题超长。请控制在15个中文字以内。');
        }

        //内容字数
        var contentCNT = strlength($.trim($('#content').val()));
        if (contentCNT > 4000)
        {
            contentflag = false;
            $('#content_err').text('求职信内容超长。请控制在2000个中文字以内。');
            $('.cunt').addClass('c_orange');
        }
        else
        {
            $('.cunt').removeClass('c_orange');
        }

        $('.cunt').text(Math.round(contentCNT/2) + '/2000字');

        if (contentflag)
        {
            $('#content_err').text('').hide();
        }
        else
        {
            $('#content').focus();
            $('#content_err').show().focus();
        }

        if (titleflag)
        {
            $('#title_err').text('').hide();
        }
        else
        {
            $('#title').focus();
            $('#title_err').show();
        }

        if (titleflag && contentflag)
        {
            if (p_sAction == 'edit')
            {
                cvLetterAction(p_iCoverId , 'edit');
            }
            else
            {
                cvLetterAction('', 'create');
            }
        }
    });

    //查看示例按钮
    cvLetterForm.find('#sample_cvletter').click(function() {
        window.open("http://i.51job.com/resume/sample.php?module=qzx&lang=c");
    });
}

$(function(){
    //求职信相关
    $("div[id^='cover_']").each(function (){
        var $this = $(this);
        var coverId = $this.attr('id');
        coverId = coverId.substring(6, coverId.length);

        //快速投递按钮
        var quickBtn = $this.find('.l2:eq(2)>em');
        quickBtn.click(function (){
            var sOnOff = 'off';
            if (quickBtn.hasClass("off"))
            {
                sOnOff = 'on';
            }
            setQuickPost('', coverId, sOnOff, function(){
                quickBtn.toggleClass('off open');
                $this.siblings().find('.l2:eq(2)>em.open').toggleClass('open off');
            });
        });

        //求职信名称点击
        var cvLetterName = $this.find('.l1>a:eq(0)');
        cvLetterName.click(function (){
            editCVLetter(coverId);
        });

        //编辑
        var editBtn = $this.find('.l3>a:eq(0)');
        editBtn.click(function() {
            editCVLetter(coverId);
        });

        //复制
        var copyBtn = $this.find('.l3>a:eq(1)');
        copyBtn.click(function() {
            copyCVLetter(coverId);
        });

        var removeBtn = $this.find('.l3>a:eq(2)');
        //删除
        removeBtn.click(function() {
            var bIsQuick = false;
            if (quickBtn.hasClass('open'))
            {
                bIsQuick = true;
            }
            deleteCVLetter(coverId, bIsQuick);
        });
    });
});




