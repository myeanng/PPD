<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  
    <title>上传资料</title>
    <meta name="description" content="拍拍贷，中国首家，最大、最多人使用的互联网金融P2P(人人贷)网络借贷平台。提供小额贷款,短期贷款,个人贷款,抵押,无抵押贷款服务。利率自定,借期灵活。您还可以成为借出人理财借贷投资，获得高年收益率回报，超低门槛，超高收益。作为可信赖的投融资,理财,贷款,信贷平台,拍拍贷助您财富实现增值">
    <meta name="keywords" content="网络贷款,民间借贷,小额贷款,无抵押贷款,信用贷款,网络借贷,借贷平台,拍拍贷,人人贷,投资理财,个人理财,p2p贷款,贷款,互联网金融,投融资">
    <link rel="stylesheet" type="text/css" href="./ppd_uploadinfo_files/basic.css">
    <link rel="stylesheet" type="text/css" href="./ppd_uploadinfo_files/layout.css">
    <link href="./ppd_uploadinfo_files/validation-min.css" rel="stylesheet">
    <link rel="shortcut icon" href="http://www.ppdaicdn.com/favicon.ico" type="image/x-icon">
    <script src="./ppd_uploadinfo_files/v.htm" charset="utf-8"></script><script src="./ppd_uploadinfo_files/hm.js"></script><script src="./ppd_uploadinfo_files/analytics.js" async=""></script><script src="./ppd_uploadinfo_files/gtm.js" async=""></script><script src="./ppd_uploadinfo_files/newRefer.js"></script>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faab1030ecb68cd7b5c613bd7a5127a40' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="./ppd_uploadinfo_files/h.js" type="text/javascript"></script>
    
    <link rel="stylesheet" type="text/css" href="./ppd_uploadinfo_files/uploadData.css">
    <link rel="stylesheet" href="./ppd_uploadinfo_files/account.css">
    <link rel="stylesheet" type="text/css" href="./ppd_uploadinfo_files/uploadData.css">

<script src="./ppd_uploadinfo_files/jquery_003.js" type="text/javascript"></script><script src="./ppd_uploadinfo_files/ppd_pop.js" type="text/javascript"></script><script src="./ppd_uploadinfo_files/hubs" type="text/javascript"></script><script src="./ppd_uploadinfo_files/acstatus_hub.js" type="text/javascript"></script></head>
<body><iframe style="display: none;"></iframe><style type="text/css">.WPA3-SELECT-PANEL { z-index:2147483647; width:463px; height:292px; margin:0; padding:0; border:1px solid #d4d4d4; background-color:#fff; border-radius:5px; box-shadow:0 0 15px #d4d4d4;}.WPA3-SELECT-PANEL * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none; font-family:Microsoft YaHei,Simsun;}.WPA3-SELECT-PANEL a { cursor:auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-TOP { height:25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE { float:right; display:block; width:47px; height:25px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE:hover { background-position:0 -25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-MAIN { padding:23px 20px 45px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-GUIDE { margin-bottom:42px; font-family:"Microsoft Yahei"; font-size:16px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-SELECTS { width:246px; height:111px; margin:0 auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT { float:right; display:block; width:88px; height:111px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat 0 -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT:hover { background-position:-88px -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-AIO-CHAT { float:left;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ { display:block; width:76px; height:76px; margin:6px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat -50px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ-ANONY { background-position:-130px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-LABEL { display:block; padding-top:10px; color:#00a2e6; text-align:center;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-BOTTOM { padding:0 20px; text-align:right;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-INSTALL { color:#8e8e8e;}</style><style type="text/css">.WPA3-CONFIRM { z-index:2147483647; width:285px; height:141px; margin:0; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR0AAACNCAMAAAC9pV6+AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjU5QUIyQzVCNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjU5QUIyQzVDNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NTlBQjJDNTk1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NTlBQjJDNUE1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6QoyAtAAADAFBMVEW5xdCkvtNjJhzf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) no-repeat;}.WPA3-CONFIRM { *background-image:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/panel.png);}.WPA3-CONFIRM * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none;}.WPA3-CONFIRM * { font-family:Microsoft YaHei,Simsun;}.WPA3-CONFIRM .WPA3-CONFIRM-TITLE { height:40px; margin:0; padding:0; line-height:40px; color:#2b6089; font-weight:normal; font-size:14px; text-indent:80px;}.WPA3-CONFIRM .WPA3-CONFIRM-CONTENT { height:55px; margin:0; line-height:55px; color:#353535; font-size:14px; text-indent:29px;}.WPA3-CONFIRM .WPA3-CONFIRM-PANEL { height:30px; margin:0; padding-right:16px; text-align:right;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON { position:relative; display:inline-block!important; display:inline; zoom:1; width:99px; height:30px; margin-left:10px; line-height:30px; color:#000; text-decoration:none; font-size:12px; text-align:center;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON-FOCUS { width:78px;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON .WPA3-CONFIRM-BUTTON-TEXT { line-height:30px; text-align:center; cursor:pointer;}.WPA3-CONFIRM-CLOSE { position:absolute; top:7px; right:7px; width:10px; height:10px; cursor:pointer;}</style>
    <div class="top PPD_header_nav">
        <div class="top_inner w1188center clearfix PPD_login_status top"><div class="top_inner w1000center clearfix"><div class="mobileappdownload"><a href="http://www.ppdai.com/landingappdownload.html" target="_blank">下载手机客户端</a></div><ul class="top_toolNav"><li><span>Hi,</span></li><li class="hasStatusArrow"><a href="http://www.ppdai.com/user/pdu11557782">pdu11557782</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://pay.ppdai.com/order/online?from=acstatus">充值</a><a href="http://pay.ppdai.com/trade/cashwithdrawal?from=acstatus">提现</a></div></li><li class="ml08" style="margin-left:0"><a href="http://ac.ppdai.com/user/logout" class="fz14">[退出]</a></li><li class="ml08"><a href="http://msg.ppdai.com/Message" class="fz14 ac_status_msg2014">消息(2)</a></li><li class="hasStatusArrow"><a href="http://help.ppdai.com/" class="fz14">帮助</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://www.ppdai.com/consult">客服</a><a href="http://group.ppdai.com/">论坛</a></div></li></ul></div></div>
    </div>

    <div class="mainNav">
        <div class="mainNav_inner w1000center clearfix">
            <h1 class="logo">
                <a href="http://www.ppdai.com/">
                    <img src="./ppd_uploadinfo_files/logo.png" alt=""></a>
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
                <li class="hasSubMenu"><a class="tabon" href="http://www.ppdai.com/account" category="Account">我的账户</a>
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
    

<div class="main" style="padding-top: 10px; margin-bottom: 20px;" id="content_nav">
    <div class="my-frame">
        
<div>
    <ul class="breadcrumb" style="border: none !important;">
        <li><a href="http://www.ppdai.com/">首页</a> <span class="divider">&gt;</span></li>
            <li><a href="http://www.ppdai.com/account/borrow">我的账户-我是借款者</a> <span class="divider">&gt;</span></li>
                    <li><a href="http://www.ppdai.com/info/userdocuments">上传资料</a></li>
    </ul>
</div>
<script>
    var breadcrumbCategory = "Account";
</script>

        <div class="clearfix">
            
<div class="wrapleftnav fl" style="width: 200px">
    <div class="my-f-left fl">
        <div class="my-f-l-nav">我的账户</div>
        <ul class="my-f-l-list">
                <li><a href="http://www.ppdai.com/account/borrow">我的账户首页</a></li>

        </ul>
        <div class="my-f-l-nav">资金管理</div>
        <ul class="my-f-l-list">
            <li><a href="http://www.ppdai.com/moneyhistory">资金记录</a></li>
            <li><a href="http://pay.ppdai.com/order/online">充值</a></li>
            <li><a href="http://pay.ppdai.com/trade/cashwithdrawal">提现</a></li>
        </ul>
            <div class="my-f-l-nav my-f-l-nav-sd">借款管理</div>
            <ul class="my-f-l-list">
                <li><a href="http://www.ppdai.com/account/repaymentlist">我的借款</a></li>
                <li><a href="http://www.ppdai.com/user/auth/videouser">信息认证</a></li>
                <li><a href="http://www.ppdai.com/info/userdetail">基本资料</a></li>
                <li><a href="http://www.ppdai.com/info/userdocuments" class="on">上传资料</a></li>
            </ul>

        <div class="my-f-l-nav">账户设置</div>
        <ul class="my-f-l-list">
            <li><a href="http://ac.ppdai.com/safe/setting">安全中心</a></li>
            <li><a href="http://ac.ppdai.com/user/accountbind">关联账户</a></li>
        </ul>
        <div class="my-f-l-nav">市场推广</div>
        <ul class="my-f-l-list">
            <li><a href="http://www.ppdai.com/account/spread">有奖推荐</a></li>
            <li><a href="http://www.ppdai.com/account/paimoney/market?menu">拍币兑换</a></li>
            <li><a href="http://www.ppdai.com/account/raffletickets">我的抽奖券</a></li>
        </ul>

    </div>

    </div>
            <!--右边-->
            <div class="my-f-right fr">
                <div class="my-f-r-upload bdradius0">
                    <div class="my-f-r-sf-title c666">上传资料</div>
                    <div class="uploadDataAlert">进行中的列表资料将快速审核，未发布借款将在下次发布借款时审核。</div>
                    <div class="uploadData_tit clearfix">
                        <div class="float_l">
                            <input id="authid" value="5127223" type="hidden">
                            <span>温馨提示：</span><br>
                            1、请尽多提供能证明您还款能力的资料，缩短放款时间。<br>
                            2、上传的资料文件不超过10M/个。<br>
                            3、须是数码相机拍摄的完整原图，未经PS剪裁等处理，不可上传复印件或扫描件。<br>
                            4、拍拍贷是注重诚信的网络平台，若您上传的资料有伪造或人工修改痕迹，您会被加入系统黑名单，永久取消借款资格。<br>
                            5、拍拍贷有严格的加密系统，您的资料完全保密。 
                        </div>
                        <style>
                            .pl-chuan-ph {
                                background: url(http://www.ppdaicdn.com/img/upload/upload.png) 0 0 no-repeat;
                                width: 264px;
                                height: 135px;
                                margin-top: 7px;
                            }

                            .pl-chuan-down {
                                height: 32px;
                                margin-left: 32px;
                                margin-top: 75px;
                                width: 108px;
                                display: block;
                                background: url(http://www.ppdaicdn.com/img/upload/upload.png) 0-139px no-repeat;
                            }
                        </style>
                        <div class="pl-chuan-ph float_r ">
                            <a href="javascript:void(0)" id="a_download" class="pl-chuan-down"></a>
                        </div>
                    </div>
                        <table class="upload_nav_table" cellpadding="0" cellspacing="0">
                            <tbody><tr>
                                <th width="17"></th>
                                <th width="202">资料类型</th>
                                <th width="49">图片</th>
                                <th width="135">最近上传时间</th>
                                <th>未通过理由</th>
                                <th width="103">状态</th>
                            </tr>
                                <tr>
                                        <td class="center p10 bdln" rowspan="3" style="width: 14px;">必传项</td>

                                    <td class="p5">身份证：本人身份证的正、反两面照片，本人手持身份证合照共计三张照片</td>
                                    <td class="center"><a href="http://www.ppdai.com/viewfile/1" class="blue">(0)张</a></td>
                                    <td class="center"></td>
                                    <td></td>
                                    <td class="center p12 bdrn"> <a class="blue uploadBtn" frontdocumentid="1" description="资料要求:1、上传本人二代身份证正反面照片及本人与身份证合照，图片文字需清晰可见。图片尺寸需要小于10M。身份证上的所有信息清晰可见，必须能看清证件号。照片需免冠，建议未化妆，手持证件人的五官清晰可见。照片内容真实有效，不得做任何修改。2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                </tr>
                                <tr>

                                    <td class="p5">稳定工作证明（劳动合同，工作证，工牌，名片等）</td>
                                    <td class="center"><a href="http://www.ppdai.com/viewfile/18" class="blue">(0)张</a></td>
                                    <td class="center"></td>
                                    <td></td>
                                    <td class="center p12 bdrn"> <a class="blue uploadBtn" frontdocumentid="18" description="资料要求： 1、显示公司名称及本人姓名的劳动合同原件、工作证、工牌或名片完整照片原图（劳动合同请按顺序从第一页拍至最后一页），图片文字需清晰可见。图片尺寸需要小于10M。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                </tr>
                                <tr>

                                    <td class="p5">个人常用银行流水(近三个月连续银行流水及银行卡正反面)</td>
                                    <td class="center"><a href="http://www.ppdai.com/viewfile/43" class="blue">(0)张</a></td>
                                    <td class="center"></td>
                                    <td></td>
                                    <td class="center p12 bdrn"> <a class="blue uploadBtn" frontdocumentid="43" description="资料要求: 1、图片文字需清晰可见。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff;*.txt;*.csv" comment="" href="javascript:void(0);">上传资料</a></td>
                                </tr>

                        </tbody></table>
                        <div id="Can_pass" style="display: none;">
                            <table class="upload_nav_table" cellpadding="0" cellspacing="0">
                                    <tbody><tr>
                                            <td class="center p10 bdtn bdln" rowspan="20" width="14">可传项</td>

                                        <td class="center p5 bdtn" width="191">个人护照</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/2" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="2" description="资料要求：&nbsp;1、上传本人护照完整页照片（从第一页拍至最后一页），图片文字需清晰可见。图片尺寸需要小于10M。&nbsp;2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">港澳台通行证</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/3" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="3" description="资料要求：&nbsp;1、本人大陆居民往来港澳通行证或大陆居民往来台湾通行证完整页照片（请按顺序从第一页拍至最后一页），图片文字需清晰可见。图片尺寸需要小于10M。&nbsp;&nbsp;2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">机动车驾驶证（正副本）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/4" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="4" description="资料要求：&nbsp;1、本人机动车驾驶证正副页完整照片，图片文字需清晰可见。图片尺寸需要小于10M。&nbsp;2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">学历学位证书</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/5" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="5" description="资料要求： 1、本人最高学历学位证书完整照片，图片需清晰可见。图片尺寸需要小于10M。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">岗位资质证书</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/6" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="6" description="资料要求： 1、本人岗位资质证书（如教师资格证、律师资格证、会计从业资格证等）完整照片，图片文字需清晰可见。图片尺寸需要小于10M。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。 " filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">居民户口簿（第一页至最后页）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/7" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="7" description="资料要求： 1、本人家庭户口薄（需含本人户口页）完整照片（按顺序从第一页拍至空白页），图片文字需清晰可见。图片尺寸需要小于10M。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">结婚证</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/8" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="8" description="资料要求： 1、本人结婚证完整照片（按顺序从第一页拍至最后一页），图片文字需清晰可见。图片尺寸需要小于10M。  2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">亲友身份证（正反面）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/9" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="9" description="资料要求：&nbsp;1、本人亲友二代身份证正反面照片，若已婚，则请上传本人配偶身份证；若未婚，则请上传户口本内任一亲属身份证。图片文字需清晰可见。图片尺寸需要小于10M。&nbsp;2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。&nbsp;&nbsp;注：提交本项资料时，请同时提交相关关系证明（结婚证或户口本资料）。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">亲友合照（3-5张）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/10" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="10" description="资料要求：1、本人与亲友合照3-5张。2、图像清晰，图片尺寸小于10M" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">个人住房租赁合同</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/11" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="11" description="资料要求：1、本人现居住地址租房合同原件完整照片（按顺序从第一页拍至最后一页），图片文字需清晰可见。图片尺寸需要小于10M。          2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">水、电、煤、固定电话账单/信用卡、保险对账单(近3个月)</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/12" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="12" description="资料要求： 1、最近3个月内任意一月公共事业费账单或个人金融对账单完整照片，图片文字需清晰可见。图片尺寸需要小于10M。  2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。 注：金融对账单姓名需显示为本人；公共事业费账单户名若显示非本人则需提交先关关系证明。 账单地址为现居住地的水、电、煤、手机、固定电话等公共事业费账单；账单地址为现居住地的信用卡、保险等个人金融对账单" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">购房证明(房产证，购房合同等)</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/13" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="13" description="资料要求： 1、本人/配偶房产证、银行房贷合同、房屋买卖合同原件完整照片（按顺序从第一页拍至最后一页），图片文字需清晰可见。图片尺寸需要小于10M。  2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。 注：1.若以上房产证明所有人为配偶，则需提交结婚证及配合身份证 " filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">机动车行驶证</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/14" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="14" description="资料要求： 1、本人机动车行驶证正副页完整照片，图片文字需清晰可见。图片尺寸需要小于10M。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">其他网站借款截屏</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/15" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="15" description="资料要求： 1、本人他处所有借款账户完整截屏原图，图片文字需清晰可见。图片尺寸需要小于10M。 友情提醒：若发现本人未如实提交他处借款情况，一经发现有权取消借款资格。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">其他所有贷款协议/凭证（包括亲戚朋友等处借款）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/16" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="16" description="资料要求：1、本人他处所有贷款协议/凭证（包括亲戚朋友等处借款）完整照片原图，图片文字需清晰可见。图片尺寸需要小于10M。&nbsp;2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。&nbsp;友情提醒：若发现本人未如实提交他处借款情况，一经发现有权取消借款资格。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">央行征信报告（央行柜台打印个人查询版）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/17" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="17" description="资料要求： 1、最近一年内本人信用报告完整照片原图（按顺序从第一页拍至最后一页，图片文字需清晰可见。图片尺寸需要小于10M。  2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff;*.pdf" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">企业/个体户证明（营业执照等）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/20" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="20" description="资料要求: 1、本人企业营业执照正副本或税务登记证或组织机构代码证完整照片，图片文字需清晰可见。 2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。 3、个体工商户只需提供个体工商户营业执照正副本；除个体工商户以外需提供企业法人营业执照正副本、税务登记证、组织机构代码证。 注：除个体工商户以外的企业还需补充企业验资报告。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">其他资料（其他能说明您收入、资产职务或素质的有效资料）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/41" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="41" description="" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">支付宝账户信息（支付宝账户基本信息和支付宝上一年度个人年度对账单）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/44" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="44" description="资料要求:1、上传本人支付宝账户基本信息和支付宝上一年度个人年度对账单全屏原图，图片文字需清晰可见。图片尺寸需要小于10M。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>
                                    <tr>

                                        <td class="center p5 bdtn" width="191">微博账户截屏（转发拍拍贷官方微博截屏和微博个人信息页面截屏）</td>
                                        <td class="center bdtn" width="48"><a href="http://www.ppdai.com/viewfile/45" class="blue">(0)张</a></td>
                                        <td class="center bdtn" width="135"></td>
                                        <td class="bdtn"></td>
                                        <td class="center bdtn p12 bdrn" width="103"> <a class="blue uploadBtn" frontdocumentid="45" description="资料要求:1、上传本人微博账户全屏原图，图片文字需清晰可见。2、转发拍拍贷官方微博截屏，原图，图片文字需清晰可见。图片尺寸需要小于10M。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a></td>
                                    </tr>

                            </tbody></table>
                        </div>
                        <p class="slideToggle">补充提交资料，借款更快速！点击展开</p>

                </div>
                <!--右边结束-->
            </div>
        </div>
    </div>
</div>

<div id="div_download" style="display: none;">
    <form id="form_download">
        <h4 class="downtitle">
            <span class="anytiemtrans">手机也能传资料</span>
        </h4>
        <div class="clearfix" style="padding-top: 20px;">
            <div class="twodimensional float_l">
                <span class="dimensionalcode c39a1ea">立即扫描：</span>
                <div class="dimensionalimg">
                    <img src="./ppd_uploadinfo_files/tookapass.png" alt="" height="150" width="150">
                </div>
            </div>
            <div class="pl27 float_l">
                <span class="downTwo c39a1ea">其他下载方式：</span>
                <div class="mlt17">
                    <span class="downmoblie fl"></span>
                    <div class="fl" style="position: relative;">
                        <span id="mobileNumberSpn" class="mobileNumber">手机号</span>
                        <input class="phonenumber" id="PhoneNumber" data-validation-engine="validate[required,custom[phone]]" type="text">
                        <input class="  sendmobile blue-btn" value="下载到手机" type="button">
                    </div>
                </div>
                <div class="mlt15">
                    <span class="downmocomputer fl"></span>
                    <input class="  clickdown blue-btn" value="下载到电脑" type="button">
                </div>

            </div>
        </div>
        <div class="friendlind">
            友情提示:<br>
            1.打开任意可扫描软件（如微信、支付宝、手机浏览器等），启动摄像头扫描二维码即可。<br>
            2.若您的手机像素小于300万，建议换用数码相机拍摄并上传。<br>
            3.建议您在wifi环境下操作。
        </div>
    </form>
</div>

<div id="example" onmouseover="OpenExample();" onmouseout="$(this).hide();" class="delog" style="display: none; position: absolute">
    <div class="delogtit bold">
        参考样图（此为样图，所以有遮蔽，您上传的图片不能有遮蔽和PS处理。）
    </div>
    <div class="delogimgnav ">
        <div class="delogimg">
            <img style="width: 500px;" id="exampleImg">
        </div>
        <div class="iconnav">
            <span id="example_left" style="cursor: pointer;" onclick="javascript:eb.left();">&lt;&lt;上一张</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <span id="example_right" style="cursor: pointer;" onclick="javascript:eb.right();">下一张&gt;&gt;</span>
        </div>
        <div class="dian">
        </div>
        <div class="bottomlistnav">
            <div id="example_description">
            </div>
        </div>
    </div>
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

    <script src="./ppd_uploadinfo_files/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_uploadinfo_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_uploadinfo_files/servicestack-min.js"></script>
    <script src="./ppd_uploadinfo_files/jquery_002.js"></script>
    <script src="./ppd_uploadinfo_files/status" type="text/javascript"></script><script type="text/javascript" src="./ppd_uploadinfo_files/acstatus.js"></script>
    
    <script>
        $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        try {
            $("#tabIcon a[category='" + breadcrumbCategory + "']").addClass("tabon");
        } catch (e) {

        }
    </script>
    

    <script src="./ppd_uploadinfo_files/jquery-migrate-1.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/swfupload_002.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/swfupload.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/fileprogress.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/handlers.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/uploadSetting.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/jquery_004.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/jquery_002.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/ShowExample.htm"></script><div id="ac_quickLogin_pop"></div>
    <script src="./ppd_uploadinfo_files/bootstrap.js"></script>
    <script type="text/javascript" src="./ppd_uploadinfo_files/customize.js"></script>
    <script src="./ppd_uploadinfo_files/validation.js"></script>
    <script src="./ppd_uploadinfo_files/validation-zh.js"></script>



    <script type="text/javascript">
        $(document).ready(function () {

            $("#mobileNumberSpn").live("click", function () {
                $(this).hide();
                $("#PhoneNumber").focus();
            });

            $("#PhoneNumber").live("keyup", function () {
                if ($.trim($(this).val()) == "") {
                    $("#mobileNumberSpn").show();
                } else {
                    $("#mobileNumberSpn").hide();
                }
            });
            $("#PhoneNumber").live("blur", function () {
                if ($.trim($(this).val()) == "") {
                    $("#mobileNumberSpn").show();
                } else {
                    $("#mobileNumberSpn").hide();
                }
            });



            // 补充资料展开收缩切换
            $(".slideToggle").toggle(function () {
                $("#Can_pass").slideDown('fast');
                var height = $('.PPD_header_nav').outerHeight(true) + $('.footer').outerHeight(true) + 95;
                if ($(window).height() == $(document).height()) {
                    $('.main').animate({
                        height: $(window).height() - height
                    }, 200);

                } else {
                    $('.main').animate({
                        height: 'auto'
                    }, 200);
                }
                $.cookie('hasSlideDown', 'true');
                $(".slideToggle").html("补充提交资料，借款更快速！点击收起");
            }, function () {
                $("#Can_pass").slideUp('fast',function() {
                    var height = $('.PPD_header_nav').outerHeight(true) + $('.footer').outerHeight(true) + 95;
                    if ($(window).height() == $(document).height()) {
                       
                        $('.main').animate({
                            height: $(window).height() - height
                        }, 200);
                       
                    } else {
                      
                        $('.main').animate({
                            height: 'auto'
                        }, 200);
                       
                    }
                });
                $.cookie('hasSlideDown', null);
                $(".slideToggle").html("补充提交资料，借款更快速！点击展开");
            });

            if ($.cookie('hasSlideDown') == 'true') {
                $("#Can_pass").slideDown('fast');
                $(".slideToggle").html("补充提交资料，借款更快速！点击收起");
            } else {
                $(".slideToggle").html("补充提交资料，借款更快速！点击展开");
            }

            // 拍了传Android应用下载框提示
            var ajaxpram = {
                funboxPop: function (functionname, remark) {
                    this.functionname = functionname;
                    this.remark = remark;
                    $.post("/actionlog", { useraction: 'pailechuan', functionname: this.functionname, remark: this.remark });
                    var html = $("#div_download").html();
                    $("#a_download").PPDfloatDiv({
                        floatwidth: 622,
                        floatheight: 460,
                        btnshow: false,
                        floatbgtype: true,
                        handertext: '拍了传<span style="font-size:16px;" >（安卓版）</span>',
                        context: html
                    });
                    $("#div_download").html('');
                    $('#modalbackdroptrue').on('hide', function () {
                        $('#div_download').append(html);
                    });
                }
            };

            $("#a_download").click(function () {
                ajaxpram.funboxPop('拍了传窗口弹出框', '上传资料页，直接点击【点击下载】button弹出');
            });

            var downApp = {
                cookieKey: function () {
                    var user = 'pdu11557782';
                    var key = 'info_userdocuments_dlapp_alertcount_' + user;
                    return key;
                },
                cookieOptions: { expires: 1, path: '/', domain: 'www.ppdai.com', secure: false },
                set: function (num, expires) {
                    var that = this;
                    that.cookieOptions.expires = expires;
                    $.cookie(that.cookieKey(), num, that.cookieOptions);
                    that.cookieOptions.expires = 1;
                },
                get: function () {
                    var that = this;
                    return $.cookie(that.cookieKey());
                },
                alertCount: function () {
                    var that = this;
                    var num = that.get();
                    if (num == null) {
                        num = '0';
                    }
                    return num;
                },
                init: function () {
                    var that = this;
                    var num = that.alertCount();
                    switch (num) {
                        case '-1':
                        case '2':
                            //today have alert
                            break;
                        case '1':
                            ajaxpram.funboxPop('拍了传窗口弹出框', '上传资料页，打开时弹出');
                            downApp.set('2', 1);
                            break;
                        case '4':
                            ajaxpram.funboxPop('拍了传窗口弹出框', '上传资料页，关闭上传控件后弹出');
                            downApp.set('2', 1);
                            break;
                        case '0':
                        default:
                            ajaxpram.funboxPop('拍了传窗口弹出框', '上传资料页，打开时弹出');
                            downApp.set('1', 1);
                            break;
                    }
                    $("#form_download").validationEngine();
                },
                setNerverClick: function () {
                    var that = this;
                    that.set('-1', 3650);
                }
            };
            downApp.init();

            $('.sendmobile').live("click", function () {
                var gateway = new servicestack.ClientGateway('http://' + window.location.host);
                $("#form_download").validationEngine();
                if ($("#form_download").validationEngine('validate')) {
                    $.post("/actionlog", { useraction: 'pailechuan', functionname: "拍了传下载", remark: "发送到手机下载" });
                    downApp.setNerverClick();
                    var data = { PhoneNumber: $('#PhoneNumber').val() };
                    gateway.postToService(
                        {
                            DocumentRequest: data
                        }, function (e) {
                            alert("短信已发送!");
                        }, function (e) {
                            alert(e.message);
                        }
                    );
                }
            });
            $('.clickdown').live("click", function () {
                $.post("/actionlog", { useraction: 'pailechuan', functionname: "拍了传下载", remark: "下载到电脑安装" });
                downApp.setNerverClick();
                window.open('http://static.ppdai.com/skin/PPD_Phone.apk?v=1');
            });


            //上传资料

            var swfu;//上传
            var uc;//备注
            var eb;//示例图
            $(".uploadBtn").newWindow({
                windowTitle: "上传文件",
                content: ResetUploadDiv(),
                width: 430,
                draggable: false,
                autoscrool: true,
                backgroundable: true,
                onBtnClosed: closeUploadBox
            });
            function closeUploadBox() {
                if (downApp.alertCount() == '1') {
                    downApp.set('4', 1);
                }
                document.location.reload();
            }
            function ResetUploadDiv() {
                var html = new Array();
                html.push('<div>');
                html.push('<div class="fieldset flash" style="height:200px; overflow:auto" id="fsUploadProgress"></div>');
                html.push('<div id="divStatus"></div>');
                html.push('<div style="padding-left:10px;">');
                html.push('<span id="spanButtonPlaceHolder" style="display:block;height:200px;overflow:auto"></span>');
                html.push('<input id="btnCancel" class="btn" type="button" style="display:none; margin-left:10px;" value="取消上传"');
                html.push('style="margin-left: 2px; font-size: 8pt; height: 29px;" />');
                html.push('<label style="font-size:12px;display:inline"> (按ctrl或shift键可一次上传多图)</label>');
                html.push('</div>');
                html.push('<div class="uploaddescription" style="padding:10px;"><span id="uploadDescription" ></span></div>');
                html.push('</div>');
                return html.join("");
            }

            $(".uploadBtn").click(function () {
                var frontDocumentId = $(this).attr("frontDocumentId");//documentid
                var fileType = $(this).attr("fileType");//文件类型
                var comment = $(this).attr("comment");//文件评论
                var description = $(this).attr("description");//文件描述
                uc = new UserComment("userComment", "updateComment", "saveComment", "cannelComment", comment, frontDocumentId, description);

                var setting = new UploadSetting({
                    ProgressId: "fsUploadProgress",
                    UploadId: "btnUpload",
                    CancelId: "btnCancel",
                    PlaceId: "spanButtonPlaceHolder",
                    Url: "http://" + window.location.host + "/upload",
                    Size: 10,
                    FileCount: 20,
                    Types: fileType,//"*.jpg;*.jpeg;*.gif;*.png;*.giff;*.txt;*.csv";"*.pdf",
                    TypeDesc: "",
                    //CompletedEvent: function () { setTimeout("document.location.reload();", 3000); },
                    Param: { "FrontDocumentId": frontDocumentId, "UpLoadFileType": 1, "UserId": $("#authid").val() }
                });
                swfu = new SWFUpload(setting);
            });

            $("#btnCancel").live("click", function () {
                swfu.cancelQueue();
            });

        });//document

        var UserComment = function (elementId, updateId, saveId, cannelId, comment, frontDocumentId, description) {
            this.ElementId = elementId;
            this.UpdateId = updateId;
            this.SaveId = saveId;
            this.CannelId = cannelId;
            this.FrontDocumentId = frontDocumentId;
            this.EditId = "EditUserComment";
            this.DescriptionId = "uploadDescription";
            this.DefaultComment = "无";
            this.userCommentValue = comment;
            this.Description = description;
            this.init();
        };
        UserComment.prototype = {
            _getId: function (id) {
                return document.getElementById(id);
            },
            init: function () {
                //var userComment = this.userCommentValue == "" ? this._getId(this.ElementId).innerHTML : this.userCommentValue;
                //this._getId(this.ElementId).innerHTML = userComment == "" ? this.DefaultComment : userComment;
                this._getId(this.DescriptionId).innerHTML = this.Description;
            },
            getUserComment: function () {
                this.userCommentValue = this._getId(this.ElementId).innerHTML;
                this.userCommentValue = this.userCommentValue == this.DefaultComment ? "" : this.userCommentValue;
                return this.userCommentValue;
            },
            UpdateUserComment: function () {
                var comment = this.getUserComment();
                var html = '<input id="' + this.EditId + '" type="text" style="width:280px;" value="' + comment + '" />';
                this._getId(this.ElementId).innerHTML = html;
                this.ControlButton(true);
            },
            SaveUserComment: function () {
                this.userCommentValue = this._getId(this.EditId).value;
                this._getIduserCommentValue = this.userCommentValue == this.DefaultComment ? "" : this.userCommentValue;
                this.CannelUserComment();
                $.ajax({
                    url: "FileView.aspx?Type=UpdateUserComment&FrontDocumentId=" + this.FrontDocumentId + "&UserComment=" + escape(this.userCommentValue)
                });
            },
            CannelUserComment: function () {
                this.userCommentValue = this.userCommentValue == "" ? this.DefaultComment : this.userCommentValue;
                this._getId(this.ElementId).innerHTML = this.userCommentValue;
                this.ControlButton(false);
            },
            ControlButton: function (isEdit) {
                this._getId(this.UpdateId).style.display = isEdit ? "none" : "";
                this._getId(this.SaveId).style.display = isEdit ? "" : "none";
                this._getId(this.CannelId).style.display = isEdit ? "" : "none";
            }
        };
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


<div aria-hidden="true" id="modalbackdroptrue" style="width: 622px; left: 45%; display: none;" class="modal hide fade"><div class="modal-header"><a class="close" data-dismiss="modal">×</a><h3>拍了传<span style="font-size:16px;">（安卓版）</span></h3></div><div class="modal-body" style="max-height:460px">
    <form id="form_download">
        <h4 class="downtitle">
            <span class="anytiemtrans">手机也能传资料</span>
        </h4>
        <div class="clearfix" style="padding-top: 20px;">
            <div class="twodimensional float_l">
                <span class="dimensionalcode c39a1ea">立即扫描：</span>
                <div class="dimensionalimg">
                    <img src="./ppd_uploadinfo_files/tookapass.png" alt="" height="150" width="150">
                </div>
            </div>
            <div class="pl27 float_l">
                <span class="downTwo c39a1ea">其他下载方式：</span>
                <div class="mlt17">
                    <span class="downmoblie fl"></span>
                    <div class="fl" style="position: relative;">
                        <span id="mobileNumberSpn" class="mobileNumber">手机号</span>
                        <input class="phonenumber" id="PhoneNumber" data-validation-engine="validate[required,custom[phone]]" type="text">
                        <input class="  sendmobile blue-btn" value="下载到手机" type="button">
                    </div>
                </div>
                <div class="mlt15">
                    <span class="downmocomputer fl"></span>
                    <input class="  clickdown blue-btn" value="下载到电脑" type="button">
                </div>

            </div>
        </div>
        <div class="friendlind">
            友情提示:<br>
            1.打开任意可扫描软件（如微信、支付宝、手机浏览器等），启动摄像头扫描二维码即可。<br>
            2.若您的手机像素小于300万，建议换用数码相机拍摄并上传。<br>
            3.建议您在wifi环境下操作。
        </div>
    </form>
</div></div><div style="display: none;" state="normal" lastheight="200" lastwidth="430" class="window-container modal hide fade in"><div class="window-contain"><div class="window-titleBar modal-header"><div class="window-close"><a class="window-closeButton" href="javascript:void(0);"></a></div><h3>上传文件</h3></div><div class="window-content modal-body"></div></div></div><div style="display: none; visibility: hidden;"><script>(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create","UA-3635664-1","auto");ga("require","displayfeatures");ga("set","\x26uid","pdu11557782");var dimensionValue="SOME_DIMENSION_VALUE";ga("set","dimension1","2014");
ga("set","dimension2","pdu11557782");ga("send","pageview");</script>

<script>var _hmt=_hmt||[];(function(){var a=document.createElement("script");a.src="//hm.baidu.com/hm.js?f87746aec9be6bea7b822885a351b00f";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})();</script>



<script src="./ppd_uploadinfo_files/wpa.php" type="text/javascript" charset="utf-8"></script>
</div></body></html>