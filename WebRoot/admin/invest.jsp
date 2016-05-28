<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    	<meta charset="UTF-8" />
		<title>a</title>
		<meta name="Description" content="The ichartjs's gallery center,ichartjs 示例中心" />
		<meta name="Keywords" content="ichartjs demo,Html5 demo,ichartjs示例,ichartjs示例,Html5示例,Html5示例" />
		<script type="text/javascript" src="../js/ichart.1.1.min.js"></script>
		<link rel="stylesheet" href="../js/demo.css" type="text/css"></link>
		<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
		
    <style type="text/css">
    
    	hs{
    		color: red;
    	}
    </style>
  
  
  
  
  
  
  </head>
  <body>
  	<input type="hidden" value="${gd}" id="gd" />
  	
  		<input type="hidden" value="12%" id="r12" /><input type="hidden" value="${ilt.r12}" id="m12" />
  		<input type="hidden" value="13%" id="r13" /><input type="hidden" value="${ilt.r13}" id="m13" />
  		<input type="hidden" value="14%" id="r14" /><input type="hidden" value="${ilt.r14}" id="m14" />
  		<input type="hidden" value="15%" id="r15" /><input type="hidden" value="${ilt.r15}" id="m15" />
  		<input type="hidden" value="16%" id="r16" /><input type="hidden" value="${ilt.r16}" id="m16" />
  		<input type="hidden" value="17%" id="r17" /><input type="hidden" value="${ilt.r17}" id="m17" />
  		<input type="hidden" value="18%" id="r18" /><input type="hidden" value="${ilt.r18}" id="m18" />
  		<input type="hidden" value="19%" id="r19" /><input type="hidden" value="${ilt.r19}" id="m19" />
  		<input type="hidden" value="20%" id="r20" /><input type="hidden" value="${ilt.r20}" id="m20" />
  		<input type="hidden" value="21%" id="r21" /><input type="hidden" value="${ilt.r21}" id="m21" />
  		<input type="hidden" value="22%" id="r22" /><input type="hidden" value="${ilt.r22}" id="m22" />
  		<input type="hidden" value="23%" id="r23" /><input type="hidden" value="${ilt.r23}" id="m23" />
  		<input type="hidden" value="24%" id="r24" /><input type="hidden" value="${ilt.r24}" id="m24" />
  	
    <br>
    
    <div id='canvasDiv' style="margin-left:60px;"></div>
		<div class='ichartjs_info' style="margin-left:60px;">
			<div class='ichartjs_sm'>分析：</div>
			<div class='ichartjs_details'>
				由数据分析：利率为 <hs> ${maxRate*100}% </hs> 的借款，投资金额最多，为 <hs> ${maxMoney} </hs>元
			</div>
		</div>
    
  </body>
  <script type="text/javascript">
		//定义数据
		var gd = $("#gd").val();
		
		var r12 = $("#r12").val();
		var m12 = $("#m12").val();
		
		var r13 = $("#r13").val();
		var m13 = $("#m13").val();
		
		var r14 = $("#r14").val();
		var m14 = $("#m14").val();
		
		var r15 = $("#r15").val();
		var m15 = $("#m15").val();
		
		var r16 = $("#r16").val();
		var m16 = $("#m16").val();
		
		var r17 = $("#r17").val();
		var m17 = $("#m17").val();
		
		var r18 = $("#r18").val();
		var m18 = $("#m18").val();
		
		var r19 = $("#r19").val();
		var m19 = $("#m19").val();
		
		var r20 = $("#r20").val();
		var m20 = $("#m20").val();
		
		var r21 = $("#r21").val();
		var m21 = $("#m21").val();
		
		var r22 = $("#r22").val();
		var m22 = $("#m22").val();
		
		var r23 = $("#r23").val();
		var m23 = $("#m23").val();
		
		var r24 = $("#r24").val();
		var m24 = $("#m24").val();
		
		var data = [
			{name : r12,value : m12,color:'#a5c2d5'},
		   	{name : r13,value : m13,color:'#cbab4f'},
		   	{name : r14,value : m14,color:'#76a871'},
		   	{name : r15,value : m15,color:'#a56f8f'},
		   	{name : r16,value : m16,color:'#c12c44'},
		   	{name : r17,value : m17,color:'#a56f8f'},
		   	{name : r18,value : m18,color:'#9f7961'},
		   	{name : r19,value : m19,color:'#76a871'},
		   	{name : r20,value : m20,color:'#6f83a5'},
		   	{name : r21,value : m21,color:'#76a871'},
		   	{name : r22,value : m22,color:'#a56f8f'},
		   	{name : r23,value : m23,color:'#9f7961'},
		   	{name : r24,value : m24,color:'#c12c44'}
		 ];
		 $(function(){	
			var chart = new iChart.Column2D({
				render : 'canvasDiv',//渲染的Dom目标,canvasDiv为Dom的ID
				data: data,//绑定数据
				title : '融资利率影响投资金额',//设置标题
				width : 1000,//设置宽度，默认单位为px
				height : 400,//设置高度，默认单位为px
				shadow:true,//激活阴影
				shadow_color:'#c7c7c7',//设置阴影颜色
				coordinate:{//配置自定义坐标轴
					scale:[{//配置自定义值轴
						 position:'left',//配置左值轴	
						 start_scale:0,//设置开始刻度为0
						 end_scale:32000,//设置结束刻度为32000
						 scale_space:3000,//设置刻度间距3000
						 listeners:{//配置事件
							parseText:function(t,x,y){//设置解析值轴文本
								return {text:"￥"+t+" "}
							}
						}
					}]
				}
			});
			//调用绘图方法开始绘图
			chart.draw();
		});
		</script>
</html>
