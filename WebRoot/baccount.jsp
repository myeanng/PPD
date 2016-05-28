<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
    <title>我的账户-中国首家，最大、最多人使用的互联网金融P2P网络借贷平台。提供小额贷款,短期贷款,个人贷款,自定利率,借期灵活。您还可以成为借出人理财投资,超低门槛，获得高年收益率回报</title>
    <meta name="description" content="拍拍贷，中国首家，最大、最多人使用的互联网金融P2P(人人贷)网络借贷平台。提供小额贷款,短期贷款,个人贷款,抵押,无抵押贷款服务。利率自定,借期灵活。您还可以成为借出人理财借贷投资，获得高年收益率回报，超低门槛，超高收益。作为可信赖的投融资,理财,贷款,信贷平台,拍拍贷助您财富实现增值">
    <meta name="keywords" content="网络贷款,民间借贷,小额贷款,无抵押贷款,信用贷款,网络借贷,借贷平台,拍拍贷,人人贷,投资理财,个人理财,p2p贷款,贷款,互联网金融,投融资">
    <link rel="stylesheet" type="text/css" href="./ppd_baccount_files/basic.css">
    <link rel="stylesheet" type="text/css" href="./ppd_baccount_files/layout.css">
    <link href="./ppd_baccount_files/validation-min.css" rel="stylesheet">
    <link rel="shortcut icon" href="http://www.ppdaicdn.com/favicon.ico" type="image/x-icon">
    <script src="./ppd_baccount_files/v.htm" charset="utf-8"></script><script src="./ppd_baccount_files/hm.js"></script><script src="./ppd_baccount_files/analytics.js" async=""></script><script src="./ppd_baccount_files/gtm.js" async=""></script><script src="./ppd_baccount_files/newRefer.js"></script>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faab1030ecb68cd7b5c613bd7a5127a40' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="./ppd_baccount_files/h.js" type="text/javascript"></script>
    
    <link href="./ppd_baccount_files/account.css" rel="stylesheet">

        <link href="./ppd_baccount_files/jr.css" rel="stylesheet">        

<script src="./ppd_baccount_files/jquery_003.js" type="text/javascript"></script><script src="./ppd_baccount_files/ppd_pop.js" type="text/javascript"></script><script src="./ppd_baccount_files/hubs" type="text/javascript"></script><script src="./ppd_baccount_files/acstatus_hub.js" type="text/javascript"></script></head>
<body><iframe style="display: none;"></iframe><style type="text/css">.WPA3-SELECT-PANEL { z-index:2147483647; width:463px; height:292px; margin:0; padding:0; border:1px solid #d4d4d4; background-color:#fff; border-radius:5px; box-shadow:0 0 15px #d4d4d4;}.WPA3-SELECT-PANEL * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none; font-family:Microsoft YaHei,Simsun;}.WPA3-SELECT-PANEL a { cursor:auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-TOP { height:25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE { float:right; display:block; width:47px; height:25px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE:hover { background-position:0 -25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-MAIN { padding:23px 20px 45px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-GUIDE { margin-bottom:42px; font-family:"Microsoft Yahei"; font-size:16px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-SELECTS { width:246px; height:111px; margin:0 auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT { float:right; display:block; width:88px; height:111px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat 0 -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT:hover { background-position:-88px -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-AIO-CHAT { float:left;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ { display:block; width:76px; height:76px; margin:6px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat -50px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ-ANONY { background-position:-130px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-LABEL { display:block; padding-top:10px; color:#00a2e6; text-align:center;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-BOTTOM { padding:0 20px; text-align:right;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-INSTALL { color:#8e8e8e;}</style><style type="text/css">.WPA3-CONFIRM { z-index:2147483647; width:285px; height:141px; margin:0; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR0AAACNCAMAAAC9pV6+AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjU5QUIyQzVCNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjU5QUIyQzVDNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NTlBQjJDNTk1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NTlBQjJDNUE1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6QoyAtAAADAFBMVEW5xdCkvtNjJhzf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) no-repeat;}.WPA3-CONFIRM { *background-image:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/panel.png);}.WPA3-CONFIRM * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none;}.WPA3-CONFIRM * { font-family:Microsoft YaHei,Simsun;}.WPA3-CONFIRM .WPA3-CONFIRM-TITLE { height:40px; margin:0; padding:0; line-height:40px; color:#2b6089; font-weight:normal; font-size:14px; text-indent:80px;}.WPA3-CONFIRM .WPA3-CONFIRM-CONTENT { height:55px; margin:0; line-height:55px; color:#353535; font-size:14px; text-indent:29px;}.WPA3-CONFIRM .WPA3-CONFIRM-PANEL { height:30px; margin:0; padding-right:16px; text-align:right;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON { position:relative; display:inline-block!important; display:inline; zoom:1; width:99px; height:30px; margin-left:10px; line-height:30px; color:#000; text-decoration:none; font-size:12px; text-align:center;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON-FOCUS { width:78px;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON .WPA3-CONFIRM-BUTTON-TEXT { line-height:30px; text-align:center; cursor:pointer;}.WPA3-CONFIRM-CLOSE { position:absolute; top:7px; right:7px; width:10px; height:10px; cursor:pointer;}</style><div class="mainNav">
        <div style="width: 1188px;" class="mainNav_inner w1000center clearfix">
            <h1 class="logo">
                <a href="http://www.ppdai.com/">
                    <img src="./ppd_baccount_files/logo.png" alt=""></a>
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
                    <div style="display: none;" class="subMenu">
                        <a href="http://www.ppdai.com/borrow">我要借款</a>
                        <a href="http://www.ppdai.com/help/howtoborrow">如何借款</a>
                        <a href="http://www.ppdai.com/borrow/interestcalculate">利息计算器</a>
                    </div>
                </li>
                <li class="hasSubMenu"><a class="tabon" href="http://www.ppdai.com/account" category="Account">我的账户</a>
                    <div style="display: none;" class="subMenu">
                        <a href="myAccount-baccount">借款账户</a>
                        <a href="myAccount-laccount">投资账户</a>
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
    


<div class="w100per maintop"></div>
<div class="my-frame">
    <!-- 子导航-->
    
<div>
    <ul class="breadcrumb" style="border: medium none ! important; width: 1169px;">
        <li><a href="http://www.ppdai.com/">首页</a> <span class="divider">&gt;</span></li>
            <li><a href="myAccount-baccount">我的账户-我是借款者</a> <span class="divider">&gt;</span></li>
                    <li><a href="myAccount-baccount">我的账户</a></li>
    </ul>
</div>
<script>
    var breadcrumbCategory = "Account";
</script>

    <div class="clearfix">
        <!-- 左菜单栏-->
        
<div class="wrapleftnav fl" style="width: 200px">
    <div class="my-f-left fl">
        <div class="my-f-l-nav my-f-l-nav-sd">我的账户</div>
        <ul class="my-f-l-list">
                <li><a href="myAccount-baccount" class="on">我的账户首页</a></li>

        </ul>
        <div class="my-f-l-nav">资金管理</div>
        <ul class="my-f-l-list">
            <li><a href="myAccount-moneyhistory?classType=99&dateType=3">资金记录</a></li>
            <li><a href="recharge.jsp">充值</a></li>
            <li><a href="withdrawCash.jsp">提现</a></li>
        </ul>
            <div class="my-f-l-nav">借款管理</div>
            <ul class="my-f-l-list">
                <li><a href="myAccount-myloan">我的借款</a></li>
                <li><a href=myAccount-securityCenter>信息认证</a></li>
                <li><a href="myAccount-basicMes">基本资料</a></li>
                <li><a href="myAccount-upLoadMes">上传资料</a></li>
            </ul>

        <div class="my-f-l-nav">账户设置</div>
        <ul class="my-f-l-list">
            <li><a href="myAccount-securityCenter">安全中心</a></li>
            <li><a href="myAccount-connectNumber">关联账户</a></li>
        </ul>
        

    </div>

    </div>
            <div class="my-f-right c666666 fr">
                <div class="my-ac-haowai"><div class="extra">
    
</div></div>
                <div class="jr_h01 clearfix">
                    <div class="my-ac-users jr13 fl ">
                        <div class="my-ac-userHead">

                            <a href="http://www.ppdai.com/info/userface/">
                                <img src="./ppd_baccount_files/${user.headpicture}" alt="用户头像" height="150px" width="150px">
                            </a>

                            <div class="my-ac-vfr">
                                <a class="my-ac-vfs my-ac-vidh fl" href="http://www.ppdai.com/cert/identitycert" title="身份认证"></a>
                                <a class="my-ac-vfs my-ac-vphoneh ml17 fl" title="手机绑定" href="http://ac.ppdai.com/userbind/bindmobile"></a>
                                <a class="my-ac-vfs my-ac-vvideo " title="视频认证" href="http://www.ppdai.com/cert/videousercert"></a>

                            </div>
                        </div>
                        <div class="w600 my-ac-userInfo">
                            <div class="my-ac-userverfy clearfix">
                                <label class="my-ac-username fl">${user.username}</label>

                                        <a class="my-ac-dgvip my-ac-dgvip3 fl" title="您还不是VIP" href="http://www.ppdai.com/info/vip"></a>

                            </div>
                            <div class="clearfix">
                                <div class="my-ac-paisafty fl">

                                    <div class="my-ac-ps-one">

                                    </div>
                                    <div class="my-ac-ps-two clearfix">
                                        <label class="taJustify">账户安全：</label><span class="my-ac-ps-twomark my-ac-ps-twok2"></span><span><a href="myAccount-securityCenter">【增强】</a></span>

                                    </div>
                                    <div class="lastLoginTime">上次登录：<fmt:formatDate value="${user.lastlogintime}" pattern="yyyy-MM-dd hh:mm:ss"/></div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="jr_13 fl">
                        <div class="jr_13bg fl">
                            <div class="jr_13ei ">
                                <div class="jr_13tit">信用额度</div>
                                <div class="jr_ein fl">
                                    <p class="jr_t01" style="position: relative; z-index: 1;">
                                        已用额度&nbsp;:
                                        <img style="position: absolute; left: 76px; top: 5px;" src="./ppd_baccount_files/wenhao.png" title="目前可申请借款的额度">
                                    </p>
                                    <p class="jr_t02 cf7971a">${loanmoney}</p>
                                    <p class="jr_t03" style="position: relative; z-index: 1;">
                                        总额度&nbsp;:
                                        <img style="position: absolute; left: 62px; top: 5px;" src="./ppd_baccount_files/wenhao.png" title="最多可借额度，可用额度和已借额度之和">
                                    </p>
                                    <p class="jr_t02">${credit.maxmoney}</p>
                                </div>
                                <div class="jr_ein1 fl">

                                    <!--
                                        原图
                                        <img src="http://www.ppdaicdn.com/2014/img/11_03.jpg">
                                        -->
                                    <div class="jr_jd_outer">
                                        <div style="width: 110px; height: 72px; position: relative;" class="jr_jd" id="scaleMap"><svg style="overflow: hidden; position: relative; left: -0.5px;" xmlns="http://www.w3.org/2000/svg" width="110" version="1.1" height="72"><desc>Created with Raphaël 2.1.2</desc><defs></defs><path stroke-width="11" d="M5.5,72A49.5,49.5,0,0,1,5.5,72" stroke="#f19e00" fill="none" style=""></path><path stroke-width="11" d="M5.5,72A49.5,49.5,0,0,1,104.5,72" stroke="#eeeeee" fill="none" style=""></path></svg><div style="width: 110px; color: rgb(51, 51, 51); font-size: 20px; font-family: microsoft yahei,arial; position: absolute; bottom: 0px; left: 0px; text-align: center;">0%</div></div>
                                        <div class="jr_jdl"><a href="http://www.ppdai.com/borrow">立即借款&gt;</a></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="jr_13hr fl"></div>
                        <div class="pl35 pt18 fl" style="">
                            <div class="jr_13tit01" style="font-size: 18px; color: #333;">账户余额<img style="margin-left: 3px;" src="./ppd_baccount_files/wenhao.png" title="可用于还款或提现"></div>
                            <div class="lh50">
                            <c:forEach items="${user.accounts}" var="account">
                            <span class="my-ac-ps-yue">
                            
                            ¥${account.inmoney}</span>
                            </c:forEach>
                            </div>
                            <div class="taCenter"><a class="my-blue-btn my-ac-btns" href="recharge.jsp" target="_blank">充值</a><a href="withdrawCash.jsp" target="_blank" class="ml16 my-yellow-btn my-ac-btns">提现</a></div>
                        </div>
                    </div>
                </div>



                    <div class="my-bor-frame">
                        <div class="my-bor-gobidfr bgf8">
                            <div class="my-ac-ctTitle clearfix"><span class="fs18 fl">当前借款</span></div>
                        </div>
                            <div>
                            	<c:forEach items="${user.loans}" var="loan">
                                <p class=" mt10 pl40 lh30">借款列表：<a href="myAccount-investrecord?loanid=${loan.loanid}" class="c39a1ea">${loan.title}</a></p>
                                <p class="lh30 pl40 clearfix"><span class="fl">金额：¥${loan.loanmoney}</span><span class="fl ml40">期限：${loan.loantime}个月</span></p>
                            	</c:forEach>
                            </div>

                        <div class="my-bor-lc clearfix">
                                    <a href="http://www.ppdai.com/firstuserdetail">
                                        <div class="lc grxx1 fl"></div>
                                    </a>
                                    <div class="hxone lcgreen fl"></div>
                                    <a href="http://www.ppdai.com/firstcreatelist">
                                        <div class="lc jkxx1 fl"></div>
                                    </a>
                                    <div class="hxtwo lcgreen fl"></div>
                                    <a href="http://www.ppdai.com/firstdocuments">
                                        <div class="lc zzsh2 fl">
                                            <div class="lc-jt"></div>
                                        </div>
                                    </a>
                                    <div class="hxthree lcgay fl"></div>
                                    <div class="lc cjzj3 fl"></div>
                        </div>
                        <div class="lc-ts-four-ts">
                                    <a href="http://www.ppdai.com/firstuserdetail"><span class="c8fc320">个人信息</span></a>
                                    <a href="http://www.ppdai.com/firstcreatelist"><span class="c8fc320 ml96">借款信息</span></a>
                                    <a href="http://www.ppdai.com/firstdocuments"><span class="cf7971a ml86">资质审核</span></a>
                                    <span class="c666666 ml86">筹集资金</span>

                        </div>
                        <div class="lc-ts-frame">

                            <div class="ts c666666">
                                                <p class="lh30">1、初审中，上传更多的资料，会更好的完成审核。<a class="c39a1ea" href="myAccount-upLoadMes?account">上传资料</a>及<a class="c39a1ea" href="myAccount-updatePhone?account">手机实名认证</a></p>
                                                <p class="lh30"><span class="cc4c4c4">2、终审</span></p>
                            </div>
                        </div>

                    </div>


                <div class="my-bor-ops clearfix" style="padding: 19px 0;">
                    <a class="op1 fl" href="myAccount-basicMes">填写基本资料</a>
                    <a class="ml11 op2 fl" href="myAccount-upLoadMes">上传资料</a>
                    <a class="ml11 op3 fl" href="myAccount-updatePhone">手机实名认证</a>
                    <a class="ml11 op4 fl" href="myAccount-connectNumber">关联账户</a>
                </div>




            </div>


    </div>
    <input id="IsFinishSwitchBorrowLoan" value="0" type="hidden">

</div>
     <iframe src="./ppd_baccount_files/cookie.htm" style="height: 1px; width: 1px; position: absolute; left: 0pt; top: 0pt; margin-left: -100px;"></iframe>
<!-- 意见框 -->
<div class="cover" id="cover" style="display: none"></div>
<div class="suggestion_box" id="suggestion_box" style="display: none">
    <div class="suggestion_title">版本切换</div>
    <div class="suggestion_body">
        <p>真的不爱新版吗？有什么不满意的,我改还不好么？T^T</p>
        <textarea placeholder="留下不满意的原因,让我改好吗.." id="Description"></textarea>
    </div>
    <div class="suggestion_btnBox">
        <input value="提个意见,继续用新版" id="submitbtn" type="button">
        <input value="没法忍,我要用旧版" class="closeSuggestion" id="v2013" type="button">
    </div>
    <a href="javascript:;" class="suggestion_close closeSuggestion">×</a>
</div>
<!-- 意见框 结束 -->
<!-- 体验版意见框 -->
<div class="suggestion_box" id="suggestion_box1" style="display: none">
    <div class="suggestion_title">版本切换</div>
    <div class="suggestion_body">
        <p>真的不爱体验版吗？有什么不满意的,我改还不好么？T^T</p>
        <textarea placeholder="留下不满意的原因,让我改好吗.." id="Description1"></textarea>
    </div>
    <div class="suggestion_btnBox">
        <input value="提个意见,继续用新版" id="submitbtn1" type="button">
        <input value="没法忍,我要用旧版" class="closeSuggestion" id="vison" type="button">
    </div>
    <a href="javascript:;" class="suggestion_close closeSuggestion">×</a>
</div>
<!-- 体验版意见框 结束 -->

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

    <script src="./ppd_baccount_files/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_baccount_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_baccount_files/servicestack-min.js"></script>
    <script src="./ppd_baccount_files/jquery_002.js"></script>
    <script src="./ppd_baccount_files/status" type="text/javascript"></script><script type="text/javascript" src="./ppd_baccount_files/acstatus.js"></script>
    
    <script>
        $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        try {
            $("#tabIcon a[category='" + breadcrumbCategory + "']").addClass("tabon");
        } catch (e) {

        }
    </script>
    
    <script src="./ppd_baccount_files/bootstrap.js"></script>
    <script type="text/javascript" src="./ppd_baccount_files/customize.js"></script>
    <script src="./ppd_baccount_files/echarts-plain.js" type="text/javascript" charset="utf-8"></script><div id="ac_quickLogin_pop"></div>
    <script src="./ppd_baccount_files/scaleMap.js"></script>
    <script src="./ppd_baccount_files/raphael-min.js"></script>

    <script>
        $(function () {
            //新版反馈
            $("#suggestion_box #submitbtn,#suggestion_box .closeSuggestion").click(function () {
                    
                var description = $("#suggestion_box #Description").val() + "〖 手机号码：" + 13213132610 + ",QQ号码:" + 854529175 + " 〗";
        
                if ($("#suggestion_box #Description").val() != "" && $("#suggestion_box #Description").val() != undefined) {
                    $.post("/common/feedback", { description: description, categoryId: "120" }, function (e) {
                        $(".fankui_emsg").html(e.Message);
                        $("#suggestion_box #Description").val(""); //清空内容
                    });
                }
            });
            $("#suggestion_box .closeSuggestion,#submitbtn").click(function () {
                $("#suggestion_box,.cover").hide();
            });
            $('#v2013').click(function () {
                $.cookie('ui-version', '2013', { expires: 365, path: '/', domain: '.ppdai.com', secure: false });
                window.location.reload();
            });
        });

    </script>
    <script>
        $(function () {
            //体验版反馈
            $("#suggestion_box1 #submitbtn1,#suggestion_box1 .closeSuggestion").click(function () {
                    
                var description = $("#suggestion_box1 #Description1").val() + "〖 手机号码：" + 13213132610 + ",QQ号码:" + 854529175 + " 〗";
        
                if ($("#suggestion_box1 #Description1").val() != "" && $("#suggestion_box1 #Description1").val() != undefined) {
                    $.post("/common/feedback", { description: description, categoryId: "131" }, function (e) {
                        $(".fankui_emsg").html(e.Message);
                        $("#suggestion_box1 #Description1").val(""); //清空内容
                    });
                }
            });
            $("#suggestion_box1 .closeSuggestion,#submitbtn1").click(function () {
                $("#suggestion_box1,.cover").hide();
            });
            $(".userInfo_goOldVer").click(function (e) {
                $("#cover,#suggestion_box1").show();
                e.preventDefault();

            });
            $('#vison').click(function () {
                switchvosion(1);
            });
        });

    </script>
    <script type="text/javascript">
        var polar = document.getElementById('polar');
        if (polar != null && polar != 'undefined') {
            var myChart = echarts.init(polar);

            myChart.setOption({
                toolbox: {
                    show: false,
                    feature: {
                        mark: { show: true },
                        dataView: { show: true, readOnly: false },
                        restore: { show: true },
                        saveAsImage: { show: true }
                    }
                },
                calculable: false,
                polar: [
                    {
                        indicator: [
                            { text: '', max: 20 },
                            { text: '', max: 20 },
                            { text: '', max: 20 },
                            { text: '', max: 20 },
                            { text: '', max: 20 }
                        ],
                        radius: 90
                    }
                ],
                series: [
                    {
                        name: '',
                        type: 'radar',
                        itemStyle: {
                            normal: {
                                areaStyle: {
                                    type: 'default'
                                }
                            }
                        },
                        data: [
                            {
                                value: [0, 0, 0, 16, 0],

                                name: ''
                            }
                        ]
                    }
                ]
            });
                }

    </script>


    <script>
        //切换新旧体验版
        function switchvosion(ver) {
            try {
                $.cookie('Borrow-version', ver, { expires: 30, path: '/', domain: 'www.ppdai.com', secure: false });
                window.location.href = window.location.href;
            } catch (err) {
                //
            }
        }

        $(function () {
            $.ajax({
                url: "http://www.ppdai.com/accountmessage?Type=3",
                type: "POST",
                dataType: 'html',
                success: function (date) {
                    //alert(date);
                    if (date != '') {
                        //alert(date);
                        var remind = $('<div id="remindtips"></div>');
                        $('body').prepend(remind);
                        remind.prepend($(date));
                        $('#remindtips>div').append('<span id="remindclose"></span>');
                    }

                },
                error: function (er) {
                }
            });
            $('body').on('click', '#remindclose', function () {
                $(this).parents('#remindtips').remove();
            });
        });


    </script>

    <script>
        //var scaleMap = $("#scaleMap");
        //if (scaleMap != null && scaleMap != 'undefined') {


        //}
        $("#scaleMap").css({ "width": 110, "height": 72 }).scaleMap({ scale: '0' });
        $(function () {
            if ($('.my-frame').width() == 1200) {
                $('.top_inner > .top_inner, .mainNav_inner').width(1188);
                $('.breadcrumb').width(1169);
            }
        });
    </script>
    <!--列表确认 开始-->
    <!--列表确认 结束-->
    <!--营销 开始-->
    <!--营销 结束-->
    <!--切换角色 开始-->
    <!--切换角色 结束-->

    <!--提额 开始-->
    <!--提额 结束-->
    <!--拍币 开始-->
    <script type="text/javascript">
        $("#btnGetPaiMoney").click(function () {
            var $this = $(this);
            if ($this.attr("disabled") == "disabled") return false;
            $this.attr("disabled", true);
            if ($this.hasClass("signIn")) {
                $this.removeClass("hover");
            } else {
                $this.removeClass("my-ac-qdsignb").addClass("my-ac-qdsigna");
            }
            $this.removeClass("my-ac-qdsignb").addClass("my-ac-qdsigna");
            var gateway = new servicestack.ClientGateway('http://' + window.location.host);
            var data = {};
            gateway.postToService(
                {
                    PaiMoneyRequest: data
                }, function (e) {
                    $this.PPDfloatDiv({
                        floatbgtype: true,
                        handertext: '签到成功！',
                        context: "<div style='font-size:14px'>" + e.Message + "</div>",
                        floattruebtn: false,
                        floatfalsebtn: '确定',
                        btnshow: true,
                        keyboards: false
                    });
                    $("#signDay").text(e.Day);
                    $("#paiMoney").text(e.MoneyAll);
                    $this.text("已签");
                    $(".left_gray").attr("title", e.Message);
                    $(".left_gray").show();
                    $(".left_yellow").hide();
                }, function (e) {
                    $this.attr("disabled", false);
                    $this.css({ color: "#690", cursor: "pointer" });
                    alert("您可能已经签到，请刷新后再试，或明天再来~");
                }
            );
        });
    </script>
    <!--拍币 结束-->

    <!--营销部分 开始-->
    <script type="text/javascript">
        $(document).ready(function () {
            var referUrl = 'http://www.ppdai.com/borrow/interestcalculate';
            if ('0' == '1' && referUrl.indexOf("firstuserdetail") > 0) {
                var txt = "拍拍贷销售专员稍后会与您联系。在此期间，您可以继续在网站自助操作，完成淘宝认证及上传资料。";
                $('body').PPDfloatDiv({
                    floatbgtype: true,
                    handertext: '提示',
                    context: "<div style='font-size:14px'>" + txt + "</div>",
                    floattruebtn: false,
                    floatfalsebtn: '确定',
                    btnshow: true,
                    keyboards: false
                });
                $('#modalbackdroptrue').on('hide', function () {
                    window.location.href = "/account/borrow";
                });
            }

        });
    </script>
    <!--营销部分 结束-->


    <!--记录当前使用角色 开始-->
    <script type="text/javascript">
        $.cookie("ppdaiRole", "8", { expires: 365, path: '/', domain: '.ppdai.com', secure: false });
    </script>
    <!--记录当前使用角色 结束-->

    <!--交互 开始-->
    <script>
        $(".my-hn-user").bind("click", function () {
            $(this).closest("tr").next().toggleClass("dtr");
        });
        $(".close").click(function () {
            $(this).parent().remove();
        });
    </script>
    <!---交互 结束-->
    
    <!--topNav 提示 开始 -->
        <script src="./ppd_baccount_files/topnav.js"></script>
    <!--topNav 提示 开始 -->



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


<div style="display: none; visibility: hidden;"><script>(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create","UA-3635664-1","auto");ga("require","displayfeatures");ga("set","\x26uid","pdu11557782");var dimensionValue="SOME_DIMENSION_VALUE";ga("set","dimension1","2014");
ga("set","dimension2","pdu11557782");ga("send","pageview");</script>

<script>var _hmt=_hmt||[];(function(){var a=document.createElement("script");a.src="//hm.baidu.com/hm.js?f87746aec9be6bea7b822885a351b00f";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})();</script>



<script src="./ppd_baccount_files/wpa.php" type="text/javascript" charset="utf-8"></script>
</div></body></html>