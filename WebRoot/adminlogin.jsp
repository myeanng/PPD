<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    <title>欢迎登录拍拍贷后台管理系统</title>
<link href="ht/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="ht/js/jquery.js"></script>
<script src="ht/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(ht/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录拍拍贷后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo" id="ppdlogo"></span>
       
    <div class="loginbox">
    <form action="employee/login" method="post">
	    <ul>
		    <li><input name="empname" type="text" class="loginuser"/></li>
		    <li><input name="loginpassword" type="password" class="loginpwd" /></li>
		    <li><input type="submit" class="loginbtn" value="登录" />
		    	
		    	<label><a href="#">忘记密码？</a></label>
		    </li>
	    </ul>
    </form>
    
    </div>
    
    </div>
    <div class="loginbm">版权所有  2015  <a href="#">GS346</a> </div>
</body>
</html>