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
 
    
    <title>借款管理</title>
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
    <li><a href="#">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
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
        <th>用户</th>
        <th>标题</th>
        <th>借款金额</th>
        <th>借款期限</th>
        <th>利率</th>
        <th>已筹金额</th>
        <th>借款时间</th>
        <th>开始还息日</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${loanpage.result}" var="loan">
        	<tr>
	        <td><input name="" type="checkbox" value="" /></td>
	        <td>${loan.loanid}</td>
	        <td>${loan.users.username}</td>
	        <td>${loan.title}</td>
	        <td>￥${loan.loanmoney}</td>
	        <td>${loan.loantime}个月</td>
	        <td>${loan.rate}</td>
	        <td>￥${loan.raise}</td>
	        <td><fmt:formatDate value="${loan.createtime}" pattern="yyyy-MM-dd" /></td>
	        <td><fmt:formatDate value="${loan.accrualtime}" pattern="yyyy-MM-dd" /></td>
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
		<w:pager  pageSize="${loanpage.pageSize}" pageNumber="${loanpage.pageNum}" url="loan/loanstatus" recordCount="${loanpage.total}"/>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>