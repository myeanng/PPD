$(function(){
	var i,t,r;
	jQuery.acSiteUrl="http://localhost:8080/PPD";
	jQuery.acStaticCdnUrl="http://localhost:8080/PPD";
	$('#mobilereg input:not("#Password")').placeholder();
	$('#emailreg input:not("#Password")').placeholder();
	$("#email").autoMailii({emails:["qq.com","163.com","126.com","sina.com","21cn.com ","hotmail.com","sohu.com","gmail.com"]});
	var n=function(n,t,i,r,u){
		jQuery.isFunction(t)&&(r=r||i,i=t,t=undefined);
		$.ajax({
			async:!1,
			type:u||"GET",
			url:n,
			data:t,
			success:i,
			dataType:"json"})
			},
	u=/^(13[0-9]|14[57]|15[0-35-9]|17[0678]|18[0-9])[0-9]{8}$/,
	f=/^(?![^a-zA-Z]+$)(?!\D+$).{8,16}$/,
	e=/^[^<>]{8,16}$/,
	o=/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
//	$("#mobilephone").blur(function(){var t=$(this);t.val($.trim(t.val()));$.trim(t.val()).length<1?$(this).parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("手机不能为空").show():u.test($.trim(t.val()))?n(jQuery.acSiteUrl+"/registercheck?callback=?",{name:"mobilePhone",value:t.val()},function(n){n.Code!=1?t.parent("li").find(".Exp").attr("class","Exp").addClass("Wrong").html(n.Message).show():t.parent().find(".Exp").attr("class","Exp").addClass("Correct").html("").show()}):$(this).parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("请输入正确的手机号码").show()});
//	$("#mbyzm").blur(function(){var t=$(this);$.trim(t.val()).length<1?$(this).parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("手机验证码不能为空").show():n(jQuery.acSiteUrl+"/registercheck?callback=?",{name:"mobilevalidatecode",value:t.val()+","+$("#mobilephone").val()},function(n){n.Code!=1?t.parent("li").find(".Exp").attr("class","Exp").addClass("Wrong").html(n.Message).show():t.parent().find(".Exp").attr("class","Exp").addClass("Correct").html("").show()})});
//	$("#imgvefyData").blur(function(){var t=$(this);$.trim(t.val()).length<1?$(this).parent().find(".Exp").addClass("Wrong").html("图片验证码不能为空").show():n(jQuery.acSiteUrl+"/registercheck?callback=?",{name:"imgvalidatecode",value:t.val()},function(n){n.Code!=1?t.parent("li").find(".Exp").removeClass("Correct").addClass("Wrong").html(n.Message).show():t.parent().find(".Exp").removeClass("Wrong").addClass("Correct").html("").show()})});
	$("#Password").on("blur",function(){
		$.trim($("#Password").val()).length<1?
		                                      $("#Password").parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("密码不能为空").show():
		                                      f.test($.trim($("#Password").val()))?
		                                    	                                       e.test($.trim($("#Password").val()))?
		                                    	                                                                            $("#Password").parent().find(".Exp").attr("class","Exp").addClass("Correct").html("").show():
		                                    	                                                                            	$("#Password").parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("密码为8-16位字母和数字,且不能包含<>").show():
		                                    	                                          $("#Password").parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("密码为8-16位字母和数字,且不能包含<>").show()});
	$("#agreeemail").bind("blur click",function(){
		this.checked?
		             $(this).parents("li").find(".Exp").attr("class","Exp").addClass("Correct").html("").hide():
		            	 $(this).parents("li").find(".Exp").attr("class","Exp").addClass("Wrong").html("必须同意服务条款及借入协议").show()});
//	$("#getvefydata_mobile").click(function(){($("#mobilephone, #Password, #imgvefyData").blur(),$("#login_nav li:lt(3) span.Wrong").length>0)||(acUtils.remainTime($(this),30,null,"秒后重新发送","reg_mobile_remainTime",{expires:1/1440,path:"/",domain:".ac.ppdai.com",secure:!1}),i($("#mobilephone").val(),$("#imgvefyData").val()))});
	jQuery.cookie("reg_mobile_remainTime")&&jQuery.cookie("reg_mobile_remainTime").length>0&&acUtils.remainTime("#getvefydata_mobile",jQuery.cookie("reg_mobile_remainTime"),null,"秒后重新发送","reg_mobile_remainTime",{expires:1/1440,path:"/",domain:".ac.ppdai.com",secure:!1});i=function(n,t){var i=jQuery.acSiteUrl+"/ValidateCode/MobileWithImgCode?mobilePhone="+n+"&imgCode="+t+"&callback=?";$.getJSON(i,{},function(n){n.Code==1||alert(n.Message)})};t=!1;
/**	$("#mobireg").click(function(){
		if(
				$("#mobilephone,#imgvefyData, #mbyzm, #Password, #agree").blur(),
				!($("#mobilereg ul li span.Wrong").length>0)){
			t=!0;
			$this=$(this);
			$this.val("正在提交中...").attr("disabled",!0);
			var n={
				IsAsync:!0,
				MobilePhone:$("#mobilephone").val(),
				Password:$("#Password").val(),
				ValidateCode:$("#mbyzm").val(),
				RegisterValidateType:$("#regValidateType").val()};
			$.post("/User/Register",n,function(n){
				n.Code==1?
				          self==top?
				                    window.location.href=n.Content.Redirect:
				                    	top.location.href=n.Content.Redirect:
				          (t=!1,$this.val("注 册").attr("disabled",!1),alert(n.Message))})
				          }});		*/
	$("#email").blur(function(){
		var t=$(this);
		t.val($.trim(t.val()));
		$.trim(t.val()).length<1?
		                         t.parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("邮箱不能为空").show():
		                         o.test($.trim(t.val()))?
		                        	                         (t.parent().find(".Exp").attr("class","Exp").addClass("Wrong").hide(),
		                        	                        	/**	 n(jQuery.acSiteUrl+"/registercheck?callback=?",{name:"email",value:t.val()},
		                        	                        			 function(n){
		                        	                        			 n.Code!=1?
		                        	                        			           t.parent("li").find(".Exp").attr("class","Exp").addClass("Wrong").html(n.Message).show():
		                        	                        			        	   t.parent().find(".Exp").attr("class","Exp").addClass("Correct").html("").show()})		*/
		                        	                        		 $.post("users/checkTelorEmail", { "email": $.trim(t.val()) },
																	   function(data){
																	     !data?
																	                t.parent("li").find(".Exp").attr("class","Exp").addClass("Wrong").html("该邮箱已经注册！").show():
																                    t.parent().find(".Exp").attr("class","Exp").addClass("Correct").html("").show()
																	   }, "json")
		                        	                        			        	   ):
		                        	                         t.parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("邮箱格式不正确").show()
		                        	                        			        		   
	});
/**	$("#emailmbyzm").blur(function(){
		var t=$(this);
		$.trim(t.val()).length<1?
		                         t.parent().find(".Exp").attr("class","Exp").addClass("Wrong").html("验证不能为空").show():
		                        	 n(jQuery.acSiteUrl+"/registercheck?callback=?",{name:"emailvalidatecode",value:t.val()+","+$("#email").val()},function(n){
		                        		 n.Code!=1?
		                        		           t.parent("li").find(".Exp").attr("class","Exp").addClass("Wrong").html(n.Message).show():
		                        		        	   t.parent().find(".Exp").attr("class","Exp").addClass("Correct").html("").show()})});				*/	
/**	$("#getvefydata_email").click(function(){($("#email").blur(),$("#login_nav li:first span.Wrong").length>0)||(acUtils.remainTime($(this),60,null,"秒后重新发送","reg_email_remainTime",{expires:1/1440,path:"/",domain:".ac.ppdai.com",secure:!1}),r($("#email").val()))});		*/
	jQuery.cookie("reg_email_remainTime")&&jQuery.cookie("reg_email_remainTime").length>0&&acUtils.remainTime("#getvefydata_email",jQuery.cookie("reg_email_remainTime"),null,"秒后重新发送","reg_email_remainTime",{expires:1/1440,path:"/",domain:".ac.ppdai.com",secure:!1});r=function(n){var t=jQuery.acSiteUrl+"/ValidateCode?ValidateType=Email&email="+n+"&callback=?";$.getJSON(t,{},function(n){n.Code==1||(console.log(n.Message),$(".popErrorMessage").html(n.Message).css("opacity","1"))})};
	$("#emailregbtn").click(function(){
		
		if(
				$("#Password,#agreeemail").blur(),
				!$("#emailreg ul li span.Wrong").length
		)
		{
			alert($("#emailreg ul li span.Wrong").length);
			t=!0;
			$this=$(this);
			$this.val("正在提交中...").attr("disabled",!0);
			var n={
				IsAsync:!0,
				email:$("#email").val(),
				loginpassword:$("#Password").val()
		/**		ValidateCode:$("#emailmbyzm").val(),
				RegisterValidateType:$("#regValidateType").val()		*/
				};
			$.post("users/reg2",n,function(n){
				n?
				          self==top?
				                    window.location.href="http://localhost:8080/PPD/login.jsp":
				                    	top.location.href="http://localhost:8080/PPD/login.jsp":
				          (t=!1,
				        		  $this.val("注 册").attr("disabled",!1),
				        		  alert("注册失败，请重试！"))
				          })
			}
		});
	$(".tabnav li").click(function(){var i=jQuery.acSiteUrl,n=$(this),t;n.hasClass("current")||(t=i+"/zhuce.jsp?regWay="+n.data("regway"),window.location.href=t)});
//	$(".userRole").click(function(){var t=$(this),n;t.addClass("cur").siblings().removeClass("cur");n=t.data("regvalidatetype");$("#regValidateType").val(n);n.toLowerCase().indexOf("lender")>-1?($(".policy1").hide(),$(".policy2").show()):($(".policy1").show(),$(".policy2").hide())});
//	$(".tpLogin").click(function(){var n=btnClick($(this).text());self==top?window.location.href=n:parent.location.href=n})
	});
	var btnClick=function(n){
		var r=jQuery.acSiteUrl,t=$("#Redirect").val(),i;
		t=encodeURIComponent(t);
		i="";
		switch(n){
		case"Alipay":
			
			i=r+"/thirdparty/login?apptype=0&redirect="+t;break;
		case"RenRen":
			i=r+"/thirdparty/login?apptype=4&redirect="+t;break;
		case"QQ":
			i=r+"/thirdparty/login?apptype=7&redirect="+t;break;
		case"Sina":
			i=r+"/thirdparty/login?apptype=3&redirect="+t;break;
		case"Tenpay":
			i=r+"/thirdparty/login?apptype=2&redirect="+t;break;
		case"Kaixin":
			i=r+"/thirdparty/login?apptype=5&redirect="+t
			}
		return i}