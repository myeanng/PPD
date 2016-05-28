$(function(){
	
	var rules = {
		"borrowTitle":[/^([\u0391-\uFFE5]|\w|\s){8,30}/],
		"textarea1":[/^([\u0391-\uFFE5]|\w|\s){10,200}/]
	}
	$.ppd_checkform.addRules(rules);
	
	var checkitem = [
		{ name:"loanuse",simple:"借款用途"},
		{ name:"title",type:"borrowTitle",message:"借款标题8到30个字之间"},
		{ name:"rate",between:[22,24],message:"请输入正确的利率"},
		{ name:"describe",type:"textarea1",message:"借款描述10-200个字之间"}
	];
	
	$("#create_list_form").ppd_checkform({
		items : checkitem
	});
});
