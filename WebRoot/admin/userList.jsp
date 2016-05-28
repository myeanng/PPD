<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@taglib uri="http://www.iteye.com/tags/pager" prefix="w"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 
    
    <title>用户管理</title>
<link href="ht/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ht/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">用户管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="ht/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="ht/images/t02.png" /></span>修改</li>
        <li><span><img src="ht/images/t03.png" /></span>删除</li>
        <li><span><img src="ht/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="ht/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
<!--    <div style="height:400px;">-->
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>编号<i class="sort"><img src="ht/images/px.gif" /></i></th>
        <th>用户名</th>
        <th>真实姓名</th>
        <th>电话</th>
        <th>E-mail</th>
        <th>注册时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${allusers.result}" var="user">
        	<tr>
	        <td><input name="" type="checkbox" value="" /></td>
	        <td>${user.users.userid}</td>
	        <td>${user.users.username}</td>
	        <td>${user.realname}</td>
	        <td>${user.users.tel}</td>
	        <td>${user.users.email}</td>
	        <td><fmt:formatDate value="${user.users.createtime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
	        <td><a href="#" class="tablelink">查看</a>&nbsp;|&nbsp;<a href="loan/updateLoanStatus?loanid=${loan.loanid}&status=4" class="tablelink">通过</a>&nbsp;|&nbsp;<a href="#" class="tablelink">驳回</a></td>
	        </tr>
        </c:forEach>
        
        </tbody>
    </table>
   </div>

		<div>
			<div class="tip">
				<div class="tiptop">
					<span>提示信息</span><a></a>
				</div>

				<div class="tipinfo">
					<span><img src="ht/images/ticon.png" />
					</span>
					<div class="tipright">
						<p>
							是否确认对信息的修改 ？
						</p>
						<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
					</div>
				</div>

				<div class="tipbtn">
					<input name="" type="button" class="sure" value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

			</div>
		</div>
		<w:pager  pageSize="${allusers.pageSize}" pageNumber="${allusers.pageNum}" url="users/findAll" recordCount="${allusers.total}"/>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>