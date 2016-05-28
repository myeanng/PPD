<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>账户提现 -拍拍贷-中国首家，最大、最多人使用的互联网金融P2P网络借贷平台。提供小额贷款,短期贷款,个人贷款,自定利率,借期灵活。您还可以成为借出人理财投资,超低门槛，获得高年收益率回报</title>
    <meta name="description" content="拍拍贷，中国首家，最大、最多人使用的互联网金融P2P(人人贷)网络借贷平台。提供小额贷款,短期贷款,个人贷款,抵押,无抵押贷款服务。利率自定,借期灵活。您还可以成为借出人理财借贷投资，获得高年收益率回报，超低门槛，超高收益。作为可信赖的投融资,理财,贷款,信贷平台,拍拍贷助您财富实现增值">
    <meta name="keywords" content="网络贷款,民间借贷,小额贷款,无抵押贷款,信用贷款,网络借贷,借贷平台,拍拍贷,人人贷,投资理财,个人理财,p2p贷款,贷款,互联网金融,投融资">
    <link rel="stylesheet" type="text/css" href="./ppd_withdraw_files/basic.css">
    <link rel="stylesheet" type="text/css" href="./ppd_withdraw_files/layout.css">
    <link rel="stylesheet" type="text/css" href="./ppd_withdraw_files/index.css">
    <link rel="stylesheet" type="text/css" href="./ppd_withdraw_files/account.css">
    <link href="./ppd_withdraw_files/validation-min.css" rel="stylesheet">
    <script src="./ppd_withdraw_files/ga.js" async="" type="text/javascript"></script><script src="./ppd_withdraw_files/jquery-1.js"></script>
    <script src="./ppd_withdraw_files/jquery-migrate-1.js"></script>
    <script src="./ppd_withdraw_files/jquery_002.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_withdraw_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_withdraw_files/servicestack-min.js"></script>
    <script src="./ppd_withdraw_files/bootstrap.js"></script>
    <script src="./ppd_withdraw_files/jquery_003.js"></script>
    <script src="./ppd_withdraw_files/newRefer.js"></script>
    <link rel="shortcut icon" href="http://www.ppdaicdn.com/favicon.ico" type="image/x-icon">
    
<script src="./ppd_withdraw_files/jquery.js" type="text/javascript"></script><script src="./ppd_withdraw_files/ppd_pop.js" type="text/javascript"></script><script src="./ppd_withdraw_files/hubs" type="text/javascript"></script><script src="./ppd_withdraw_files/acstatus_hub.js" type="text/javascript"></script></head>
<body>
    <div class="top PPD_header_nav">
        <div class="PPD_login_status top"><div class="top_inner w1000center clearfix"><div class="mobileappdownload"><a href="http://www.ppdai.com/landingappdownload.html" target="_blank">下载手机客户端</a></div><ul class="top_toolNav"><li><span>Hi,</span></li><li class="hasStatusArrow"><a href="http://www.ppdai.com/user/pdu11557782">pdu11557782</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://pay.ppdai.com/order/online?from=acstatus">充值</a><a href="http://pay.ppdai.com/trade/cashwithdrawal?from=acstatus">提现</a></div></li><li class="ml08" style="margin-left:0"><a href="http://ac.ppdai.com/user/logout" class="fz14">[退出]</a></li><li class="ml08"><a href="http://msg.ppdai.com/Message" class="fz14 ac_status_msg2014">消息(2)</a></li><li class="hasStatusArrow"><a href="http://help.ppdai.com/" class="fz14">帮助</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://www.ppdai.com/consult">客服</a><a href="http://group.ppdai.com/">论坛</a></div></li></ul></div></div>
    </div>
     <!--头部开始-->
    <div class="mainNav">
        <div class="mainNav_inner clearfix w1000center">
            <h1 class="logo">
                <a href="http://www.ppdai.com/"><img src="./ppd_withdraw_files/logo.png" alt=""></a>
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

                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/account" class="tabon" category="Account">我的账户</a>
                    <div class="subMenu">
                        <a href="http://www.ppdai.com/account/borrow">借款账户</a>
                        <a href="http://www.ppdai.com/account/lend">投资账户</a>
                    </div>
                </li>
                <li class="hasSubMenu">
                    <a href="http://www.ppdai.com/help/aboutus" category="About">关于我们</a>
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

    <!--头部结束-->
    


<div class="w100per maintop"></div>
<div class="my-frame">
    <div class="clearfix">
        

<div>
    <ul class="breadcrumb" style="border: none !important;">
        <li><a href="http://www.ppdai.com/">首页</a> <span class="divider">&gt;</span></li>
            <li><a href="http://www.ppdai.com/account/borrow">我的账户-我是借款者</a> <span class="divider">&gt;</span></li>
                    <li><a href="http://pay.ppdai.com/trade/cashWithDrawal">账户提现</a></li>
    </ul>
</div>
<script>
    var breadcrumbCategory = "Account";
</script>

        

<div class="clearfix"></div>
<div class="my-f-left fl">
    <div class="my-f-l-nav">我的账户</div>
    <ul class="my-f-l-list">
            <li><a href="http://www.ppdai.com/account/borrow">我的账户首页</a></li>

    </ul>
    <div class="my-f-l-nav my-f-l-nav-sd">资金管理</div>
    <ul class="my-f-l-list">
        <li><a href="http://www.ppdai.com/moneyhistory">资金记录</a></li>
            <li><a href="http://pay.ppdai.com/order/online">充值</a></li>

            <li><a href="http://pay.ppdai.com/trade/cashWithDrawal" class="on">提现</a></li>
    </ul>
        <div class="my-f-l-nav">借款管理</div>
        <ul class="my-f-l-list">
            <li><a href="http://www.ppdai.com/account/repaymentlist">我的借款</a></li>
            <li><a href="http://www.ppdai.com/user/auth/videouser">信息认证</a></li>
            <li><a href="http://www.ppdai.com/info/userdetail">基本资料</a></li>
            <li><a href="http://www.ppdai.com/info/userdocuments">上传资料</a></li>
        </ul>

    <div class="my-f-l-nav">账户设置</div>
    <ul class="my-f-l-list">
        <li><a href="http://ac.ppdai.com/safe/setting">账户安全</a></li>
        <li><a href="http://ac.ppdai.com/user/accountbind">关联账户</a></li>
    </ul>
    <div class="my-f-l-nav">市场推广</div>
    <ul class="my-f-l-list">
        <li><a href="http://www.ppdai.com/account/spread">有奖推广</a></li>
        <li><a href="http://www.ppdai.com/account/paimoney/market?menu">拍币兑换</a></li>
    </ul>
</div>


        <div class="my-f-right fr">
            <div class="my-ac-tx-rframe" style="border: solid 1px #d5d5d5;">
                <div class="my-ac-tx-balance mt0 clearfix">
                    <span class="fl">可用余额：<span class="my-ac-balanceNum">¥0.00</span></span>
                    <span class="mr20 fr">
                        <a style="cursor: pointer;" class="my-ac-tx-add c666666 addbank">添加银行卡</a>
                    </span>
                </div>
                <div class="cardbox_nav clearfix">
                    <div class="fl" style="width: 94px; padding-right: 10px; line-height: 48px; font-size: 14px; text-align: right;">选择银行卡：</div>
                    <div class="cardbox_list fl">
                            <p style="margin: 0; width: 635px; height: 48px; border: solid 1px #bfcfe5; background: #f0f6f9;">
                                <a class="cd-add addbank">添加银行卡</a>
                            </p>
                            <input value="0" name="BankAccountId" id="BankAccountId" type="hidden">
                        <div class="cd-list">


                                <div class="cd-items" id="jscd-items" style="height:0px">
                                                                            <div class="cd-itembg choose-list-bg" style="top: 5px; z-index: 10; display: none;"></div>
                                        <div class="cd-itembg choose-list-bg" style="top: 10px; z-index: 9; display: none;"></div>
                                        <div class="choose-more clearfix" style="display: none;">
                                            <a class="link fl">选择其他银行</a>
                                            <span class="fl ps">* 银行卡必须为“*振林”的借记卡，否则无法提现</span>
                                        </div>
                                </div>

                        </div>
                    </div>
                    
                </div>
                <!--<div class="ps"></div></div>-->
                <div class="amount_nav clearfix">
                    <div class="tit fl">提现金额：</div>
                    <div class="fl">
                        <input name="WithdrawAmount" id="WithdrawAmount" placeholder="限额49999元/次" maxlength="8" class="my-ac-rc-jine fl" type="text"><span class="my-ac-rc-yuan fl">元</span>
                    </div>
                </div>
                <div class="paychannel_nav clearfix">
                    <div class="tit fl">提现方式：</div>
                    <div class="jue jue_on fl" onclick="changemoney(0)">1-3个工作日到账</div>
                    <input name="CrawWithType" id="txtCrawWithType" value="0" type="hidden">
                </div>
                <div class="shoufei_nav">
                    <div class="tit">
                        提现费用：<span><span class="inormal">3</span>元笔（<a href="javascript:void(0)" id="Withdrawrule" class="c39a1ea">收费规则</a>）</span>
                        <table class="ruletable">
                            <tbody><tr style="background: #f8f8f8; height: 22px;">
                                <td colspan="3">第三方收取
                                </td>
                            </tr>
                            <tr style="color: #666; height: 22px; border: 1px solid #e5e5e5;">
                                <td style="border: 1px solid #e5e5e5; width: 120px;">提现金额</td>
                                <td style="border: 1px solid #e5e5e5; width: 100px;">工作日当天到账</td>
                                <td style="border: 1px solid #e5e5e5; width: 130px">1-3工作日到账</td>
                            </tr>
                            <tr style="color: #666; height: 22px; border: 1px solid #e5e5e5;">
                                <td style="border: 1px solid #e5e5e5;">0-3W（含）</td>
                                <td style="border: 1px solid #e5e5e5;">10元/笔</td>
                                <td style="border: 1px solid #e5e5e5;">3元/笔（VIP 3元/笔）</td>
                            </tr>
                            <tr style="color: #666; height: 22px;">
                                <td style="border: 1px solid #e5e5e5; width: 30px;">3-5W（均不含）</td>
                                <td style="border: 1px solid #e5e5e5;">20元/笔</td>
                                <td style="border: 1px solid #e5e5e5;">6元/笔（VIP 3元/笔）</td>
                            </tr>
                        </tbody></table>
                    </div>
                </div>

                    <p class="txc">
                        <input id="Button1" name="name" value="申请提现" disabled="disabled" class="my-gray-btn my-ac-nongt-nextstep mt30" type="button">
                    </p>
                    <p class="my-ac-non-grtxt">
                        为了方便您熟悉还款/充值流程，首次提现前，
                        请您至少<span class="c39a1ea"><a href="http://pay.ppdai.com/Order/online" style="color: #39a1ea">即时充值0.1元</a></span>激活账户。谢谢您的配合！
                    </p>
            </div>
            <div class="instant_recharge_three">
                <div>
                    温馨说明：
                </div>
                <ul>
                    <li>1、请确保您输入银行帐号信息准确无误。</li>
                    <li>2、如果您填写的提现信息不正确可能会导致提现失败，由此产生的提现费用将不予返还。</li>
                    <li>3、双休日和法定节假日期间，用户可以申请提现，拍拍贷会在下一个工作日进行处理。由此造成的不便，请多多谅解！</li>
                    <li>4、平台禁止洗钱、信用卡套现、虚假交易等行为，一经发现并确认，将终止该账户的使用。</li>
                </ul>
            </div>
        </div>

    </div>
</div>
<div class="cover"></div>
<div class="remind_withdraw" style="display: none;">
    <div class="remind_withdraw_title">温馨提示</div>
    <div class="remind_withdraw_content">
        <div class="remind_withdraw_content_title">
            客官，提现后每年将损失897元收益呢。能告诉我们取现的原因吗?
        </div>
        <p class="remind_withdraw_content_option">
            <input name="check" value="没有适合我的标的投资" type="radio">没有适合我的标的投资
        </p>
        <p class="remind_withdraw_content_option">
            <input name="check" value="我希望有更高的收益" type="radio">我希望有更高的收益
        </p>
        <p class="remind_withdraw_content_option">
            <input name="check" value="逾期的情况比我想象中多" type="radio">逾期的情况比我想象中多
        </p>
        <p class="remind_withdraw_content_option">
            <input name="check" value="需要用钱" type="radio">需要用钱
        </p>
        <p class="remind_withdraw_content_option">
            <input name="check" value="操作麻烦" type="radio">操作麻烦
        </p>
        <p class="remind_withdraw_content_option">
            <input name="check" value="有其他的投资方式" type="radio">有其他的投资方式
        </p>
        <p class="remind_withdraw_content_option">
            <input name="check" class="other_option" value="其他" type="radio">其他
        </p>
        <textarea class="remind_withdraw_content_textBox" name=""></textarea>
    </div>
    <div class="remind_withdraw_buttonBox">
        <a href="javascript:;" class="remind_withdraw_button blue remind_withdraw_close">先不提了</a>
        <a href="javascript:;" class="remind_withdraw_button gray remind_withdraw_submit">继续提现</a>
    </div>
    <div class="remind_withdraw_error"></div>
    <a href="javascript:;" class="remind_withdraw_close">×</a>
</div>
<script type="text/javascript" src="./ppd_withdraw_files/customize.js"></script>
<script src="./ppd_withdraw_files/withdraw.js"></script>
<script type="text/javascript">
    var userLevel = parseInt('0');
    $(document).ready(function () {
        $("#10003").attr('class', 'tabon');
        $("#10003013").attr('class', 'li_on');
    });
</script>

    <div class="clear">
    </div>
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
    
    <script>
        $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        $("#tabIcon a[category='" + breadcrumbCategory + "']").addClass("tabon");
    </script>
    <script src="./ppd_withdraw_files/status" type="text/javascript"></script><script type="text/javascript" src="./ppd_withdraw_files/acstatus.js"></script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-3635664-1']);
        _gaq.push(['_setDomainName', 'ppdai.com']);
        _gaq.push(['_setAllowHash', false]);
        _gaq.push(["_addOrganic", "baidu", "word"]);
        _gaq.push(["_addOrganic", "soso", "w"]);
        _gaq.push(["_addOrganic", "soso", "key"]);
        _gaq.push(["_addOrganic", "sogou", "query"]);
        _gaq.push(["_addOrganic", "sogou", "keyword"]);
        _gaq.push(['_addOrganic', 'youdao', 'q']);
        _gaq.push(["_addOrganic", "so.com", "q"]);
        _gaq.push(["_addOrganic", "m.baidu.com", "word"]);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faab1030ecb68cd7b5c613bd7a5127a40' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="./ppd_withdraw_files/h.js" type="text/javascript"></script>



<div id="ac_quickLogin_pop"></div></body></html>