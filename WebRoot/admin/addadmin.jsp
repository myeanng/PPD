<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    <title>添加管理员</title>
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
<style type="text/css">
	table td{
		font-size: 20px;
		color:#E29E1B;
		font-weight:bold;
	}
	table tr{
		line-height: 46px;
	}
	#sub{
		padding:3px 16px;
		font-size: 20px;
		font-weight:bold;
		color:#FF721B;
		margin-top: 10px;
	}
	table input{
		width: 200px;
		height: 32px;
		font-size: 20px;
	}
	#tishi,#tishi1,#tishi2,#tishi3,#tishi4,#tishi5{
	color: red;
	font-size: 14px;
	display: none;
	}
	#true,#true1,#true2,#true3,#true4,#true5{
	color:green;
	display:none;
	}
</style>
</head>

<body style="background-color:#1c77ac; background-image:url(ht/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
<div class="loginbody">
    
    <span class="systemlogo" id="ppdlogo"></span>
    	<div style="width:100%;">
    	<form action="employee/addadmin" method="post"  id="frm" onsubmit="return tj()">
    		<table style="margin-left:440px; margin-top: 0px;" >
    			<tr>
    				<td colspan="2" align="center">添加管理员</td>
    			</tr>
    			
    			<tr>
    				<td>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td><td><input type="text" name="empname" id="empname" onblur="tishi()" maxlength="16"/></td><td id="tishi" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;*账号不能为空,长度为5-16位</td><td id="true" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;√</td>
    			</tr>
    			<tr>
    				<td>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td><td><input type="text" name="tel" id="tel" onblur="tishi1()" maxlength="11"/></td><td id="tishi1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;*请输入正确的手机号</td><td id="true1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;√</td>
    			</tr>
    			<tr>
    				<td>住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</td><td><input type="text" name="address" id="address" onblur="tishi2()" maxlength="15"/></td><td id="tishi2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;*地址不能为空</td><td id="true2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;√</td>
    			</tr>
    			<tr>
    				<td>身份证号：</td><td><input type="text" name="ic" id="ic" onblur="tishi3()" maxlength="18"/></td><td id="tishi3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;*身份证号不正确</td><td id="true3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;√</td>
    			</tr>
    			<tr>
    				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="loginpassword" id="pwd" onblur="tishi4()" maxlength="16"/></td><td id="tishi4" colspan="2" >&nbsp;&nbsp;&nbsp;&nbsp;*密码不能为空,长度为6-16位</td><td id="true4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;√</td>
    			</tr>
    			<tr>
    				<td>确认密码：</td><td><input type="password" name="loginpassword2" id="pwd2" onblur="tishi5()" maxlength="16"/></td><td id="tishi5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;*两次密码输入不一致</td><td id="true5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;√</td>
    			</tr>
    			<tr align="center">
    				<td colspan="2"><input type="submit" value="添加" id="sub"  /></td>
    			</tr>
    		</table>
    	</form>
   	</div>
   	<script type="text/javascript">
   		function tishi(){
   			var zh = $("#empname").val();
   			if(zh=="" || zh.trim().length < 5){
   			 $("#true").css("display","none");
   			 $("#tishi").css("display","block");
   			 return false;
   			}
   			else{
   			  $("#tishi").css("display","none");
   			 $("#true").css("display","block");
   			 return true;
         }	 
   		}
   		function tishi1(){
   			var dh = $("#tel").val();
   			if(dh=="" || dh.trim().length != 11){
   			 $("#true1").css("display","none");
   			 $("#tishi1").css("display","block");
   		  return false;
   			}
   			else{
   			  $("#tishi1").css("display","none");
   			 $("#true1").css("display","block");
   			 return true;
   			 
   			}
   		}
   		function tishi2(){
   			var dz = $("#address").val();
   			if(dz=="" || dz.trim().length < 2){
   			 $("#true2").css("display","none");
   			 $("#tishi2").css("display","block");
   		return false;
   			}
   			else{
   			  $("#tishi2").css("display","none");
   			 $("#true2").css("display","block");
   			 return true;
   			}
   		}
   		function tishi3(){
   			var sfz = $("#ic").val();
   			if(sfz=="" || sfz.trim().length !=18){
   			 $("#true3").css("display","none");
   			 $("#tishi3").css("display","block");
   		return false;
   			}
   			else{
   			  $("#tishi3").css("display","none");
   			 $("#true3").css("display","block");
   			 return true;
   			}
   		}
   		function tishi4(){
   			var mm = $("#pwd").val();
   			if(mm=="" || mm.trim().length <6 ){
   			 $("#true4").css("display","none");
   			 $("#tishi4").css("display","block");
   		return false;
   			}
   			else{
   			  $("#tishi4").css("display","none");
   			 $("#true4").css("display","block");
   			 return true;
   			}
   		}
   		function tishi5(){
   			var qmm = $("#pwd2").val();
   			var mm=$("#pwd").val();
   			if(qmm=="" || qmm.trim()!=mm.trim()){
   			 $("#true5").css("display","none");
   			 $("#tishi5").css("display","block");
   		return false;
   			}
   			else{
   			  $("#tishi5").css("display","none");
   			 $("#true5").css("display","block");
   			 return true;
   			}
   		}
   		function tj(){
   		if(tishi() && tishi1() && tishi2() && tishi3() && tishi4() && tishi5() ==true){
   		 return true;
   		}
   		else 
   		return false;
   		}
   	</script>
   </div>
</body>
</html>