$(function(){
	//初始化

	var rules = {
		"real_name" : [/^[\u4E00-\u9FA5]+(·|•)[\u4E00-\u9FA5]+$|^[\u4E00-\u9FA5]+$/],
		"mobilephone":[/^(13[0-9]|14[57]|15[0-35-9]|17[0678]|18[0-9])[0-9]{8}$/],
		"adress":[/^([\u0391-\uFFE5]|\w|\s){5,40}$/],
		"residence_phone":[/(^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$)|(^(13[0-9]|14[57]|15[0-35-9]|17[0678]|18[0-9])[0-9]{8}$)/],
		"company_info":[/^([\u0391-\uFFE5]|\w|\s){4,40}$/],
		"other_info":[/^([\u0391-\uFFE5]|\w|\s){2,40}$/],
		"nick_name":[/^([\u0391-\uFFE5]|\w|\s){1,50}$/],
		"qq1":[/^[0-9\ ]+$/],
		"idnum":[/[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])(\d{4}|\d{3}(X|x))/],
		"companyname":[/^([\u0391-\uFFE5]|\w|\s){1,50}$/],
		"repayment":[/^([\u0391-\uFFE5]|\w|\s){5,40}$/],
		/*"url1":[/^((http|https):\/\/)[a-zA-Z0-9\-]+(\.[a-zA-Z0-9\-]+)+(\/[^/\n]*)*$/]*/
	}
	$.ppd_checkform.addRules(rules);

	var tabIndex = $('.view>div').length;
	$('.view>div').each(function(i){
		if($(this).is(':visible')){
			tabIndex = 'check' + $(this).index();
		}
	});
	

	var checkitemAll = {
		check0 : [
				{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
				{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
				{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
				{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号"},
				{ name:"MarriageStatusId",simple:"婚姻状况"},
				{ name:"EducationId",message:"请选择学历"},
				{ name:"DistrictId",message:"请选择住宅地址"},
				{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
				{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅电话，例如021-51870819或13813888888"},
				{ name:"assets",simple:"财力证明",message:""},
				{ name:"CompanyNameForWageEarner",betweenString:[2,20],message:"请检查单位名称，必须在2-20个字之间"},
				{ name:"WorkYears",message:"请选择工作年限"},
				{ name:"CompanyAddress",betweenString:[5,40],message:"请检查单位详细地址，必须在5-40个字之间"},
				{ name:"CompanyPhoneForWageEarner",type:"residence_phone",message:"请填写单位电话，例如021-51870819或13813888888"},
				{ name:"DistrictIdForWageEarner",message:"请选择单位所在地区"},
				{ name:"Department",betweenString:[2,20],message:"请检查任职部门，必须在2-20个字之间"},
				{ name:"Position",betweenString:[2,20],message:"请检查任职职位，必须在2-20个字之间"}
		],
		check1 : [
				{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号"},
    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
    			{ name:"EducationId",message:"请选择学历"},
    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
    			{ name:"CompanyNameForCompanyOwner",betweenString:[2,20],message:"请检查公司名称，必须在2-20个字之间"},
    			{ name:"CompanySizeId",message:"请选择公司人数"},
    			{ name:"DistrictIdForCompanyOwner",simple:"经营地址",message:"请选择经营地址"},
    			{ name:"BussinessAddressForCompanyOwner",betweenString:[5,40],message:"请检查经营详细地址，必须在5-40个字之间"},
    			{ name:"CompanyPhoneForCompanyOwner",type:"residence_phone",message:"请填写公司电话，例如021-51870819或13813888888"},
    			{ name:"HasBusinessLicense",simple:"营业执照"}
		],
		check2 : [
				{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
    			{ name:"EducationId",message:"请选择学历"},
    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
    			{ name:"WebShopTypeId",message:"请选择经营网站"},
    			{ name:"NickName",betweenString:[1,40],message:"请填写卖家昵称，必须在1-40个字之间"},
    			{ name:"WebShopUrl",type:"url1",message:"请正确填写连接地址，例如http://shop.taobao.com"},
    			{ name:"turnover",type:"number",betweenString:[1,6],message:"请输入1-6位整数"},
    			{ name:"DistrictIdForWebShop",simple:"经营地址",message:"请选择经营地址"},
    			{ name:"BussinessAddressForWebShop",betweenString:[5,40],message:"请检查经营地址，必须在5-40个字之间"}
		],
		check3 : [
				{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
    			{ name:"EducationId",message:"请选择学历"},
    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
    			{ name:"SchoolName",betweenString:[2,40],message:"请检查学校名称，必须在2-40个字之间"},
    			{ name:"DormitoryPhone",type:"residence_phone",message:"请输入宿舍电话，例如021-51870819或13813888888"},
    			{ name:"IncomeFromForStudent",betweenString:[5,40],message:"请检查还款来源，必须在5-40个字之间"}
		],
		check4 : [
				{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
    			{ name:"EducationId",message:"请选择学历"},
    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
    			{ name:"IncomeFromForOther",betweenString:[5,40],message:"请检查还款来源，在5-40个字之间"}
		]
	};

	var checkitem = null;

	if($('.view>div').length==5){
		checkitem = checkitemAll[tabIndex];
	}else{
		switch(parseInt($('#txtBorrowerRole').val())){
			case 1:
				checkitem = checkitemAll.check0;
				break;
			case 2:
				checkitem = checkitemAll.check1;
				break;
			case 3:
				checkitem = checkitemAll.check2;
				break;
			case 4:
				checkitem = checkitemAll.check3;
				break;
			case 6:
				checkitem = checkitemAll.check4;
				break;
		}
	}
	
	
	
	$("#firstborrow").ppd_checkform({
		items : checkitem
	});
	
	
	$('.works input[type=radio]').click(function(){
		//alert($(this).index())
		//$(this).addClass('cur').siblings().removeClass('cur');
		checkitemAll = null;

		var index =  $('.works input[type=radio]').index(this);
		$('.view > div').eq(index).show().siblings().hide();
		$('.view>div').find('.Wrong').remove();
		//$('.view>div').find('.Wrong').addClass('Correct').removeClass('Wrong').text('');

		$('.view>div').each(function(i){
			if($(this).is(':visible')){
				tabIndex = 'check' + $(this).index();
			}
		});
		switch (index){
			case 0:
				var checkitemtab1 = [
						{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
						{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
						{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
						{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
						{ name:"MarriageStatusId",simple:"婚姻状况"},
						{ name:"EducationId",message:"请选择学历"},
						{ name:"DistrictId",message:"请选择住宅地址"},
						{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
						{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
						{ name:"assets",simple:"财力证明",message:""},
						{ name:"CompanyNameForWageEarner",betweenString:[2,20],message:"请检查单位名称，必须在2-20个字之间"},
						{ name:"WorkYears",message:"请选择工作年限"},
						{ name:"CompanyAddress",betweenString:[5,40],message:"请检查单位详细地址，在5-40个字之间"},
						{ name:"CompanyPhoneForWageEarner",type:"residence_phone",message:"请填写单位电话"},
						{ name:"DistrictIdForWageEarner",message:"请选择单位所在地区"},
						{ name:"Department",betweenString:[2,20],message:"请检查任职部门，必须在2-20个字之间"},
						{ name:"Position",betweenString:[2,20],message:"请检查任职职位，必须在2-20个字之间"}
					];
					
	    		$("#firstborrow").ppd_checkform({
					items : checkitemtab1
				});
				break;
			case 1:
				var checkitemtab2 = [
						{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
		    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
		    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
		    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
		    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
		    			{ name:"EducationId",message:"请选择学历"},
		    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
		    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
		    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
		    			{ name:"CompanyNameForCompanyOwner",betweenString:[2,20],message:"请检查公司名称，必须在2-20个字之间"},
		    			{ name:"CompanySizeId",message:"请选择公司人数"},
		    			{ name:"DistrictIdForCompanyOwner",simple:"经营地址",message:"请选择经营地址"},
		    			{ name:"BussinessAddressForCompanyOwner",betweenString:[5,40],message:"请检查经营详细地址，必须在5-40个字之间"},
		    			{ name:"CompanyPhoneForCompanyOwner",type:"residence_phone",message:"请填写公司电话，例如021-51870819或13813888888"},
		    			{ name:"HasBusinessLicense",simple:"营业执照"}
				];
				
	    		$("#firstborrow").ppd_checkform({
					items : checkitemtab2
				});
				break;
			case 2:
				var checkitemtab3 = [
							{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
			    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
			    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
			    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
			    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
			    			{ name:"EducationId",message:"请选择学历"},
			    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
			    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
			    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
			    			{ name:"WebShopTypeId",message:"请选择经营网站"},
			    			{ name:"NickName",betweenString:[1,40],message:"请填写卖家昵称，必须在1-40个字之间"},
			    			{ name:"WebShopUrl",type:"url1",message:"请正确填写连接地址，例如http://shop.taobao.com"},
			    			{ name:"turnover",type:"number",betweenString:[1,6],message:"请输入1-6位整数"},
			    			{ name:"DistrictIdForWebShop",simple:"经营地址",message:"请选择经营地址"},
			    			{ name:"BussinessAddressForWebShop",betweenString:[5,40],message:"请检查经营地址，必须在5-40个字之间"}
					];
	    		$("#firstborrow").ppd_checkform({
					items : checkitemtab3
				});
				break;
			case 3:
				checkitemtab4 = [
					{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
	    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
	    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
	    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
	    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
	    			{ name:"EducationId",message:"请选择学历"},
	    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
	    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
	    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
	    			{ name:"SchoolName",betweenString:[2,40],message:"请检查学校名称，必须在2-40个字之间"},
	    			{ name:"DormitoryPhone",type:"residence_phone",message:"请输入宿舍电话，例如021-51870819或13813888888"},
	    			{ name:"IncomeFromForStudent",betweenString:[5,40],message:"请输入还款来源，在5-40个字之间"}
				];
	    		$("#firstborrow").ppd_checkform({
					items : checkitemtab4
				});
				break;
				case 4:
				checkitemtab5 = [
						{ name:"RealName",type:"real_name",betweenString:[2,20],message:"姓名只能输入2-20个汉字，例如：张三 或者 纳斯尔丁·阿凡提"},
		    			{ name:"IdNumber",type:"idnum",message:"请输入正确的身份证号码"},
		    			{ name:"MobilePhone",type:"mobilephone",message:"请输入正确的手机号码"},
		    			{ name:"QQ",type:"qq1",betweenString:[4,11],message:"请输入正确的QQ号码"},
		    			{ name:"MarriageStatusId",message:"请选择婚姻状况"},
		    			{ name:"EducationId",message:"请选择学历"},
		    			{ name:"ResidenceAddress",betweenString:[5,40],message:"请检查具体地址，必须在5-40个字之间"},
		    			{ name:"ResidencePhone",type:"residence_phone",message:"请填写住宅号码，例如021-51870819或13813888888"},
		    			{ name:"asset",checked_limit:[1,1],simple:"财力证明",message:""},
		    			{ name:"IncomeFromForOther",betweenString:[5,40],message:"请检查还款来源，在5-40个字之间"}
				];
	    		$("#firstborrow").ppd_checkform({
					items : checkitemtab5
				});
				break;
			default:
				break;
		}
	});

	$('.cailizhm input:lt(4)').click(function(){
		$('.cailizhm input:last').removeAttr('checked');
		
	});
	$('.cailizhm input:last').click(function(){
		$('.cailizhm input:lt(4)').removeAttr('checked');
	});
	
	
	
});