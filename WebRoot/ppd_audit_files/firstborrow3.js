$(function(){
	
	var rules = {
		"real_name" : [/^([\u0391-\uFFE5]){2,5}$/],
		"residence_phone":[ /^(13[0-9]|14[57]|15[0-35-9]|17[0678]|18[0-9])[0-9]{8}$/]
	}
	$.ppd_checkform.addRules(rules);
	
	var checkitem = [
		{ name:"onelinkman",type:"real_name",simple:"姓名",focusMsg:"请输入联系人<strong>真实姓名</strong>",message:"姓名只能输入2-5个汉字"},
		{ name:"onephone",type:"residence_phone",focusMsg:"请输入联系人手机",message:"请填写正确电话"},
		{ name:"twolinkman",type:"real_name",focusMsg:"请输入联系人<strong>真实姓名</strong>",message:"姓名只能输入2-5个汉字"},
		{ name:"twophone",type:"residence_phone",message:"请输入联系人<strong>真实姓名</strong>",focusMsg:"请输入联系人手机",message:"请填写正确电话"},
		{ name:"borrowTitle",type:"borrowTitle",message:"请填写借款标题，2到30个字"},
		{ name:"onerelation",message:"请选择关系"},
		{ name:"tworelation",message:"请选择关系"}
	];
	
	$("#my_contactway").ppd_checkform({
		items : checkitem
	});
});
