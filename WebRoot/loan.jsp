<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.iteye.com/tags/pager" prefix="w"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>会员登录-拍拍贷</title>
</head>
<body>
<table>
	<tr>
		<td>ID</td><td>标题</td><td>借款金额</td>
	</tr>
	<c:forEach items="${loanpage.result}" var="loan">
		<tr>
			<td>${loan.loanid}</td><td>${loan.title}</td><td>${loan.loanmoney}</td>
		</tr>
	</c:forEach>
	</table>
	<w:pager pageSize="${loanpage.pageSize}" pageNumber="${loanpage.pageNum}" url="loan/loanfindall" recordCount="${loanpage.total}"/>
</body>
</html>