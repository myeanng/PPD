<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    <title>资质审核 -拍拍贷-中国首家，最大、最多人使用的互联网金融P2P网络借贷平台。提供小额贷款,短期贷款,个人贷款,自定利率,借期灵活。您还可以成为借出人理财投资,超低门槛，获得高年收益率回报</title>
    <meta name="description" content="拍拍贷，中国首家，最大、最多人使用的互联网金融P2P(人人贷)网络借贷平台。提供小额贷款,短期贷款,个人贷款,抵押,无抵押贷款服务。利率自定,借期灵活。您还可以成为借出人理财借贷投资，获得高年收益率回报，超低门槛，超高收益。作为可信赖的投融资,理财,贷款,信贷平台,拍拍贷助您财富实现增值">
    <meta name="keywords" content="网络贷款,民间借贷,小额贷款,无抵押贷款,信用贷款,网络借贷,借贷平台,拍拍贷,人人贷,投资理财,个人理财,p2p贷款,贷款,互联网金融,投融资">
    <link rel="stylesheet" type="text/css" href="./ppd_audit_files/basic.css">
    <link rel="stylesheet" type="text/css" href="./ppd_audit_files/layout.css">
    <link href="./ppd_audit_files/validation-min.css" rel="stylesheet">
    <link rel="shortcut icon" href="http://www.ppdaicdn.com/favicon.ico" type="image/x-icon">
    <script src="./ppd_audit_files/v.htm" charset="utf-8"></script><script src="./ppd_audit_files/hm.js"></script><script src="./ppd_audit_files/analytics.js" async=""></script><script src="./ppd_audit_files/gtm.js" async=""></script><script src="./ppd_audit_files/newRefer.js"></script>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faab1030ecb68cd7b5c613bd7a5127a40' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="./ppd_audit_files/h.js" type="text/javascript"></script>
    
    <link rel="stylesheet" type="text/css" href="./ppd_audit_files/firstborrow.css">
    <style>
        .create_list_info_success {
            background: url("http://www.ppdaicdn.com/img/cert/cert_icon.png") no-repeat scroll 0 -608px rgba(0, 0, 0, 0);
            color: #69ac0e;
            font-size: 20px;
            height: 50px;
            line-height: 50px;
            margin: 0 auto;
            padding-left: 60px;
            width: 140px;
        }
    </style>

<script src="./ppd_audit_files/ppd_pop.js" type="text/javascript"></script></head>
<body><iframe style="display: none;"></iframe><style type="text/css">.WPA3-SELECT-PANEL { z-index:2147483647; width:463px; height:292px; margin:0; padding:0; border:1px solid #d4d4d4; background-color:#fff; border-radius:5px; box-shadow:0 0 15px #d4d4d4;}.WPA3-SELECT-PANEL * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none; font-family:Microsoft YaHei,Simsun;}.WPA3-SELECT-PANEL a { cursor:auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-TOP { height:25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE { float:right; display:block; width:47px; height:25px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE:hover { background-position:0 -25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-MAIN { padding:23px 20px 45px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-GUIDE { margin-bottom:42px; font-family:"Microsoft Yahei"; font-size:16px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-SELECTS { width:246px; height:111px; margin:0 auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT { float:right; display:block; width:88px; height:111px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat 0 -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT:hover { background-position:-88px -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-AIO-CHAT { float:left;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ { display:block; width:76px; height:76px; margin:6px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat -50px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ-ANONY { background-position:-130px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-LABEL { display:block; padding-top:10px; color:#00a2e6; text-align:center;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-BOTTOM { padding:0 20px; text-align:right;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-INSTALL { color:#8e8e8e;}</style><style type="text/css">.WPA3-CONFIRM { z-index:2147483647; width:285px; height:141px; margin:0; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR0AAACNCAMAAAC9pV6+AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjU5QUIyQzVCNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjU5QUIyQzVDNUIwQTExRTJCM0FFRDNCMTc1RTI3Nzg4Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NTlBQjJDNTk1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NTlBQjJDNUE1QjBBMTFFMkIzQUVEM0IxNzVFMjc3ODgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6QoyAtAAADAFBMVEW5xdCkvtNjJhzf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) no-repeat;}.WPA3-CONFIRM { *background-image:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/panel.png);}.WPA3-CONFIRM * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none;}.WPA3-CONFIRM * { font-family:Microsoft YaHei,Simsun;}.WPA3-CONFIRM .WPA3-CONFIRM-TITLE { height:40px; margin:0; padding:0; line-height:40px; color:#2b6089; font-weight:normal; font-size:14px; text-indent:80px;}.WPA3-CONFIRM .WPA3-CONFIRM-CONTENT { height:55px; margin:0; line-height:55px; color:#353535; font-size:14px; text-indent:29px;}.WPA3-CONFIRM .WPA3-CONFIRM-PANEL { height:30px; margin:0; padding-right:16px; text-align:right;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON { position:relative; display:inline-block!important; display:inline; zoom:1; width:99px; height:30px; margin-left:10px; line-height:30px; color:#000; text-decoration:none; font-size:12px; text-align:center;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON-FOCUS { width:78px;}.WPA3-CONFIRM .WPA3-CONFIRM-BUTTON .WPA3-CONFIRM-BUTTON-TEXT { line-height:30px; text-align:center; cursor:pointer;}.WPA3-CONFIRM-CLOSE { position:absolute; top:7px; right:7px; width:10px; height:10px; cursor:pointer;}</style>
    <div class="top PPD_header_nav">
        <div class="top_inner w1188center clearfix PPD_login_status top"><div class="top_inner w1000center clearfix"><div class="mobileappdownload"><a href="http://www.ppdai.com/landingappdownload.html" target="_blank">下载手机客户端</a></div><ul class="top_toolNav"><li><span>Hi,</span></li><li class="hasStatusArrow"><a href="http://www.ppdai.com/user/pdu11557782">pdu11557782</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://pay.ppdai.com/order/online?from=acstatus">充值</a><a href="http://pay.ppdai.com/trade/cashwithdrawal?from=acstatus">提现</a></div></li><li class="ml08" style="margin-left:0"><a href="http://ac.ppdai.com/user/logout" class="fz14">[退出]</a></li><li class="ml08"><a href="http://msg.ppdai.com/Message" class="fz14 ac_status_msg2014">消息(2)</a></li><li class="hasStatusArrow"><a href="http://help.ppdai.com/" class="fz14">帮助</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://www.ppdai.com/consult">客服</a><a href="http://group.ppdai.com/">论坛</a></div></li></ul></div></div>
    </div>

    <div class="mainNav">
        <div class="mainNav_inner w1000center clearfix">
            <h1 class="logo">
                <a href="http://www.ppdai.com/">
                    <img src="./ppd_audit_files/logo.png" alt=""></a>
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
        <div class="main_con">
            <span class="title">申请贷款</span>
            <div class="basic_infor clearfix">
                <div class="process_info">
                    <span class="one cur">填写个人信息</span>
                    <i class="arrow cur"></i>
                    <span class="two cur">发布借款信息</span>
                    <i class="arrow cur"></i>
                    <span class="three cur">资质审核</span>
                </div>
                


               <iframe src="./ppd_audit_files/miniuserbind2014.htm" border="0" style="margin-top:5px;width:100%;" frameborder="no"></iframe>

                <span class="info_title">填写联系人（请确保联系人填写准确，为了联系不到您，作为紧急联系人。无需负担保责任。）</span>
                <div class="audit_info">
                    <form class="clearfix" id="my_contactway">
                        <ul class="audit_L">
                            <li class="clearfix"><em>直系联系人姓名：</em><input id="secondRealName" name="secondRealName" class="txt01" style="width: 154px;" type="text"></li>
                            <li class="clearfix"><em>直系联系人手机：</em><input id="secondPhone" maxlength="11" name="secondPhone" class="txt01" style="width: 154px;" type="text"></li>
                            <li class="clearfix"><em>其他联系人姓名：</em><input id="thirdRealName" name="thirdRealName" class="txt01" style="width: 154px;" type="text"></li>
                            <li class="clearfix"><em>其他联系人手机：</em><input id="thirdPhone" maxlength="11" name="thirdPhone" class="txt01" style="width: 154px;" type="text"></li>
                        </ul>
                        <ul class="audit_R">
                            <li class="clearfix"><em>关系：</em>
                                <select data-validation-engine="validate[required]" class="selct" id="secondRelationships" name="secondRelationships"><option selected="selected" value="">--请选择--</option>
<option value="1">配偶</option>
<option value="3">父母</option>
<option value="4">兄弟姐妹</option>
<option value="7">其他亲戚</option>
<option value="5">朋友</option>
<option value="6">同事</option>
</select>

                            </li>
                            <li class="clearfix"><em>关系：</em>
               
                                <select data-validation-engine="validate[required]" class="selct" id="thirdRelationships" name="thirdRelationships"><option selected="selected" value="">--请选择--</option>
<option value="1">配偶</option>
<option value="3">父母</option>
<option value="4">兄弟姐妹</option>
<option value="7">其他亲戚</option>
<option value="5">朋友</option>
<option value="6">同事</option>
</select>
                            </li>
                        </ul>

                        <div class="sure_btn clearfix" style="clear: both;">
                            <a href="javascript:void(0)" id="a_contact" class="save_btn">保存</a>
                        </div>
                    </form>
                    
                    
                    
                        <span class="info_title">上传资料</span>
                        <input id="authid" value="5127223" type="hidden">
                        <table class="data_info" border="0" cellpadding="0" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th width="303">资料类型</th>
                                    <th width="110">图片</th>
                                    <th width="200">最近上传时间</th>
                                    <th width="190">未通过理由</th>
                                    <th>状态</th>
                                </tr>
                            </thead>
                        
                                <tbody><tr>
                                    <td>
                                        <p>
                                            身份证：本人身份证的正、反两面照片，本人手持身份证合照共计三张照片
                                            <span description="资料要求:1、上传本人二代身份证正反面照片及本人与身份证合照，图片文字需清晰可见。图片尺寸需要小于10M。身份证上的所有信息清晰可见，必须能看清证件号。照片需免冠，建议未化妆，手持证件人的五官清晰可见。照片内容真实有效，不得做任何修改。2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" class="altQust" title="" style="background: url(http://www.ppdaicdn.com/2014/img/wenhao.png) no-repeat;display: inline-block;width: 14px;height: 14px;position: relative;top: 2px;left: 6px;" onmouseout="hideExample(this);" frontdocumentid="1" onmouseover="OpenExample(this);"></span>
                                        </p>
                                        <img src="./ppd_audit_files/firstdocuments.png">
                                        <i onmouseover="OpenExample(this);" frontdocumentid="1" onmouseout="hideExample(this);" description="资料要求:1、上传本人二代身份证正反面照片及本人与身份证合照，图片文字需清晰可见。图片尺寸需要小于10M。身份证上的所有信息清晰可见，必须能看清证件号。照片需免冠，建议未化妆，手持证件人的五官清晰可见。照片内容真实有效，不得做任何修改。2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。"></i>
                                        <i class="f12">请勿将图片ps合并，请一张张单独上传。</i>
                                    </td>
                                    <td><a class="blue" href="http://www.ppdai.com/viewfile/1">(0)张</a></td>
                                    <td><i class="date"></i></td>
                                    <td></td>
                                    
                                    <td class="noline"> <a class="linkbutton" frontdocumentid="1" description="资料要求:1、上传本人二代身份证正反面照片及本人与身份证合照，图片文字需清晰可见。图片尺寸需要小于10M。身份证上的所有信息清晰可见，必须能看清证件号。照片需免冠，建议未化妆，手持证件人的五官清晰可见。照片内容真实有效，不得做任何修改。2、资料请由照相机或高清手机拍摄，并将照片原图上传。请勿将照片剪切或修改，请勿上传复印件或扫描件。" filetype="*.jpg;*.jpeg;*.gif;*.png;*.giff" comment="" href="javascript:void(0);">上传资料</a><a class="phoneico" id="a_download" href="javascript:;">手机</a></td>
                           
                                </tr>

                
                        </tbody></table> 

              

                </div>
            </div>
        </div>
        
                               <div class="sure_btn">
                                   <input name="btnsubmit" id="btnsubmit" value="提交贷款申请" class="next_Btn" type="button">
                               </div>

    </div>
    <div id="div_download" style="display: none;">
        <form id="form_download" style="margin: 0 0 18px;">
            <h4 class="downtitle">
                <span class="anytiemtrans">手机也能传资料</span>
            </h4>
            <div class="clearfix" style="padding-top: 20px;">
                <div class="twodimensional float_l">
                    <span class="dimensionalcode c39a1ea">立即扫描：</span>
                    <div class="dimensionalimg">
                        <img src="./ppd_audit_files/tookapass.png" alt="" height="150" width="150">
                    </div>
                </div>
                <div class="pl27 float_l">
                    <span class="downTwo c39a1ea">其他下载方式：</span>
                    <div class="mlt17">
                        <span class="downmoblie fl"></span>
                        <div class="fl" style="position: relative; float: left;">
                            <input class="phonenumber" id="PhoneNumber" data-validation-engine="validate[required,custom[phone]]" type="text">
                            <input class="  sendmobile blue-btn" value="下载到手机" type="button">
                        </div>
                    </div>
                    <div class="mlt15">
                        <span class="downmocomputer fl"></span>
                        <input class=" clickdown blue-btn" value="下载到电脑" type="button">
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
    <iframe src="./ppd_audit_files/cookie.htm" style="height: 1px; width: 1px; position: absolute; left: 0pt; top: 0pt; margin-left: -100px;"></iframe>
    <div id="example" onmouseover="OpenExample();" onmouseout="$(this).hide();" class="delog" style="display: none;position: absolute;">
        <div class="delogtit bold" style="background: #66a1e9;border: 1px solid #3f7cbb;color: #333;font-size: 12px;height: 30px;line-height: 30px;padding-left:15px;width: 495px; ">
            参考样图（此为样图，所以有遮蔽，您上传的图片不能有遮蔽和PS处理。）
        </div>
        <div class="delogimgnav " style="background: #fff;border: 1px solid #ccc;width: 510px;">
            <div class="delogimg" style="width: 500px;background: #666;height: auto;margin-top: 5px;margin-left: auto;margin-right: auto; ">
                <img style="width: 500px;" id="exampleImg">
            </div>
            <div class="iconnav" style="color:#999;font-size: 12px;height: 30px;line-height:30px;text-align: center;">
                <span id="example_left" style="cursor: pointer;" onclick="javascript:eb.left();">&lt;&lt;上一张</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <span id="example_right" style="cursor: pointer;" onclick="javascript:eb.right();">下一张&gt;&gt;</span>
            </div>
            <div class="dian" style="background: url(http://www.ppdaicdn.com/img/bjbz/bjbz2012/dian.png) repeat-x 0 5px;height: 10px;width: 100%;">
            </div>
            <div class="bottomlistnav" style="color: #666;font-size: 12px;padding: 10px;">
                <div id="example_description" style="color:#666;font-size: 12px;">
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

    <script src="./ppd_audit_files/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_audit_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_audit_files/servicestack-min.js"></script>
    <script src="./ppd_audit_files/jquery_002.js"></script>
    <script src="./ppd_audit_files/status" type="text/javascript"></script><script type="text/javascript" src="./ppd_audit_files/acstatus.js"></script>
    
    <script>
        $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        try {
            $("#tabIcon a[category='" + breadcrumbCategory + "']").addClass("tabon");
        } catch (e) {

        }
    </script>
    
        <script src="./ppd_audit_files/jquery.js" type="text/javascript" charset="utf-8"></script>
        <script src="./ppd_audit_files/init.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript" src="./ppd_audit_files/customize_002.js"></script>
        <script src="./ppd_audit_files/bootstrap.js"></script>
        <script src="./ppd_audit_files/servicestack-min.js"></script><div id="ac_quickLogin_pop"></div>
        <script src="./ppd_audit_files/jquery_002.js"></script>
        <script src="./ppd_audit_files/ppd_checkform.js" type="text/javascript" charset="utf-8"></script>
       <script src="./ppd_audit_files/firstborrow3.js" type="text/javascript" charset="utf-8"></script>
       

       <script type="text/javascript" src="./ppd_audit_files/swfupload.js"></script>
    <script type="text/javascript" src="./ppd_audit_files/swfupload_002.js"></script>
    <script type="text/javascript" src="./ppd_audit_files/fileprogress.js"></script>
    <script type="text/javascript" src="./ppd_audit_files/handlers.js"></script>
    <script type="text/javascript" src="./ppd_audit_files/uploadSetting.js"></script>
    <script type="text/javascript" src="./ppd_audit_files/jquery_003.js"></script>
       <script type="text/javascript" src="./ppd_audit_files/showExample.js"></script>
      <script src="./ppd_audit_files/customize.js" type="text/javascript" charset="utf-8"></script>


        <script type="text/javascript">
            var ss;
            $(document).ready(function () {
                
                $(document).PPDqustion({ BtnId: 'submitbtn', TextId: 'Description', tit: '亲爱的拍友们，为了给您提供最好的服务，请留下您宝贵的意见和建议，以便我们改正。' });
                $("#submitbtn").click(function () {
                    var description = $("#Description").val();
                    $.post("/common/feedback", { description: description, categoryId: "21" }, function (e) {
                        $(".fankui_emsg").html(e.Message);
                        $("#Description").val(""); //清空内容
                    });
                });


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
                $("#10003").addClass("tabon");
                $("select").each(function () {
                    $(this).attr('data-validation-engine', 'validate[required]');
                });

                $("#opco").toggle(
                    function () {
                        ss = $("#content_nav").height();
                        $("#content_nav").css('height', 'auto');
                        $("#contact").animate({ height: "330px" }, 500);
                        $(this).text('点击收起');
                    },
                    function () {
                        $("#contact").animate({ height: "0px" }, 500);
                        $(this).text('点击展开');
                        $("#content_nav").css('height', ss + 'px');
                    }
                );
           
            $("#documentTable").find("tr:even").css("background-color", "rgb(250,250,250)");
            var swfu;
            //上传
            var uc;
            //备注
            var eb;
            //示例图

            $(".linkbutton").newWindow({
            windowTitle: "上传文件",
            content: ResetUploadDiv(),
            width: 430,
            draggable: false,
            autoscrool: true,
            backgroundable: true,
            onBtnClosed: closeUploadBox
        });

            function ResetUploadDiv() {
                var html = new Array();
                html.push('<div>');
                html.push('<div class="fieldset flash" style="height:200px; overflow:auto" id="fsUploadProgress"></div>');
                html.push('<div id="divStatus"></div>');
                html.push('<div style="padding-left:10px;">');
                html.push('<span id="spanButtonPlaceHolder" style="display:block;height:200px;overflow:auto"></span>');
                html.push('<input id="btnCancel" class="btn" type="button" style="display:none; margin-left:10px;" value="取消上传" onclick="swfu.cancelQueue();"');
                html.push('style="margin-left: 2px; font-size: 8pt; height: 29px;" />');
                html.push('<label style="font-size:12px;display:inline"> (按ctrl或shift键可一次上传多图)</label>');
                html.push('</div>');
                html.push('<div class="uploaddescription" style="padding:10px;"><span id="uploadDescription" ></span></div>');
                html.push('</div>');
                return html.join("");
            }

             $(".linkbutton").click(function () {
             var frontDocumentId = $(this).attr("frontDocumentId");
             var fileType = $(this).attr("fileType");
             var comment = $(this).attr("comment");
             var description = $(this).attr("description");
             uc = new UserComment("userComment", "updateComment", "saveComment", "cannelComment", comment, frontDocumentId, description);
 
             var setting = new UploadSetting({
                 ProgressId: "fsUploadProgress",
                 UploadId: "btnUpload",
                 CancelId: "btnCancel",
                 PlaceId: "spanButtonPlaceHolder",
                 Url: "http://" + window.location.host + "/upload",
                 Size: 10,
                 FileCount: 20,
                 Types: fileType,//"*.jpg;*.jpeg;*.gif;*.png;*.giff;*.txt;*.csv",
                 TypeDesc: "",
                 //CompletedEvent: function () { setTimeout("document.location.reload();", 3000); },
                 Param: { "FrontDocumentId": frontDocumentId, "UpLoadFileType": 1, "UserId": $("#authid").val() }
             });
 
             swfu = new SWFUpload(setting);
 
         });

            var ajaxpram = {
                BoxpopFun: function (functionname, remark) {
                    this.functionname = functionname;
                    this.remark = remark;
                    $.post("/actionlog", { useraction: 'pailechuan', functionname: functionname, remark: remark });
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
                    $('#modalbackdroptrue').css({'left':'50%','margin-left':'-311px'});
                    $('#modalbackdroptrue').on('hide', function () {
                        $('#div_download').append(html);
                    });
                }
            };


            // 拍了传Android应用下载框提示
            $("#a_download").click(function () {
                ajaxpram.BoxpopFun("拍了传窗口弹出框", "资质审核页，直接点击手机icon弹出");
            });

            var downApp = {
                cookieKey: function () {
                    var user = 'zhengken';
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
                        case '3':
                            ajaxpram.BoxpopFun("拍了传窗口弹出框", "资质审核页，关闭上传控件后弹出");
                            downApp.set('2', 1);
                            $("#form_download").validationEngine();
                            break;
                    }
                },
                setNerverClick: function () {
                    var that = this;
                    that.set('-1', 3650);
                }
            };
            if (downApp.alertCount() == '0') {
                downApp.set('0', 1);
            } else {
                downApp.init();
            }


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


            function closeUploadBox() {
                if (downApp.alertCount() == '0' || downApp.alertCount() == '1' || downApp.alertCount() == '4') {
                    downApp.set('3', 1);
                }

                document.location.reload();

            }

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

            function downshow() {
                $("#downnav").show();
            }

            function closenav() {
                $("#downnav").hide();
            }

            var gateway = new servicestack.ClientGateway('http://' + window.location.host);
                
            $("#a_contact").click(function () {
                $('#secondRealName,#secondPhone,#thirdRealName,#thirdPhone').blur();
                $('#secondRelationships,#thirdRelationships').change();
                if ($('.Wrong').length > 0) return;
                $("#a_contact").attr("disabled", true);
                $("#a_contact").text("正在提交...");
                var data = {
                    UserContactSecond: { RealName: $("#secondRealName").val(), RelationshipId: $("#secondRelationships").val(), Phone: $("#secondPhone").val() },
                    UserContactThird: { RealName: $("#thirdRealName").val(), RelationshipId: $("#thirdRelationships").val(), Phone: $("#thirdPhone").val() }
                };
                gateway.postToService(
                    {
                        UserContactRequest: data
                    }, function (e) {
                        alert(e.ResponseStatus.Message);
                        $("#a_contact").attr("disabled", false);
                        $("#a_contact").text("保存");
                        if ($("#IsShowSecondGroup").length > 0) {
                            ss = $("#content_nav").height();
                            $("#content_nav").css('height', 'auto');
                            $("#contact").animate({ height: "330px" }, 500);
                            $("#opco").text('点击收起');
                        }
                    }, function (e) {
                        alert(e.message);
                        $("#a_contact").attr("disabled", false);
                        $("#a_contact").text("保存");
                    }
                );
            });
            $("#btnsubmit").click(function () {
                if ($('.Wrong').length > 0) return;
                $(this).attr("disabled", true);
                $(this).val("正在提交...");
                gateway.postToService(
                    {
                        FirstDocumentsRequest: {}
                    }, function (e) {
                        $(this).PPDfloatDiv({
                            floatbgtype: true,
                            handertext: '提交贷款申请成功',
                            truebtnid: 'btnGo',
                            context: "<div style='width:400px;'><div style='margin:20px 0 20px 0;'>" + e.ResponseStatus.Message + "</div><div style='width:300px;margin:0 auto;padding-bottom:20px;'><a href='/info/userdocuments' class='btn btn-primary' style='margin-left:120px;width:80px'>立即上传</a></div></div>",
                            btnshow: false,
                            share: false
                        });
                        $("#btnsubmit").attr("disabled", false);
                        $('#modalbackdroptrue').on('hide', function () {
                            $('#divSubmit').html("<div class=\"create_list_info_success\">已提交贷款申请</div>");
                        });
                    }, function (e) {

                        $(this).PPDfloatDiv({
                            floatbgtype: true,
                            btnshow: false,
                            handertext: '提交贷款申请失败',
                            context: "<div>" + e.message + "<br/></div>"
                        });
                        $("#btnsubmit").attr("disabled", false);
                        $("#btnsubmit").text("提交贷款申请");
                        $("#btnGo").click(function () {
                            $('#modalbackdroptrue').modal('hide');
                        });
                        $('#modalbackdroptrue').on('hide', function () {
                            $("#btnsubmit").val("提交贷款申请");
                        });
                    }
                );
            });
            //$("#btnSubmitContactSecondGroup").click(function() {
            //    if ($("#contactSecondGroup").validationEngine('validate')) {
            //        $("#btnSubmitContactSecondGroup").attr("disabled", true);
            //        $("#btnSubmitContactSecondGroup").text("正在提交...");
            //        var data = {
            //            UserContactFourth: { RealName: $("#contactRealName2").val(), RelationshipId: $("#contactRelationships2").val(), Phone: $("#contactPhone2").val() },
            //            UserContactFifth: { RealName: $("#contactRealName3").val(), RelationshipId: $("#contactRelationships3").val(), Phone: $("#contactPhone3").val() },
            //            UserContactSixth: { RealName: $("#contactRealName4").val(), RelationshipId: $("#contactRelationships4").val(), Phone: $("#contactPhone4").val() },
            //            IsSecondGroup: true
            //        };
            //        gateway.postToService(
            //            {
            //                UserContactRequest: data
            //            }, function(e) {
            //                alert(e.ResponseStatus.Message);
            //                location.reload();
            //                $("#btnSubmitContactSecondGroup").attr("disabled", false);
            //                $("#btnSubmitContactSecondGroup").text("确定");
            //            }, function(e) {
            //                alert(e.message);
            //                $("#btnSubmitContactSecondGroup").attr("disabled", false);
            //                $("#btnSubmitContactSecondGroup").text("确定");
            //            }
            //        );
            //    }
            //});
            $("#btnValidateCode").click(function () {

                $('#btnValidateCode').attr("disabled", true);
                var data = { BindType: "Add", ValidateType: "Mobile", Step: "Third", Mobile: $("#MobilePhone").val(), Source: 1 };
                gateway.putToService(
                    {
                        MobileRequestNew: data
                    }, function (e) {
                        alert(e.ResponseStatus.Message);
                        remainTime('#btnValidateCode');
                    }, function (e) {
                        alert(e.message);
                        $('#btnValidateCode').attr("disabled", false);
                    }
                );
            });

            $("#btnSubmitValidateCode").click(function () {

                $('#btnSubmitValidateCode').attr("disabled", true);
                var data = { BindType: "Add", ValidateType: "Mobile", Step: "Fourth", Mobile: $("#MobilePhone").val(), ValidateCode: $("#txtValidateCode").val() };
                gateway.postToService(
                    {
                        MobileRequestNew: data
                    }, function (e) {
                        alert(e.ResponseStatus.Message);
                        $('#btnSubmitValidateCode').attr("disabled", false);
                        location.reload();
                    }, function (e) {
                        if (e.errorCode == "511") {
                            if (e.message.indexOf("成功") > 0) {
                                location.reload();
                            }

                            alert(e.message);
                        } else {
                            alert(e.message);
                        }
                        $('#btnSubmitValidateCode').attr("disabled", false);
                    }
                );
            });
            });
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


<div id="ppd_checkform_overlay" style="display:none;text-align:center;position:absolute;z-index:2000;left:0;top:0;background:black;cursor:hand"><img src="./ppd_audit_files/null.htm" id="ppd_checkformCheckAjaxForm_image"></div><div class="fixedBtn"><span rel="nofollow" href="javascript:void(0)" class="feedback" title="欢迎给拍拍贷找问题和提建议～">意见反馈</span><div class="feedbackTips fb-open hide green" style="display: none; "> 反馈已发送！ </div><div class="feedbackCnt fb-open" style=" display:block;margin-right: -350px"><div style="margin-bottom: 8px;font-weight: bold;">您的反馈对我们至关重要！</div><textarea name="feedbackCnt" id="Description" placeholder="亲爱的拍友们，为了给您提供最好的服务，请留下您宝贵的意见和建议，以便我们改正。"></textarea><span class="button button-green button-medium" id="submitbtn" style="color:#fff">提交反馈</span><span style="margin-left:5px;" class="fankui_emsg"></span></div></div><div style="display: none;" state="normal" lastheight="200" lastwidth="430" class="window-container modal hide fade in"><div class="window-contain"><div class="window-titleBar modal-header"><div class="window-close"><a class="window-closeButton" href="javascript:void(0);"></a></div><h3>上传文件</h3></div><div class="window-content modal-body"></div></div></div><div style="display: none; visibility: hidden;"><script>(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create","UA-3635664-1","auto");ga("require","displayfeatures");ga("set","\x26uid","pdu11557782");var dimensionValue="SOME_DIMENSION_VALUE";ga("set","dimension1","2014");
ga("set","dimension2","pdu11557782");ga("send","pageview");</script>

<script>var _hmt=_hmt||[];(function(){var a=document.createElement("script");a.src="//hm.baidu.com/hm.js?f87746aec9be6bea7b822885a351b00f";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})();</script>



<script src="./ppd_audit_files/wpa.php" type="text/javascript" charset="utf-8"></script>
</div></body></html>
