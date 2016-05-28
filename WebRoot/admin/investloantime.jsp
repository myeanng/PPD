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
  	
    	<input type="hidden" value="6个月" id="t6" /><input type="hidden" value="${ilt.m6}" id="m6" />
    	
    	<input type="hidden" value="7个月" id="t7" /><input type="hidden" value="${ilt.m7}" id="m7" />
    	
    	<input type="hidden" value="8个月" id="t8" /><input type="hidden" value="${ilt.m8}" id="m8" />
    	
    	<input type="hidden" value="9个月" id="t9" /><input type="hidden" value="${ilt.m9}" id="m9" />
    	
    	<input type="hidden" value="10个月" id="t10" /><input type="hidden" value="${ilt.m10}" id="m10" />
    	
    	<input type="hidden" value="11个月" id="t11" /><input type="hidden" value="${ilt.m11}" id="m11" />
    	
    	<input type="hidden" value="12个月" id="t12" /><input type="hidden" value="${ilt.m12}" id="m12" />
    	
    	
    <br>
		
		<div id='canvasDiv' style="margin-left:60px;"></div>
		<div class='ichartjs_info' style="margin-left:60px;">
			<div class='ichartjs_sm'>分析：</div>
			<div class='ichartjs_details'>
				由数据分析：借期为 <hs> ${maxloantime} 个月 </hs> 的借款，投资金额最多，为 <hs> ${maxloanmoney} </hs>元
			</div>
		</div>
    
  </body>
  
  <script type="text/javascript">
  	//定义数据
		var gd = $("#gd").val();
		
		var t6 = $("#t6").val();
		var m6 = $("#m6").val();
		
		var t7 = $("#t7").val();
		var m7 = $("#m7").val();
		
		var t8 = $("#t8").val();
		var m8 = $("#m8").val();
		
		var t9 = $("#t9").val();
		var m9 = $("#m9").val();
		
		var t10 = $("#t10").val();
		var m10 = $("#m10").val();
		
		var t11 = $("#t11").val();
		var m11 = $("#m11").val();
		
		var t12 = $("#t12").val();
		var m12 = $("#m12").val();
		
		$(function() {
			var data = [
						{name : t6,value : m6,color : '#4572a7'},
						{name : t7,value : m7,color : '#aa4643'},
						{name : t8,value : m8,color : '#89a54e'},
						{name : t9,value : m9,color : '#80699b'},
						{name : t10,value : m10,color:'#3d96ae'},
						{name : t11,value : m11,color:'#76a871'},
						{name : t12,value : m12,color : '#aa4643'}
					];
	
			var chart = new iChart.Column2D({
				render : 'canvasDiv',
				data : data,
				title : {
					text : '借款期限与投资金额的关系',
					color : '#3e576f'
				},
				
				footnote : {
					text : 'ichartjs.com',
					color : '#909090',
					fontsize : 11,
					padding : '0 38'
				},
				width : 1000,
				height : 400,
				label : {
					fontsize:11,
					color : '#666666'
				},
				animation : true,//开启过渡动画
				animation_duration:200,//200ms完成动画
				shadow : true,
				shadow_blur : 2,
				shadow_color : '#aaaaaa',
				shadow_offsetx : 1,
				shadow_offsety : 0,
				column_width : 66,  //  原值 为 62
				sub_option : {
					listeners : {
						parseText : function(r, t) {
							return "￥"+t + "";
						}
					},
					label : {
						fontsize:11,
						fontweight:600,
						color : '#4572a7'
					},
					border : {
						width : 2,
						color : '#ffffff'
					}
				},
				coordinate : {
					background_color : null,
					grid_color : '#c0c0c0',
					width : 680,
					axis : {
						color : '#c0d0e0',
						width : [0, 0, 1, 0]
					},
					scale : [{
						position : 'left',
						start_scale : 0,
						end_scale : 32000,
						scale_space : 3000,
						scale_enable : false,
						label : {
							fontsize:11,
							color : '#666666'
						}
					}]
				}
			});
			
			/**
			 *利用自定义组件构造左侧说明文本。
			 */
			chart.plugin(new iChart.Custom({
					drawFn:function(){
						/**
						 *计算位置
						 */	
						var coo = chart.getCoordinate(),
							x = coo.get('originx'),
							y = coo.get('originy'),
							H = coo.get('height');
						/**
						 *在左侧的位置，设置逆时针90度的旋转，渲染文字。
						 */
						chart.target.textAlign('center')
						.textBaseline('middle')
						.textFont('600 13px Verdana')
						.fillText('借款额度',x-60,y+H/2,false,'#6d869f', false,false,false,-90);
						
					}
			}));
			
			chart.draw();
		});
	</script>
  
  </html>
