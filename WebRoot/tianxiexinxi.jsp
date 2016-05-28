<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>完善资料 -拍拍贷-中国首家，最大、最多人使用的互联网金融P2P网络借贷平台。提供小额贷款,短期贷款,个人贷款,自定利率,借期灵活。您还可以成为借出人理财投资,超低门槛，获得高年收益率回报</title>
    <meta name="description" content="拍拍贷，中国首家，最大、最多人使用的互联网金融P2P(人人贷)网络借贷平台。提供小额贷款,短期贷款,个人贷款,抵押,无抵押贷款服务。利率自定,借期灵活。您还可以成为借出人理财借贷投资，获得高年收益率回报，超低门槛，超高收益。作为可信赖的投融资,理财,贷款,信贷平台,拍拍贷助您财富实现增值">
    <meta name="keywords" content="网络贷款,民间借贷,小额贷款,无抵押贷款,信用贷款,网络借贷,借贷平台,拍拍贷,人人贷,投资理财,个人理财,p2p贷款,贷款,互联网金融,投融资">
    <link rel="stylesheet" type="text/css" href="tianxiexinxi_files/basic.css">
    <link rel="stylesheet" type="text/css" href="tianxiexinxi_files/layout.css">
    <link href="tianxiexinxi_files/validation-min.css" rel="stylesheet">
    <link rel="shortcut icon" href="http://www.ppdaicdn.com/favicon.ico" type="image/x-icon">
    <script src="tianxiexinxi_files/v.htm" charset="utf-8"></script><script src="tianxiexinxi_files/hm.js"></script><script src="tianxiexinxi_files/analytics.js" async=""></script><script src="tianxiexinxi_files/gtm.js" async=""></script><script src="tianxiexinxi_files/newRefer.js"></script>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faab1030ecb68cd7b5c613bd7a5127a40' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="tianxiexinxi_files/h.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="tianxiexinxi_files/firstborrow.css">

<script src="tianxiexinxi_files/jquery_002.js" type="text/javascript"></script>
<script src="tianxiexinxi_files/ppd_pop.js" type="text/javascript"></script>
<script src="tianxiexinxi_files/hubs" type="text/javascript"></script>
<script src="tianxiexinxi_files/acstatus_hub.js" type="text/javascript"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/chinaprovinces_0.2.1.js"></script>
 </head>
<body>
    <div class="top PPD_header_nav">
        <div class="top_inner w1188center clearfix PPD_login_status top"><div class="top_inner w1000center clearfix"><div class="mobileappdownload"><a href="http://www.ppdai.com/landingappdownload.html" target="_blank">下载手机客户端</a></div><ul class="top_toolNav"><li><span>Hi,</span></li><li class="hasStatusArrow"><a href="http://www.ppdai.com/user/pdu71278452">pdu71278452</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://pay.ppdai.com/order/online?from=acstatus">充值</a><a href="http://pay.ppdai.com/trade/cashwithdrawal?from=acstatus">提现</a></div></li><li class="ml08" style="margin-left:0"><a href="https://ac.ppdai.com/user/logout" class="fz14">[退出]</a></li><li class="ml08"><a href="http://msg.ppdai.com/Message" class="fz14 ac_status_msg2014">消息(2)</a></li><li class="hasStatusArrow"><a href="http://help.ppdai.com/" class="fz14">帮助</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://www.ppdai.com/consult">客服</a><a href="http://group.ppdai.com/">论坛</a></div></li></ul></div></div>
    </div>

    <div class="mainNav">
        <div class="mainNav_inner w1000center clearfix">
            <h1 class="logo">
                <a href="http://www.ppdai.com/">
                    <img src="tianxiexinxi_files/logo.png" alt=""></a>
            </h1>
            <ul id="tabIcon">
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/lend" category="Lend">我要投资</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/lend">我要投资</a>
                        <a href="http://www.ppdai.com/product/plan/rainbow">彩虹计划</a>
                        <a href="http://www.ppdai.com/debtdeal/AlldebtList/DebtList">债权交易</a>
                        <a href="http://www.ppdai.com/howtolend">如何投资</a>
                        <a href="http://www.ppdai.com/help/principalprotection">本金保障</a>
                    </div>
                </li>
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/borrow" category="Borrow">我要借款</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/borrow">我要借款</a>
                        <a href="http://www.ppdai.com/help/howtoborrow">如何借款</a>
                        <a href="http://www.ppdai.com/borrow/interestcalculate">利息计算器</a>
                    </div>
                </li>
                <li class="hasSubMenu"><a href="http://www.ppdai.com/account" category="Account">我的账户</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/account/borrow">借款账户</a>
                        <a href="http://www.ppdai.com/account/lend">投资账户</a>
                    </div>
                </li>
                <li class="hasSubMenu"><a href="http://www.ppdai.com/help/aboutus" category="About">关于拍拍贷</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/help/aboutus">关于我们</a>
                        <a href="http://www.ppdai.com/help/howworks">工作原理</a>
                        <a href="http://www.ppdai.com/help/fees">资费说明</a>
                            <a href="http://www.ppdai.com/job">招贤纳士</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    


<div class="main">
    <div class="clearfix">
        <ul class="breadcrumb">
            <li>首页 &gt;</li>
            <li>我的借款</li>
        </ul>
    </div>

    <form method="post" id="firstborrow" action="userinfo/addUserinfo" class="">
        <div class="main_con">
            <span class="title">申请贷款</span>

            <div class="basic_infor">
                <p class="info">
                    温馨提示：亲爱的客户，拍拍贷会有严格的信息和安全加密机制，确保您的信息安全，不会向外界泄露。请您认真填写。如有造假，您的贷款资格会被取消；并加入拍拍贷黑名单<br>
                    <i></i>系统将无法贷款。
                </p>

                <div class="process_info">
                    <span class="one cur">填写个人信息</span>
                    <i class="arrow cur"></i>
                    <span class="two">发布借款信息</span>
                    <i class="arrow"></i>
                    <span class="three">资质审核</span>
                </div>

                <div class="information clearfix">
                    <span class="user">我的基本信息</span>

                    <div class="info_con">
                        <ul class="clearfix">

                            <li class="clearfix"><em>姓名：</em><input class="txt01" name="realname" rules="" maxlength="30" type="text" id="realname"></li>
                            <li class="clearfix"><em>身份证：</em><input name="ic" class="txt01 num" maxlength="18" type="text"></li>
                            <c:if test="${users.tel==null}">
                            <li class="clearfix"><em>手机号：</em><input id="txtMobilePhone" name="users.tel" class="txt01 num" maxlength="11" type="text"></li>
                            </c:if>
                            <li class="clearfix"><em>QQ：</em><input name="qq" maxlength="11" class="txt01 num" type="text"></li>
                            <li class="clearfix"><em>婚姻状况：</em>

                                <input name="marriage" value="未婚" class="radios" type="radio">未婚
                                
                                <input name="marriage" value="已婚" class="radios" type="radio">已婚
                                
                                <input name="marriage" value="离异" class="radios" type="radio"><span>离异</span>

                            </li>
                            <li class="clearfix"><em>学历：</em>
                                <select class="selct txt02" id="EducationId" name="education"><option selected="selected" value="">请选择</option>
											<option value="研究生及以上">研究生及以上</option>
											<option value="本科">本科</option>
											<option value="大专">大专</option>
											<option value="高中">高中</option>
											<option value="中专">中专</option>
											<option value="初中及以下">初中及以下</option>
											</select>
                            </li>
                            	  
                            <li class="clearfix">
                            	  <input type="text" id="address" name="address" style="display:none"/>
           						  <em>住宅地址：</em>
                                  <span id="demo1"  style="display:inline-block"></span>
                                  <script>
									$("#demo1").chinaprovinces({valueType:'name',change:function(province,city,area){
										$("#address").val(province+city+area);
									}});
								 </script>
                            </li>						
                            <li class="clearfix">
                                <input name="addresstwo" maxlength="40" class="txt01 ml75" type="text"></li>
                            <li class="clearfix"><em>住宅电话：</em><input name="homephone" class="txt01 num" type="text"></li>
                             <li class="clearfix"><em class="f18">财力证明：<br>
                                <i>（可多选）</i></em>
                                <p class="cailizhm">

                                    <input value="我有存款 " name="property" type="checkbox">我有存款 
                                    <input value="我有房" name="property" type="checkbox">我有房
                                    <input value="我有车" name="property" type="checkbox">我有车
                                    <input value="其他" name="property" type="checkbox">其他
                                    <input value="无" name="property" type="checkbox"><span>无</span>
                                </p>
                            </li>
                        </ul>
                    </div>

                </div>
                <div class="jobs clearfix">
                    
                    <div class="view">
                            <div class="position_con clearfix" style="display: block">
                                <span class="user mt110">我的工作情况</span>
                                <ul style="width: 700px;">
                                    <li class="clearfix"><em>单位名称：</em><input name="company" maxlength="20" class="txt01" type="text"></li>
                                    <li class="clearfix"><em>工作年限：</em>
                                        <select class="selct txt02" id="WorkYears" name="worktime"><option selected="selected" value="">请选择</option>
											<option value="半年以内">半年以内</option>
											<option value="1年以内">1年以内</option>
											<option value="2年以内">2年以内</option>
											<option value="3年以内">3年以内</option>
											<option value="3年以上">3年以上</option>
											</select>
                                    </li>
                                      <li class="clearfix"><em>单位地址：</em>
                                        <input type="text" id="workaddress" name="workaddress" style="display:none"/>
		                                <span id="demo2"  style="display:inline-block"></span>
		                                <script>
										  $("#demo2").chinaprovinces({valueType:'name',change:function(province,city,area){
												$("#workaddress").val(province+city+area);
											}});
										</script>
                                    </li>				
                                    <li class="clearfix">
                                        <input name="workaddresstwo" maxlength="40" class="txt01 ml95" type="text"></li>
                                    <li class="clearfix"><em>单位电话：</em><input name="companyphone" class="txt01 num" type="text"></li>
                                    <li class="clearfix"><em>任职部门：</em><input name="department" maxlength="20" class="txt01" type="text"></li>
                                    <li class="clearfix"><em>任职职位：</em><input name="job" maxlength="20" class="txt01" type="text"></li>
                                </ul>
                            </div>

                    </div>

                </div>
            </div>

             <iframe src="tianxiexinxi_files/cookie.htm" style="height: 1px; width: 1px; position: absolute; left: 0pt; top: 0pt; margin-left: -100px;"></iframe>
        </div>
        <div class="sure_btn">
            <input name="" value="我已认真填写，下一步" class="next_Btn" type="submit">
        </div>
    </form>
</div>





    <div class="clear">
    </div>

    <div class="footer">
        <div class="footer_footerBottom">
            <ul class="footer_footerBottomNav clearfix">
                <li><span class="webindex"></span><a href="http://www.ppdai.com/">网站首页</a>|</li>
                <li><span class="aboutus"></span><a href="http://www.ppdai.com/help/aboutus">关于我们</a>|</li>
                <li><span class="mapsite"></span><a href="http://www.ppdai.com/home/sitemap">网站地图</a>|</li>
                <li><span class="webservice"></span><a href="http://www.ppdai.com/consult">客服中心</a>|</li>
                <li class="nomr"><span class="onlneserve"></span><a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&amp;key=XzgwMDAyNzUzNV8xODAzNjBfODAwMDI3NTM1XzJf" target="_blank">在线咨询</a></li>
            </ul>
            <p>Copyright Reserved 
2007-2015©拍拍贷
（www.ppdai.com）&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备
05063398号&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;上海拍拍贷金融信息服务有限公
司</p>


        </div>

    </div>

    <script src="tianxiexinxi_files/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="tianxiexinxi_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script src="tianxiexinxi_files/servicestack-min.js"></script>
    <script src="tianxiexinxi_files/jquery_003.js"></script>
    <script src="tianxiexinxi_files/status" type="text/javascript"></script><script type="text/javascript" src="tianxiexinxi_files/acstatus.js"></script>
    
    <script>
        $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        try {
            $("#tabIcon a[category='" + breadcrumbCategory + "']").addClass("tabon");
        } catch (e) {

        }
    </script>
    
    <script src="tianxiexinxi_files/ppd_checkform.js" type="text/javascript" charset="utf-8"></script>
    <script src="tianxiexinxi_files/firstborrow1.js" type="text/javascript" charset="utf-8"></script>
    <script src="tianxiexinxi_files/servicestack-min.js"></script>
    <script src="tianxiexinxi_files/customize.js" type="text/javascript" charset="utf-8"></script>
    <script>
        var gateway = new servicestack.ClientGateway('http://' + window.location.host);
        $(function () {
            $(document).PPDqustion({ BtnId: 'submitbtn', TextId: 'Description', tit: '亲爱的拍友们，为了给您提供最好的服务，请留下您宝贵的意见和建议，以便我们改正。' });
            $("#submitbtn").click(function () {
                var description = $("#Description").val() + "〖 手机号码：" + $('#txtMobilePhone').val() + ",QQ号码:" + $('input[name=QQ]').val() + " 〗";
                $.post("/common/feedback", { description: description, categoryId: "21" }, function (e) {
                    $(".fankui_emsg").html(e.Message);
                    $("#Description").val(""); //清空内容
                });
            });


            $('.position_con li .zz').click(function () {
                $(this).addClass('cur').siblings().removeClass('cur');
            });

            $("[name='ProvinceId'], [name='CityId'], [name='ProvinceIdForCompanyOwner'], [name='CityIdForCompanyOwner'], [name='ProvinceIdForWageEarner'], [name='CityIdForWageEarner'], [name='ProvinceIdForWebShop'], [name='CityIdForWebShop']").change(function () {
                if ($(this).find("option:selected").val() == "") {
                    $(this).nextAll("select").find("option").not(":first-child").remove();
                    $(this).nextAll("select").find("option:first-child").attr("selected", true);
                    $(this).nextAll("select").change();
                } else {
                    getAreaList($(this));
                }
            });


            var sub1 = false;
            window.onbeforeunload = function (e) {
                if (!sub1) {
                    var ss = "关闭后将无法保存已填写内容。确认不保存已填写的内容，放弃本次借款吗？\n";
                    return ss;
                }
            };

            $('.next_Btn').click(function () {
                setTimeout(function () {
                    if ($('.Wrong').length) {
                        var top = $('.Wrong').eq(0).offset().top - 20;

                        $('body, html').animate({
                            'scrollTop': top
                        }, 100);

                        //添加记录
                        var errorMessage = '';

                        $('.Wrong').each(function () {
                            errorMessage += ('[' + $(this).parents('li').children('input').attr('name') + ':' + $(this).parents('li').children('input').val() + '|' + $(this).text() + '],') || ('[' + $(this).parents('li').children('select').attr('name') + ':' + $(this).parents('li').children('select').val() + '|' + $(this).text() + '],');

                        });
                        $.post("/actionlog", { useraction: 'newfirstuser', functionname: "new填写资料验证未通过", remark: errorMessage });

                    }
                }, 100);


                if ($('.Wrong').length > 0) {

                    sub1 = false;
                } else {
                    sub1 = true;
                }
            });


        });

        ///获取区域信息方法

        function getAreaList(obj) {
            var type = obj.attr("data-type");
            var data = { AreaType: type, Id: obj.find("option:selected").val(), format: "json" };
            gateway.postToService(
                { AreaRequest: data },
                function (e) {
                    var ilist = "";
                    var econtent = e.Content;
                    var nextobj = obj.nextAll("select")[0];
                    if (type == "2") {
                        for (var i = 0; i < econtent.length; i++) {
                            ilist += "<option value=" + econtent[i].Id + ">" + econtent[i].CityName + "</option>";
                        }
                        //nextobj.next().hide();
                        $(obj.nextAll("select")[1]).find("option").not(":first-child").remove();
                    } else {
                        for (var j = 0; j < econtent.length; j++) {
                            ilist += "<option value=" + econtent[j].Id + ">" + econtent[j].DistrictName + "</option>";
                        }
                        //nextobj.show();
                    }
                    $(nextobj).find("option").not(":first-child").remove();
                    $(nextobj).append(ilist);

                }, function (e) {
                    alert(e.message);
                }
            );
        }
    </script>

    <!-- Google Tag Manager 
    <noscript>
        <iframe src="//www.googletagmanager.com/ns.html?id=GTM-WSCJD4"
                height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <script> (function(w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start':
                new Date().getTime(),
            event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            '//www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-WSCJD4'); </script>
     End Google Tag Manager -->

    <!-- Google Code for &#27880;&#20876;725 Conversion Page Begin-->
    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 968292381;
        var google_conversion_language = "en";
        var google_conversion_format = "3";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "LCv7CKu4jxMQnfDbzQM";
        var google_remarketing_only = false;
        /* ]]> */
    </script>
    <script type="text/javascript" src="tianxiexinxi_files/conversion.js">        
        
        
    </script><img alt="" src="tianxiexinxi_files/a.gif" border="0" height="1" width="1">
    <noscript>
        <div style="display: inline;">
            <img height="1" width="1" style="border-style: none;" alt="" src="//www.googleadservices.com/pagead/conversion/968292381/?label=LCv7CKu4jxMQnfDbzQM&amp;guid=ON&amp;script=0" />
        </div>
    </noscript>
    <!-- Google Code for &#27880;&#20876;725 Conversion Page End-->

    <!-- Google Code for &#27880;&#20876; Conversion Page Begin-->
    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 977881590;
        var google_conversion_language = "en";
        var google_conversion_format = "2";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "n5mACLqdxQcQ9pOl0gM";
        var google_conversion_value = 1.00;
        var google_conversion_currency = "CNY";
        var google_remarketing_only = false;
        /* ]]> */
    </script>
    <script type="text/javascript" src="tianxiexinxi_files/conversion.js">        
        
        
    </script><div id="ac_quickLogin_pop"></div><img alt="" src="tianxiexinxi_files/a.htm" border="0" height="1" width="1">
    <noscript>
        <div style="display: inline;">
            <img height="1" width="1" style="border-style: none;" alt="" src="//www.googleadservices.com/pagead/conversion/977881590/?value=1.00&amp;currency_code=CNY&amp;label=n5mACLqdxQcQ9pOl0gM&amp;guid=ON&amp;script=0" />
        </div>
    </noscript>
    <!-- Google Code for &#27880;&#20876; Conversion Page End-->

    <script type="text/javascript">
        var _mvq = window._mvq || []; window._mvq = _mvq;
        _mvq.push(['$setAccount', 'm-24792-0']);


        _mvq.push(['$setGeneral', 'registered', '', 'pdu71278452',  '10716441']);
        _mvq.push(['$logConversion']);

</script>
    


    <!-- Google Tag Manager -->
    <noscript>
        <iframe src="//www.googletagmanager.com/ns.html?id=GTM-PVQ5D8"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <script>(function (w, d, s, l, i) {
    w[l] = w[l] || []; w[l].push({
        'gtm.start':
            new Date().getTime(), event: 'gtm.js'
    }); var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                '//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-PVQ5D8');</script>
    <!-- End Google Tag Manager -->


<div id="ppd_checkform_overlay" style="display:none;text-align:center;position:absolute;z-index:2000;left:0;top:0;background:black;cursor:hand"><img src="tianxiexinxi_files/null.htm" id="ppd_checkformCheckAjaxForm_image"></div><div class="fixedBtn"><span rel="nofollow" href="javascript:void(0)" class="feedback" title="欢迎给拍拍贷找问题和提建议～">意见反馈</span><div class="feedbackTips fb-open hide green" style="display: none; "> 反馈已发送！ </div><div class="feedbackCnt fb-open" style=" display:block;margin-right: -350px"><div style="margin-bottom: 8px;font-weight: bold;">您的反馈对我们至关重要！</div><textarea name="feedbackCnt" id="Description" placeholder="亲爱的拍友们，为了给您提供最好的服务，请留下您宝贵的意见和建议，以便我们改正。"></textarea><span class="button button-green button-medium" id="submitbtn" style="color:#fff">提交反馈</span><span style="margin-left:5px;" class="fankui_emsg"></span></div></div><div style="display: none; visibility: hidden;"><script>(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create","UA-3635664-1","auto");ga("require","displayfeatures");ga("set","\x26uid","pdu71278452");var dimensionValue="SOME_DIMENSION_VALUE";ga("set","dimension1","2014");
ga("set","dimension2","pdu71278452");ga("send","pageview");</script>

<script>var _hmt=_hmt||[];(function(){var a=document.createElement("script");a.src="//hm.baidu.com/hm.js?f87746aec9be6bea7b822885a351b00f";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})();</script></div></body>



</html>