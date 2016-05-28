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
    
    
    <title>无标题文档</title>
<link href="ht/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="ht/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop">ur<span></span>通讯录</div>
    
    <dl class="leftmenu">
        <c:forEach items="${sup}" var="sup" >
        	<dd>
		    <div class="title">
		    <span><img src="ht/images/leftico01.png" /></span>${sup.authorityname}
		    </div>
		    	<ul class="menuson">
		    		<c:forEach items="${aut}" var="aut">
		    			<c:if test="${sup.authorityid==aut.superauthorityid}">
		    				<li><cite></cite><a href=${aut.url } target="rightFrame">${aut.authorityname}</a><i></i></li>
		    			</c:if>
		    		</c:forEach>
		        </ul>    
		    </dd>
        </c:forEach>
    </dl>
    
</body>
</html>