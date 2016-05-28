<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
<title>设置安全问题</title>
<meta name="description" content="拍拍贷，中国首家，最大、最多人使用的互联网金融P2P(人人贷)网络借贷平台。提供小额贷款,短期贷款,个人贷款,抵押,无抵押贷款服务。利率自定,借期灵活。您还可以成为借出人理财借贷投资，获得高年收益率回报，超低门槛，超高收益。作为可信赖的投融资,理财,贷款,信贷平台,拍拍贷助您财富实现增值">
<meta name="keywords" content="网络贷款,民间借贷,小额贷款,无抵押贷款,信用贷款,网络借贷,借贷平台,拍拍贷,人人贷,投资理财,个人理财,p2p贷款,贷款,互联网金融,投融资">
<link href="./ppd_question_files/basic.css" rel="stylesheet" type="text/css">
<link href="./ppd_question_files/layout.css" rel="stylesheet" type="text/css">


<link href="./ppd_question_files/account.css" rel="stylesheet" type="text/css">
<link href="./ppd_question_files/bindAccount.css" rel="stylesheet" type="text/css">


<script src="./ppd_question_files/v.htm" charset="utf-8"></script><script src="./ppd_question_files/hm.js"></script><script src="./ppd_question_files/analytics.js" async=""></script><script src="./ppd_question_files/jquery.js" type="text/javascript"></script><script src="./ppd_question_files/ppd_pop.js" type="text/javascript"></script><script src="./ppd_question_files/hubs" type="text/javascript"></script><script src="./ppd_question_files/acstatus_hub.js" type="text/javascript"></script></head>
<body><iframe style="display: none;"></iframe><style type="text/css">.WPA3-SELECT-PANEL { z-index:2147483647; width:463px; height:292px; margin:0; padding:0; border:1px solid #d4d4d4; background-color:#fff; border-radius:5px; box-shadow:0 0 15px #d4d4d4;}.WPA3-SELECT-PANEL * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none; font-family:Microsoft YaHei,Simsun;}.WPA3-SELECT-PANEL a { cursor:auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-TOP { height:25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE { float:right; display:block; width:47px; height:25px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE:hover { background-position:0 -25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-MAIN { padding:23px 20px 45px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-GUIDE { margin-bottom:42px; font-family:"Microsoft Yahei"; font-size:16px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-SELECTS { width:246px; height:111px; margin:0 auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT { float:right; display:block; width:88px; height:111px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat 0 -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT:hover { background-position:-88px -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-AIO-CHAT { float:left;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ { display:block; width:76px; height:76px; margin:6px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat -50px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ-ANONY { background-position:-130px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-LABEL { display:block; padding-top:10px; color:#00a2e6; text-align:center;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-BOTTOM { padding:0 20px; text-align:right;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-INSTALL { color:#8e8e8e;}</style><style type="text/css">.WPA3-CONFIRM { z-index:2147483647; width:285px; height:141px; margin:0; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR0AAACNCAMAAAC9pV6+AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjU5QUIyQzVCNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjU5QUIyQzVDNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NTlBQjJDNTk1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NTlBQjJDNUE1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6QoyAtAAADAFBMVEW5xdCkvtNjJhzf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) no-repeat;}.WPA3-CONFIRM { *background-image:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/panel.png);}.WPA3-CONFIRM * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none;}.WPA3-CONFIRM * { font-family:Microsoft YaHei,Simsun;}.WPA3-CONFIRM .WPA3-CONFIRM-TITLE { height:40px; margin:0; padding:0; line-height:40px; color:#2b6089; font-weight:normal; font-size:14px; text-indent:80px;}.WPA3-CONFIRM .WPA3-CONFIRM-CONTENT { height:55px; margin:0; line-height:55px; color:#353535; font-size:14px; text-indent:29px;}.WPA3-CONFIRM .WPA3-CONFIRM-PANEL { height:30px; margin:0; padding-right:16px; text-align:right;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON { position:relative; display:inline-block!important; display:inline; zoom:1; width:99px; height:30px; margin-left:10px; line-height:30px; color:#000; text-decoration:none; font-size:12px; text-align:center;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON-FOCUS { width:78px;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON .WPA3-CONFIRM-BUTTON-TEXT { line-height:30px; text-align:center; cursor:pointer;}.WPA3-CONFIRM-CLOSE { position:absolute; top:7px; right:7px; width:10px; height:10px; cursor:pointer;}</style>
    <!--头部-->
    <div class="PPD_header_nav" style="margin-bottom: 0;">
        <div class="PPD_login_status top"><div class="top_inner w1000center clearfix"><div class="mobileappdownload"><a href="http://www.ppdai.com/landingappdownload.html" target="_blank">下载手机客户端</a></div><ul class="top_toolNav"><li><span>Hi,</span></li><li class="hasStatusArrow"><a href="http://www.ppdai.com/user/pdu11557782">pdu11557782</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://pay.ppdai.com/order/online?from=acstatus">充值</a><a href="http://pay.ppdai.com/trade/cashwithdrawal?from=acstatus">提现</a></div></li><li class="ml08" style="margin-left:0"><a href="http://ac.ppdai.com/user/logout" class="fz14">[退出]</a></li><li class="ml08"><a href="http://msg.ppdai.com/Message" class="fz14 ac_status_msg2014">消息(2)</a></li><li class="hasStatusArrow"><a href="http://help.ppdai.com/" class="fz14">帮助</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://www.ppdai.com/consult">客服</a><a href="http://group.ppdai.com/">论坛</a></div></li></ul></div></div>
    </div>
    <div class="mainNav">
        <div class="mainNav_inner clearfix w1000center">
            <h1 class="logo">
                <a href="http://www.ppdai.com/">
                    <img src="./ppd_question_files/logo.png" alt="ppdai logo">
                </a>
            </h1>
            <ul id="tabIcon">
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/lend">我要投资</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/lend">我要借出</a>
                        <a href="http://www.ppdai.com/product/list">彩虹计划</a>
                        <a href="http://www.ppdai.com/debtdeal/AlldebtList/DebtList">如何借出</a>
                        <a href="http://www.ppdai.com/help/principalprotection">本金保障</a>
                    </div>
                </li>
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/borrow">我要借款</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/borrow">我要借入</a>
                        <a href="http://www.ppdai.com/help/howtoborrow.html">如何借入</a>
                        <a href="http://www.ppdai.com/borrow/interestcalculate">利息计算器</a>
                    </div>
                </li>
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/account" class="tabon">我的账户</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/account/borrow">借款账户</a>
                        <a href="http://www.ppdai.com/account/lend">投资账户</a>
                    </div>
                </li>
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/help/aboutus">关于拍拍贷</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/help/aboutus">关于我们</a>
                        <a href="http://www.ppdai.com/help/howworks">工作原理</a>
                        <a href="http://www.ppdai.com/help/fees">资费说明</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!--头部结束-->
    



<div class="main" style="padding-top: 10px;margin-bottom: 20px;">
    <div class="my-frame">
        


<div>
    <ul class="breadcrumb" style="border: none !important;">
                    <li><a href="http://ac.ppdai.com/">首页</a> <span class="divider">&gt;</span></li>
                        <li><a href="http://www.ppdai.com/account/lend">我的账户-我是借出者</a> <span class="divider">&gt;</span></li>
                        <li class="active">设置安全问题</li>

    </ul>
</div>

        <div class="clearfix">
            <!-- Left Nav -->
            


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
        <div class="my-f-l-nav">借款管理</div>
        <ul class="my-f-l-list">
            <li><a href="http://www.ppdai.com/account/repaymentlist">我的借款</a></li>
            <li><a href="http://www.ppdai.com/user/auth/videouser">信息认证</a></li>
            <li><a href="http://www.ppdai.com/info/userdetail">基本资料</a></li>
            <li><a href="http://www.ppdai.com/info/userdocuments">上传资料</a></li>
        </ul>
    <div class="my-f-l-nav my-f-l-nav-sd">账户设置</div>
    <ul class="my-f-l-list">
        <li><a href="http://ac.ppdai.com/safe/setting" class="on">安全中心</a></li>
        <li><a href="http://ac.ppdai.com/user/accountbind" class="">关联账户</a></li>
    </ul>
    <div class="my-f-l-nav">市场推广</div>
    <ul class="my-f-l-list">
        <li><a href="http://www.ppdai.com/account/spread">有奖推荐</a></li>
        <li><a href="http://www.ppdai.com/account/paimoney/market?menu">拍币兑换</a></li>
    </ul>
</div>

            <!-- Right -->
            <div class="ml20 my-f-right fl">
                <div class="my-f-r-safty bdradius0">
                    <div class="my-f-r-sf-title c666">设置安全问题</div>
                        <div class="my-fr-sf-saftyQuestion">
                            <p>安全问题是基础安全工具，可作为二次验证的备选方案，建议<span>认真填写</span>。</p>
                            <table>
                                <tbody><tr>
                                    <th>问题一：</th>
                                    <td>
                                        <select id="QuestionId1" name="QuestionId1" onchange="change(0);">
                                            
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                        <option value="">--请选择--</option><option title="1" value="您父亲的出生地是哪里?">您父亲的出生地是哪里?</option><option selected="selected" title="2" value="您出生的医院是哪间?">您出生的医院是哪间?</option><option title="3" value="您成长的街道叫什么路?">您成长的街道叫什么路?</option><option title="5" value="您的初恋情人叫什么名字?">您的初恋情人叫什么名字?</option><option title="6" value="您就职的第一间公司叫什么名称?">您就职的第一间公司叫什么名称?</option><option title="7" value="您的双亲姓名叫什么?">您的双亲姓名叫什么?</option><option title="9" value="您父亲的生日是哪一天?">您父亲的生日是哪一天?</option><option title="10" value="您的父亲的姓名是？">您的父亲的姓名是？</option><option title="11" value="您的母亲的姓名是？">您的母亲的姓名是？</option><option title="12" value="您的配偶的姓名是？">您的配偶的姓名是？</option><option title="13" value="您最后就读的学校名是？">您最后就读的学校名是？</option></select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>回答：</th>
                                    <td><input id="Answer1" name="Answer1" type="text"></td>
                                </tr>
                                <tr>
                                    <th>问题二：</th>
                                    <td>
                                        <select id="QuestionId2" name="QuestionId2" onchange="change(1);">
                                            
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                        <option value="">--请选择--</option><option title="1" value="您父亲的出生地是哪里?">您父亲的出生地是哪里?</option><option title="3" value="您成长的街道叫什么路?">您成长的街道叫什么路?</option><option selected="selected" title="4" value="您就读的第一所学校名称是?">您就读的第一所学校名称是?</option><option title="5" value="您的初恋情人叫什么名字?">您的初恋情人叫什么名字?</option><option title="6" value="您就职的第一间公司叫什么名称?">您就职的第一间公司叫什么名称?</option><option title="7" value="您的双亲姓名叫什么?">您的双亲姓名叫什么?</option><option title="9" value="您父亲的生日是哪一天?">您父亲的生日是哪一天?</option><option title="10" value="您的父亲的姓名是？">您的父亲的姓名是？</option><option title="11" value="您的母亲的姓名是？">您的母亲的姓名是？</option><option title="12" value="您的配偶的姓名是？">您的配偶的姓名是？</option><option title="13" value="您最后就读的学校名是？">您最后就读的学校名是？</option></select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>回答：</th>
                                    <td><input id="Answer2" name="Answer2" type="text"></td>
                                </tr>
                                <tr>
                                    <th>问题三：</th>
                                    <td>
                                        <select id="QuestionId3" name="QuestionId3" onchange="change(2);">
                                            
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                        <option value="">--请选择--</option><option title="1" value="您父亲的出生地是哪里?">您父亲的出生地是哪里?</option><option title="3" value="您成长的街道叫什么路?">您成长的街道叫什么路?</option><option title="5" value="您的初恋情人叫什么名字?">您的初恋情人叫什么名字?</option><option title="6" value="您就职的第一间公司叫什么名称?">您就职的第一间公司叫什么名称?</option><option title="7" value="您的双亲姓名叫什么?">您的双亲姓名叫什么?</option><option selected="selected" title="8" value="您母亲的生日是哪一天?">您母亲的生日是哪一天?</option><option title="9" value="您父亲的生日是哪一天?">您父亲的生日是哪一天?</option><option title="10" value="您的父亲的姓名是？">您的父亲的姓名是？</option><option title="11" value="您的母亲的姓名是？">您的母亲的姓名是？</option><option title="12" value="您的配偶的姓名是？">您的配偶的姓名是？</option><option title="13" value="您最后就读的学校名是？">您最后就读的学校名是？</option></select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>回答：</th>
                                    <td><input id="Answer3" name="Answer3" type="text"></td>
                                </tr>
                            </tbody></table>
                            <div class="subBtn clearfix">
                                <input class="sub" id="setquestion" value="提交" type="button">
                                <input class="cancel" id="cancel" value="取消" type="button">
                            </div>
                        </div>
                </div>
                <p class="formExplain oneRowFormExplain">
                    温馨提示：1.请设置容易记忆的安全问题，并定期重新设置，避免遗忘。2.请不要向外人透露您的安全问题答案。
                </p>
            </div>
        </div>
    </div>
</div>
<input id="hid_type" type="hidden">
<script src="./ppd_question_files/gtm.js" async=""></script><script type="text/javascript">
    var questionlist = ["您父亲的出生地是哪里?","您出生的医院是哪间?","您成长的街道叫什么路?","您就读的第一所学校名称是?","您的初恋情人叫什么名字?","您就职的第一间公司叫什么名称?","您的双亲姓名叫什么?","您母亲的生日是哪一天?","您父亲的生日是哪一天?","您的父亲的姓名是？","您的母亲的姓名是？","您的配偶的姓名是？","您最后就读的学校名是？"];
</script>



    <!--底部-->
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
<!--底部结束-->

    <script src="./ppd_question_files/jquery_002.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_question_files/status" type="text/javascript" charset="utf-8"></script><script type="text/javascript" src="./ppd_question_files/acstatus.js"></script>
    <script src="./ppd_question_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        });
    </script>
    
<script type="text/javascript">
    $(document).ready(function () {
        if ($("#QuestionId1").length>0){
            change();
        }

        $("#setquestion").click(function () {
            var answer1 = $("#Answer1").val();
            var answer2 = $("#Answer2").val();
            var answer3 = $("#Answer3").val();
            var questionId1 = $("#QuestionId1 option:selected").attr('title');
            var questionId2 = $("#QuestionId2 option:selected").attr('title');
            var questionId3 = $("#QuestionId3 option:selected").attr('title');
            if (answer1.length == 0 || answer2.length == 0 || answer3.length == 0) {
                alert("请输入答案");
                return;
            }
            if (answer1 == answer2 || answer1 == answer3 || answer2 == answer3) {
                alert("答案不能相同");
                return;
            }
            if (questionId1==0 || questionId2==0 || questionId3==0) {
                alert("请选择问题类型");
                return;
            }

            var data = {
                QuestionId1: questionId1,
                Answer1: answer1,
                QuestionId2: questionId2,
                Answer2: answer2,
                QuestionId3: questionId3,
                Answer3: answer3,
                Type: $('#hid_type').val()
            };
            $.post("/userbind/setsafequestion", data, function(res){
                alert(res.Message);
                if(res.Code == 1){
                    location.href = "/userbind/setsafequestion";
                } else {
                    //alert(res.Message);
                }
            });
        });

        $("#cancel").click(function () {
            location.href = '/userbind/setsafequestion';
        });
    });

    //选项内容：['问题1', '问题2', '问题3', '问题4', '问题5', '问题6'];
    var questions = questionlist;
    //当前被选中的值：
    var currentValue = new Array();

    var selectobj = ['QuestionId1', 'QuestionId2', 'QuestionId3'];

    function selid(id) {
        return document.getElementById(id);
    }
    function init() {
        for (var j = 0; j < selectobj.length; j++) {
            //清除原先选项：
            selid(selectobj[j]).options.length = 0;
            //添加选项：
            var oOption = document.createElement("option");
            var text = "--请选择--";
            var value = "";
            oOption.text = text;
            oOption.value = value;
            selid(selectobj[j]).add(oOption);

            for (var i = 0; i < questions.length; i++) {
                var oOption = document.createElement("option");
                oOption.text = questions[i];
                oOption.value = questions[i];

                selid(selectobj[j]).add(oOption);
            }
        }
    }
    function collectVlue() {
        var currentobj = null;
        for (var j = 0; j < selectobj.length; j++) {
            currentobj = selid(selectobj[j]);
            if(currentobj){
                currentValue[j] = currentobj.value;
            }
        }
    }
    function change(i) {
        if (i != 10000) {
            collectVlue();
        }
        for (var j = 0; j < selectobj.length; j++) {
            //清除原先选项：
            selid(selectobj[j]).options.length = 0;
            //添加选项：
            var oOption = document.createElement("option");
            var text = "--请选择--"
            var value = "";
            oOption.text = text;
            oOption.value = value;
            selid(selectobj[j]).add(oOption);

            for (var i = 0; i < questions.length; i++) {

                var available = true; //选项是否被占用
                for (var k = 0; k < currentValue.length; k++) {
                    if (questions[i] == currentValue[k] && j != k) {
                        available = false;
                        break;
                    }
                }
                if (available) {
                    var oOption = document.createElement("option");
                    oOption.text = questions[i];
                    oOption.value = questions[i];
                    oOption.title = i + 1;
                    selid(selectobj[j]).add(oOption);
                }
            }
            //选中项：
            //$(selectobj[j]).value=currentValue[j];
            setSelect(selectobj[j], currentValue[j]);
        }
    }
    //使select选中特定值：
    function setSelect(id, value) {
        for (var i = 0; i < selid(id).options.length; i++) {
            if (selid(id).options[i].value == value) {
                selid(id).selectedIndex = i;
                break;
            }
        }
    }
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
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fcfc74b94210e27ea643566ddece504a7' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="./ppd_question_files/h.js" type="text/javascript"></script><div id="ac_quickLogin_pop"></div>

<div style="display: none; visibility: hidden;"><script>(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create","UA-3635664-1","auto");ga("require","displayfeatures");ga("set","\x26uid","pdu11557782");var dimensionValue="SOME_DIMENSION_VALUE";ga("set","dimension1","2014");
ga("set","dimension2","pdu11557782");ga("send","pageview");</script>

<script>var _hmt=_hmt||[];(function(){var a=document.createElement("script");a.src="//hm.baidu.com/hm.js?f87746aec9be6bea7b822885a351b00f";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})();</script>



<script src="./ppd_question_files/wpa.php" type="text/javascript" charset="utf-8"></script>
</div></body></html>
