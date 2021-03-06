<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>拍拍贷官网_中国领先互联网金融P2P网贷平台_网络贷款_投资理财</title>
    <meta name="description" content="拍拍贷-中国领先互联网金融P2P网贷平台 提供网络贷款，投资理财 小额贷款,短期贷款,个人贷款,无抵押贷款服务 拍拍贷理财借贷投资，获得高年收益率回报，超低门槛，超高收益" />
    <meta name="keywords" content="拍拍贷,拍拍贷官网,P2P网贷,互联网金融,网络贷款,投资理财" />
    <link rel="stylesheet" type="text/css" href="./ppd_default_files/basic.css" />
    <link rel="stylesheet" type="text/css" href="./ppd_default_files/layout.css" />
    <link href="./ppd_default_files/validation-min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="./ppd_default_files/favicon.ico" type="image/x-icon" />
    <script src="./ppd_default_files/newRefer.js"></script>
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Faab1030ecb68cd7b5c613bd7a5127a40' type='text/javascript'%3E%3C/script%3E"));
    </script>
    
    <link rel="stylesheet" type="text/css" href="./ppd_default_files/index.css" />
    <script>
        var userAgentInfo = navigator.userAgent;
        var Agents = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPod");
        var flag = true;
        var lolhref = window.location.href;
        
        if (lolhref.indexOf("fromwap") != -1) {
            if (getCookie("wapvisted") == null) {
                addCookie('wapvisted', '1', 365,'/', 'www.ppdai.com');
            }
        }
        if (getCookie("wapvisted") == null) {
            for (var v = 0; v < Agents.length; v++) {
                if (userAgentInfo.indexOf(Agents[v]) > 0) {
                    window.location.href = 'http://wap.ppdai.com/';
                }
            }
        }
        
        //获取cookie
        function getCookie(name) {
            var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
            if (arr = document.cookie.match(reg))

                return unescape(arr[2]);
            else
                return null;
        }
        
        //添加cookie
        function addCookie(name, value, expires, path, domain) {
            var str = name + "=" + escape(value);
            if (expires != "") {
                var date = new Date();
                date.setTime(date.getTime() + expires * 24 * 3600 * 1000);//expires单位为天
                str += ";expires=" + date.toGMTString();
            }
            if (path != "") {
                str += ";path=" + path;//指定可访问cookie的目录
            }
            if (domain != "") {
                str += ";domain=" + domain;//指定可访问cookie的域
            }
            document.cookie = str;
        }
        
    </script>

</head>
<body>
    <div class="top PPD_header_nav">
         <div class="top_inner w1188center clearfix PPD_login_status"><div style="width: 1188px;" class="top_inner w1000center clearfix"><div class="mobileappdownload"><a href="http://www.ppdai.com/landingappdownload.html" target="_blank">下载手机客户端</a></div><ul class="top_toolNav"><li><a href="javascript:switchUI(2013);">切换旧版</a></li><li class="w68"><a href="login.jsp">登录</a></li><li class="w68 mr15"><a href="zhuce.jsp">注册</a></li><li class="hasStatusArrow"><a href="http://help.ppdai.com" class="fz14">帮助</a><em class="statusArrow statusArrowDown"></em><div class="subContent"><a href="http://www.ppdai.com/consult">客服</a><a href="http://group.ppdai.com">论坛</a></div></li></ul></div></div>
    </div>

    <div class="mainNav">
        <div class="mainNav_inner w1188center clearfix">
            <h1 class="logo">
                <a href="/PPD">
                    <img src="./ppd_default_files/logo.png" alt="" /></a>
            </h1>
            <ul id="tabIcon">
                <li class="hasSubMenu">
                    <a href="loan/loanfindall" category="Lend">我要投资</a>
                    <div class="subMenu">
                        <a href="loan/loanfindall">我要投资</a>
                        <a href="howtolend.jsp">如何投资</a>
                    </div>
                </li>
                <li class="hasSubMenu">
                    <a href="woyaojiekuan.jsp" category="Borrow">我要借款</a>
                    <div class="subMenu">
                        <a href="woyaojiekuan.jsp">我要借款</a>
                        <a href="howtoborrow.jsp">如何借款</a>
                        <a href="lixijisuanqi.jsp">利息计算器</a>
                    </div>
                </li>
                <li class="hasSubMenu"><a href="myAccount-baccount" category="Account">我的账户</a>
                    <div class="subMenu">
                        <a href="myAccount-baccount">借款账户</a>
                        <a href="myAccount-laccount">投资账户</a>
                    </div>
                </li>
                <li class="hasSubMenu"><a href="/help/aboutus" category="About">关于拍拍贷</a>
                    <div class="subMenu">
                        <a href="/help/aboutus">关于我们</a>
                        <a href="/help/howworks">工作原理</a>
                        <a href="/help/fees">资费说明</a>
                        <a href="/job">招贤纳士</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    
<!-- 顶部占位符-->

	<div class="slideBanner">
		<div id="kinMaxShow">
  
  
    <div>
          <a target="_blank" title="拍钱包:新年大回馈" href="http://www.ppdai.com/event/huodong4.html?a=sy"><img src="./ppd_default_files/c5835e24-c6c4-4340-95c2-04606e890375.jpg" /></a>
    </div>

    <div>
          <a target="_blank" title="拍拍贷理财app,让投资尽在掌握" href="http://www.ppdai.com/landingappdownload.html"><img src="./ppd_default_files/62583339-bffc-4028-b524-c0f9b9e206d8.jpg" /></a>
    </div>
  
    <div>
          <a title="触手可及的金融"><img src="./ppd_default_files/8162a4a9-8bbb-4807-b35f-fd65a33db12b.jpg" /></a>
    </div>
  
    <div>
        <a target="_blank" title="彩虹计划,7种期限任你选" href="http://www.ppdai.com/product/plan/rainbow"><img src="./ppd_default_files/3ddea793-b6f0-40f5-ba5f-1659ec16df53.jpg" /></a>
    </div>
  
    <div>
        <a title="拍拍贷微信"><img src="./ppd_default_files/banner_wxcode.jpg" /></a>
    </div>
      
</div>

<div class="bannerRight">
    <div class="inner">
        <div class="title">
            <h3>
                简单、快速、借得到！
            </h3>
            <p>
                  <!--人数--><strong xid="0">${countUsers}</strong>人发现拍拍贷
            </p>
        </div>
        <div class="content">
            <h3>
                拍拍贷历史年化收益率
            </h3>
            <p>
                平均<strong>12%-20%</strong>
            </p>
        </div><a href="/lend" class="bannerA pos1">我要投资</a><a href="/borrow" class="bannerA pos2">我要借款</a>
    </div>
</div>
	</div>
<div class="index_propaganda">
    <div class="wrap clearfix">
        <div class="index_propaganda_left">
            <div class="part" style="width: 136px">
                <img src="./ppd_default_files/safe.png" alt="" />
                <h3>安全</h3>
                <p>风险备用金计划</p>
                <p>安全有保障</p>
            </div>
            <div class="part" style="width: 136px">
                <img src="./ppd_default_files/professional.png" alt="" />
                <h3>专业</h3>
                <p>规范操作：七年历史</p>
                <p>最多用户的选择</p>
            </div>
            <div class="part" style="width: 145px;">
                <img src="./ppd_default_files/tuhao.png" alt="" />
                <h3>有钱</h3>
                <p>无论是资金，还是收益</p>
                <p>拍拍贷总能让你有钱</p>
            </div>
        </div>

            <!--数据统计-->
        <div class="index_propaganda_right">
    <div class="inner">
        <div class="tag pos1">
            至今
        </div>
        <h3>
            ${countUsers}
        </h3>
        <p>
            人发现并注册拍拍贷
        </p>
        <div class="tag pos2">
            上月
        </div>
        <div class="info">
            <strong>${countLoan}</strong>人次借款
        </div>
        <div class="info">
        	<strong>${countInvest}</strong>人次投资
        </div>
    </div>
</div>
    </div>

    <div class="wrap clearfix">
        <div class="index_propaganda_left bgno1">
        </div>
        <div class="index_propaganda_right" style="margin-top: 23px;">
            <h4>谁在报道拍拍贷 <a href="/help/mediareports">more&gt;</a></h4>
            <a href="/help/mediareports" class="media"></a>
        </div>
    </div>
</div>

<div class="index_info">
    <div class="wrap clearfix">
        <div class="infoLeft">
            <div class="tabNav">
                <ul class="clearfix">
                    <li class="first current">投资信息</li>
                    <li class="second">借款信息</li>
                </ul>
            </div>
            <div class="tabContent">
                <!--投资信息-->
                <div class="borrowInfo" style="display: block;">
                
                
                	<c:forEach items="${loanList}" var="loan" begin="0" end="2">
                		<div class="part">
                            <div class="borrowInfo_title clearfix">
                                <div class="sum clearfix"><i></i><span>剩余金额：&#165;${loan.loanmoney-loan.raise}</span></div>
                                <div class="name clearfix"><i></i><span></span></div>
                            </div>
                            <div class="borrowInfo_detail clearfix">
                                <div class="borrowInfo_detail_left">
                                    
                                    
                                    <a href="http://help.ppdai.com/Home/List/12" target="_blank"><i class="creditRating AA"></i></a>
                                    <a href="loan/findLoanById?loanid=${loan.loanid}" class="lendTitle ell">${loan.title}</a>
                                    <p>
                                        <span>借款金额：</span>
                                        <strong>&#165;${loan.loanmoney}</strong>
                                        <span>年利率：</span>
                                        <strong>${loan.rate*100}<em>%</em></strong>
                                        <span>借款期限：</span>
                                        <strong class="nomr">${loan.loantime}<em>个月</em></strong>
                                    </p>
                                </div>
                                <div class="borrowInfo_detail_right">
                                    <div class="borrowInfo_detail_right_percentInfo clearfix">
                                        <div class="borrowInfo_detail_right_percentInfo_percent">
                                            <div class="inner" style="width:${loan.raise*100/loan.loanmoney}%"></div>
                                        </div>
                                        <span>
                                        	<fmt:formatNumber value="${loan.raise*100/loan.loanmoney}" maxFractionDigits="2"></fmt:formatNumber>%
                                        </span>
                                    </div>
                                    <a href="loan/findLoanById?loanid=${loan.loanid}" class="lendBtn">马上投标</a>
                                </div>
                            </div>
                        </div>
                	</c:forEach>
                
                
                        

                    <a href="/lend" class="indexTabVierMore">查看更多投资信息&gt;</a>
                </div>


                <!--借款信息-->
                <div class="lendInfo" style="display: none;">
                    <div class="part">
                        <h3 class="title blue">普通贷款标 — 适用工薪族
                        </h3>
                        <div class="lendInfo_detailInfo clearfix">
                            <ul>
                                <li>21~55周岁中国大陆公民</li>
                                <li>需有稳定收入来源证明</li>
                                <li>最快1天到账</li>
                            </ul>
                            <a href="/borrow/createlist/1" class="quickApply">立即申请</a>
                        </div>
                    </div>

                    <div class="part">
                        <h3 class="title yellow">网商用户标 — 为网商卖家进货、参加活动以及资金周转而设
                        </h3>
                        <div class="lendInfo_detailInfo clearfix">
                            <ul>
                                <li>21~55周岁中国大陆公民</li>
                                <li>需通过网商认证</li>
                                <li>借款额度根据店铺经营情况调整，最高可达50万</li>
                            </ul>
                            <a href="/borrow/createlist/2" class="quickApply">立即申请</a>
                        </div>
                    </div>

                    <div class="part">
                        <h3 class="title red">莘莘学子标 — 适用大学生
                        </h3>
                        <div class="lendInfo_detailInfo clearfix">
                            <ul>
                                <li>19~25周岁中国大陆公民</li>
                                <li>需通过学籍和视频认证</li>
                                <li>首次申请全额还款后拍拍贷全额退还成交服务费</li>
                            </ul>
                            <a href="/borrow/createlist/7" class="quickApply">立即申请</a>
                        </div>
                    </div>
                    <a href="/borrow" class="indexTabVierMore">查看更多借款信息&gt;</a>
                </div>

            </div>
        </div>


        <div class="infoRight">
            <div class="part">
                <h4>最新公告	<a href="/help/announcementlist">more&gt;</a></h4>
                <script type="text/javascript" src="./ppd_default_files/newnotice.js"> </script>
            </div>

            <div class="part">
                <h4>公司资讯	<a href="/help2/mediaReports">more&gt;</a></h4>
                <script type="text/javascript" src="./ppd_default_files/newmediareport.js"> </script>

            </div>

            <div class="part pos">



                <a href="/borrow/interestcalculate"><span></span>利息计算器</a>
            </div>

        </div>
    </div>
</div>

<div class="index_case w1188center clearfix">

    <div class="index_case_case">
        <div class="img">
            <a href="http://www.ppdai.com/lend/12">
                <img src="./ppd_default_files/indexcase1.jpg" alt="" /></a>
            <div class="text">
                <p><a href="http://www.ppdai.com/lend/12">我算是拍拍贷的老用户。他们这里理念很好，就是教育大家分散风险，多投点标，每标的金额小一点。如果你确实这么操作了，公司会提供本金保障。我现在累计投了快2000笔，收益13%左右，还不是最高的，我会继续投下去。</a></p>

            </div>
        </div>
        <div class="explain">
            <h3>投资信用标<br />
                眼光决定收益！</h3>
            <p>
                享受每天自助投资乐趣<br />
                年化收益可达16%<br />
                每月还本付息，<br />
                超低门槛，最低50元可体验
            </p>
        </div>
    </div>

    <div class="index_case_case">
        <div class="img">
            <a href="http://www.ppdai.com/product/list">
                <img src="./ppd_default_files/indexcase2.jpg" alt="" /></a>
            <div class="text">
                <p><a href="http://www.ppdai.com/product/list">之前听朋友介绍拍拍贷，但是我平时工作比较忙，没时间选标。最近推出的这种“彩虹计划”就很不错，一次性投资，投资资金参与本金保障计划，预期年化收益率最高可达12%。我已经抢购了几期，现在就等着到期来收钱了。</a></p>
            </div>
        </div>
        <div class="explain">
            <h3>彩虹计划<br />
                省心省力，坐享其成！</h3>
            <p>
                省心省力，坐享其成！一键轻松购买，省去每天选标烦恼<br />
                预期年化收益率最高12%，稳定收益<br />
                7种期限选择，投资资金参与本金保障计划<br />
                低门槛，1000元起购
            </p>
        </div>
    </div>

    <div class="index_case_weixin">
        <div class="img">

            <img src="./ppd_default_files/indexcase3.jpg" alt="" />
        </div>
        <div class="explain">
            <h3>扫描关注<br />
                拍拍贷微信</h3>
            <p>年化8% + 稳定收益</p>
        </div>
    </div>

</div>
<!-- 底部占位符-->


    <div class="clear">
    </div>

    <div class="footer">
            <div class="footer_inner clearfix">
                <div class="footer_footerNav">
                    <dl>
                        <dt>关于拍拍贷</dt>
                        <dd><a href="http://www.ppdai.com/help/pioneer">拍拍贷团队</a></dd>
                        <dd><a href="http://www.ppdai.com/help/mediaReports">媒体报道</a></dd>
                        <dd><a href="http://www.ppdai.com/job">招贤纳士</a></dd>
                        <dd><a href="http://www.ppdai.com/help/contactus">联系我们</a></dd>
                    </dl>
                    <dl>
                        <dt>业务信息</dt>
                        <dd><a href="http://www.ppdai.com/borrow">我要借款</a></dd>
                        <dd><a href="http://www.ppdai.com/lend/12">我要投资</a></dd>
                    </dl>
                    <dl>
                        <dt>诚信保障</dt>
                        <dd><a href="http://www.ppdai.com/help/law">法律政策</a></dd>
                        <dd><a href="http://www.ppdai.com/help/principalprotection">本金保障</a></dd>
                        <dd><a href="http://www.ppdai.com/help/howworks">工作原理</a></dd>
                        <dd><a href="http://www.ppdai.com/help/fees">资费说明</a></dd>
                    </dl>
                    <dl>
                        <dt>客户服务</dt>
                        <dd><a href="http://weibo.com/ppdai07">新浪微博</a></dd>
                        <dd><a href="http://e.t.qq.com/ppdai_com">腾讯微博</a></dd>
                        <dd><a href="javascript:;">微信</a></dd>
                        <dd style="color: #666;">400-184-8888</dd>
                    </dl>
                </div>
                <div class="footer_footerInfo">
                    <a href="###">
                        <img src="./ppd_default_files/footerlogo.png" alt="" /></a>
                    <p>拍拍贷成立于2007年6月，是国内第一家由工商部门特批获得“金融信息服务”资质，从而得到政府认可的平台。拍拍贷致力于搭建一个安全、高效、诚信、透明的互联网金融平台，规范个人借贷行为，改善借款人状态，同时拓宽借出者投资渠道。</p>
                </div>
            </div>
        <div class="footer_footerBottom">
            <ul class="footer_footerBottomNav clearfix">
                <li><span class="webindex"></span><a href="/">网站首页</a>|</li>
                <li><span class="aboutus"></span><a href="/help/aboutus">关于我们</a>|</li>
                <li><span class="mapsite"></span><a href="/home/sitemap">网站地图</a>|</li>
                <li><span class="webservice"></span><a href="/consult">客服中心</a>|</li>
                <li class="nomr"><span class="onlneserve"></span><a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzgwMDAyNzUzNV8xODAzNjBfODAwMDI3NTM1XzJf" target="_blank">在线咨询</a></li>
            </ul>
            <p>Copyright Reserved 2007-2015©拍拍贷（www.ppdai.com）&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;沪ICP备05063398号&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;上海拍拍贷金融信息服务有限公司</p>
<div style="padding-bottom:0px;" class="f_link_nav">
    <div class="float_l l-t">
        网站链接：
    </div>
    <div class="float_l r-t">
        <meta name="baidu-site-verification" content="nweZ85zRaR" />
        <a href="http://www.ppdai.com/zixun/zt_paipaidaitouzi" target="_blank">拍拍贷怎么样</a><a href="http://www.ppdai.com/daikuan/wangsbltzk" target="_blank">透支卡</a><a href="http://xueshengdaikuan.ppdai.com" target="_blank">大学生贷款</a><a href="http://xiaoedaikdk.ppdai.com" target="_blank">小额贷款</a><a href="http://touzilcchanp.ppdai.com" target="_blank">投资理财</a> 
        <div style="float:left" id="show_tab1" onclick="$(&#39;#unshow_tab1&#39;).show();$(&#39;#show_tab1&#39;).hide();">
            <a href="javascript:void(0);">更多...</a>
        </div>
    </div>
    <div style="height:1px" class="float_l l-t">
    </div>
    <div style="display:none" id="unshow_tab1" class="float_l r-t">
        <a href="http://www.ppdai.com/zixun/gupiaormjczs" target="_blank">股票知识</a> <a href="http://www.ppdai.com/zixun/zhengquangs" target="_blank">证券公司</a><a href="http://www.ppdai.com/zixun/jinrongzhishi" target="_blank">金融知识</a><a href="http://www.ppdai.com/zixun/gupiaormjczs" target="_blank">股票知识</a><a href="http://www.ppdai.com/zixun/qihuogongsi" target="_blank">期货公司</a><a href="http://www.ppdai.com/zixun/daikuanzhishi" target="_blank">贷款知识</a><a href="http://www.ppdai.com/zixun/waihuizhis" target="_blank">外汇知识</a><a href="http://www.ppdai.com/zixun/rongzifangshi" target="_blank">融资方式</a><a href="http://www.ppdai.com/daikuan/iphone6fqfk/page_1" target="_blank">iphone6分期付款</a><a href="http://www.ppdai.com/daikuan/xiaoedaikuan" target="_blank">急需小额贷款</a><a href="http://www.ppdai.com/daikuan/sqtouzhika" target="_blank">透支卡</a><a href="http://www.ppdai.com/zixun/zt_paipaidaitouzi" target="_blank">拍拍贷投资</a><a href="http://www.ppdai.com/daikuan/pgsjpg6" target="_blank">苹果6</a><a href="http://www.ppdai.com/daikuan/xpxp" target="_blank">夏普分期</a><a href="http://www.ppdai.com/daikuan/ddcddc" target="_blank">电动车分期</a><a href="http://www.ppdai.com/daikuan/hqhqi" target="_blank">宏碁分期</a><a href="http://www.ppdai.com/daikuan/defqde" target="_blank">戴尔分期付款</a><a href="http://www.ppdai.com/daikuan/jsqjsq" target="_blank">净水器分期</a><a href="http://www.ppdai.com/daikuan/hsfqhsbjb" target="_blank">分期付款买华硕</a><a href="http://www.ppdai.com/daikuan/hsfqhsbjb" target="_blank">分期付款买华硕</a><a href="http://www.ppdai.com/daikuan/ppdkxm" target="_blank">拍拍贷可信</a><a href="http://www.ppdai.com/daikuan/zijinzhouzhuan" target="_blank">资金周转</a><a href="http://www.ppdai.com/daikuan/qhtfqhtf" target="_blank">清华同方分期</a><a href="http://www.ppdai.com/daikuan/gjsydzxdkdlxt" target="_blank">助学贷款</a><a href="http://www.ppdai.com/daikuan/xedaikuan" target="_blank">小额贷款</a><a href="http://www.ppdai.com/zixun/wangdai" target="_blank">p2p网贷平台</a><a href="http://www.ppdai.com/zixun/licaichanpin" target="_blank">理财产品</a><a href="http://www.ppdai.com/daikuan/aksakskdzmy" target="_blank">奥克斯分期</a><a href="http://www.ppdai.com/zixun/niwodai" target="_blank">你我贷怎么样</a><a href="http://www.ppdai.com/daikuan/glglkd">格力空调分期</a><a href="http://www.ppdai.com/daikuan/rzrzrq">融资融券</a><a href="http://www.ppdai.com/daikuan/glgl">格力分期</a><a href="http://www.ppdai.com/daikuan/pgfqpgdn">苹果分期</a><a href="http://www.ppdai.com/daikuan/xedaikuan" target="_blank">小额贷款</a><a href="http://www.ppdai.com/daikuan/ppdkxm" target="_blank">拍拍贷网</a><a href="http://www.ppdai.com/daikuan/paipaidaiwkkm" target="_blank">拍拍贷怎么样</a><a href="http://www.ppdai.com/daikuan/ftftrqz" target="_blank">方太分期</a><a href="http://www.ppdai.com/daikuan/jsdjsdnc" target="_blank">金士顿分期</a><a href="http://www.ppdai.com/daikuan/jhqkqjhq" target="_blank">净化器分期</a><a href="http://www.ppdai.com/daikuan/zgmjjd" target="_blank">民间借贷</a><a href="http://www.ppdai.com/daikuan/tbfqtbxykfq" target="_blank">淘宝分期</a><a href="http://www.ppdai.com/daikuan/zqzxzqgb" target="_blank">中信证券</a><a href="http://www.ppdai.com/daikuan/defqde" target="_blank">戴尔分期</a><a href="http://www.ppdai.com/daikuan/lxfqlx" target="_blank">联想分期</a><a href="http://www.ppdai.com/daikuan/wudiyadk1" target="_blank">无抵押个人贷款</a><a href="http://www.ppdai.com/daikuan/xuesdaikuan" target="_blank">助学贷款</a><a href="http://www.ppdai.com/daikuan/wdtiyan" target="_blank">网贷体验</a><a href="http://www.ppdai.com/daikuan/xinyongedu" target="_blank">提升信用额度</a><a href="http://www.ppdai.com/daikuan/p2ptouzi" target="_blank">p2p投资理财</a><a href="http://www.ppdai.com/daikuan/wstouzilicai" target="_blank">网上投资理财</a><a href="http://www.ppdai.com/daikuan/jiyongqian" target="_blank">急用钱贷款</a><a href="http://www.ppdai.com/daikuan/hpfqhp" target="_blank">惠普分期</a><a href="http://www.ppdai.com/daikuan/gaolidgldsflbhm" target="_blank">高利贷</a><a href="http://www.ppdai.com/daikuan/sn4gsjsn" target="_blank">索尼手机分期</a><a href="http://www.ppdai.com/zixun/zaitiexian" target="_blank">再贴现率</a><a href="http://www.ppdai.com/daikuan/fqmcqc" target="_blank">分期买车</a><a href="http://www.ppdai.com/daikuan/sxsx" target="_blank">三星分期</a><a href="http://www.ppdai.com/daikuan/licaichanpin" target="_blank">理财产品</a><a href="http://wangsbltzk.ppdai.com" target="_blank">透支卡</a><a href="http://www.ppdai.com/daikuan/ppdrrdzenmy" target="_blank">拍拍贷和人人贷</a><a href="http://www.ppdai.com/daikuan/xjxj" target="_blank">希捷分期</a><a href="http://www.ppdai.com/daikuan/tmfqtmfqg" target="_blank">天猫分期</a><a href="http://www.ppdai.com/daikuan/rrdaizenmy" target="_blank">人人贷怎么样</a><a href="http://www.ppdai.com/zixun/yonganqihuo" target="_blank">永安期货</a><a href="http://www.ppdai.com/daikuan/ppdkxm" target="_blank">拍拍贷网</a><a href="http://www.ppdai.com/daikuan/gjkfyhzxdkxtdl/page_16" target="_blank">助学贷款</a> <a href="http://www.ppdai.com/daikuan/xiaofeidaikuan" target="_blank">个人消费贷款</a><a href="http://www.ppdai.com/daikuan/jyjydj" target="_blank">九阳豆浆机分期</a><a href="http://www.ppdai.com/daikuan/xueshengdaikuan" target="_blank">学生贷款</a><a href="http://www.ppdai.com/daikuan/glsgls" target="_blank">格兰仕分期</a> <a href="http://www.ppdai.com/daikuan/hmhmsj" target="_blank">红米分期</a> <a href="http://www.ppdai.com/daikuan/mpmacbookpro" target="_blank">macbook pro分期</a> <a href="http://www.ppdai.com/daikuan/mamacbookair" target="_blank">macbook air分期</a> <a href="http://www.ppdai.com/daikuan/idipadmini" target="_blank">ipad mini分期</a>  <a href="http://www.ppdai.com/daikuan/idipadair" target="_blank">ipad air分期</a>  <a href="http://www.ppdai.com/daikuan/trzzhxqyejtrzpt" target="_blank">小企业e家</a> <a href="http://www.ppdai.com/zixun/caijingmingren" target="_blank">财经名人</a>  <a href="http://www.ppdai.com/daikuan/thipodtouch" target="_blank">ipod touch分期</a>   <a href="http://www.ppdai.com/daikuan/t5ipodtouch5" target="_blank">ipod touch5分期</a>    <a href="http://www.ppdai.com/daikuan/lxdklxzj" target="_blank">留学贷款</a>  <a href="http://www.ppdai.com/daikuan/xcdkxc" rget="_blank">学车贷款</a> <a href="http://www.ppdai.com/daikuan/pxdkpx" rget="_blank">培训贷款</a> <a href="http://www.ppdai.com/daikuan/kddkkd" rget="_blank">开店贷款</a>  <a href="http://www.ppdai.com/daikuan/zjzzzjzz" rget="_blank">资金周转</a>  <a href="http://www.ppdai.com/daikuan/5siphone5sjg" rget="_blank">iph5s分期</a> <a href="http://www.ppdai.com/daikuan/i5iphone4s" rget="_blank">iph5分期</a> <a href="http://www.ppdai.com/daikuan/jieqgrksjq1000" rget="_blank">借钱</a> <a href="http://www.ppdai.com/daikuan/5siphone5sjg" rget="_blank">iphone5s分期</a>  <a href="http://www.ppdai.com/daikuan/idipad" rget="_blank">ipad分期</a> <a href="http://www.ppdai.com/daikuan/mkmacbook" rget="_blank">macbook分期</a>  <a href="http://www.ppdai.com/daikuan/jsqjsq" rget="_blank">加湿器分期</a> <a href="http://www.ppdai.com/daikuan/ymhymh
" rget="_blank">雅马哈分期</a> <a href="http://www.ppdai.com/daikuan/idipadmini" rget="_blank">ipad mini分期</a> <a href="http://jiyongmoney.ppdai.com" target="_blank">急需用钱</a>
    </div>
</div>
<div style="padding-bottom:0px;" class="f_link_nav">
    <div class="float_l l-t">
        友情链接：
    </div>
    <div class="float_l r-t">
        <a href="http://www.gucheng.com" target="_blank">股城网</a><a href="http://www.ggcj.com/" target="_blank">呱呱财经</a> <a href="http://finance.ifeng.com/itfinance/index.shtml" target="_blank">凤凰财经</a>  <a href="http://www.xiangrikui.com/" target="_blank">向日葵保险网</a> 
        <div style="float:left" id="show_tab" onclick="$(&#39;#unshow_tab&#39;).show();$(&#39;#show_tab&#39;).hide();">
            <a href="javascript:void(0);">更多...</a>
        </div>
    </div>
    <div style="height:1px" class="float_l l-t">
    </div>
    <div style="display:none" id="unshow_tab" class="float_l r-t">
         <a href="http://www.xftz.cn" target="_blank">幸福黄金网</a><a href="http://www.jfinfo.com" target="_blank">丰华财经</a><a href="http://www.anxin.com" target="_blank">安心贷</a><a href="http://value500.com/" target="_blank">投资理财导航</a><a href="http://www.rongzicn.com" target="_blank">融资网</a><a href="http://www.dajiabao.com" target="_blank">大家保</a><a href="http://www.p2peye.com" rel="nofollow" target="_blank">网贷天眼</a><a href="http://www.caiguu.com/licai/" target="_blank">财股网理财</a><a href="http://www.7878.com" target="_blank">资本魔方</a><a href="http://www.xs9999.com/" target="_blank">贵金属投资</a><a href="http://www.baobao18.com" target="_blank">保保网</a><a href="http://licai.cofool.com/" target="_blank">同城理财</a><a href="http://www.csai.cn/" target="_blank">理财产品</a><a href="http://www.wm927.com" target="_blank">智通财经网</a><a href="http://www.diyizby.com" target="_blank"> 纸白银</a><a href="http://www.wanyiwang.com" target="_blank">保险资料</a><a href="http://www.fundfund.cn" target="_blank">天天基金</a><a href="http://www.miaogu.com" target="_blank">瞄股网</a><a href="http://loans.cardbaobao.com" target="_blank">小额贷款</a><a href="http://www.tou18.cn " target="_blank">股票行情</a><a href="http://www.andaike.com" target="_blank">安贷客贷款</a><a href="http://fx.godsignal.com" target="_blank">外汇网</a><a href="http://www.laohucaijing.com" target="_blank">环球老虎财经</a><a href="http://beijing.rong360.com" target="_blank">北京贷款</a><a href="http://www.henanjinrong.com/" target="_blank">河南金融网</a><a href="http://chexian.qc188.com" target="_blank"> 汽车保险</a><a href="http://news.51zjxm.com/" target="_blank">51资金项目网</a><a href="http://www.qianzhan.com/qzdata/" target="_blank">行业数据</a><a href="http://www.gpcxw.com" target="_blank">爱股网</a><a href="http://www.dyxtw.com" target="_blank">信托产品</a><a href="http://money.laoqianzhuang.com" target="_blank">投资理财</a><a href="http://www.guijinshu.com" target="_blank">贵金属</a><a href="http://www.roadoor.com" target="_blank">贷款</a><a href="http://www.zhijinwang.com">中国纸金网</a><a href="http://www.silver.org.cn" target="_blank">白银价格</a><a href="http://bbs.wacai.com/portal.php" target="_blank">挖财社区</a><a href="http://hk.szhk.com/" target="_blank">香港购物</a><a href="http://www.ppdai.com/help/link" target="_blank">&gt;&gt;更多链接</a>
    </div>
</div><!--友情链接-->


        </div>

    </div>

    <script src="./ppd_default_files/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_default_files/init.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_default_files/servicestack-min.js"></script>
    <script src="./ppd_default_files/jquery.cookie.js"></script>
    <script src="./ppd_default_files/status?v=2014" type="text/javascript"></script>
    
    <script>
        $(".my-f-l-list li a.on").closest(".my-f-l-list").prev(".my-f-l-nav").addClass("my-f-l-nav-sd");
        try {
            $("#tabIcon a[category='" + breadcrumbCategory + "']").addClass("tabon");
        } catch (e) {

        }
    </script>
    
    <script src="./ppd_default_files/jquery.kinMaxShow-1.0.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="./ppd_default_files/index.js" type="text/javascript" charset="utf-8"></script>
    


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
</body>
</html>
