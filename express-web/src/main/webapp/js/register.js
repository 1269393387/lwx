var isRegister = false;
$(function(){
	
	//注册账号
	$('#register').live('click',function(){
		var userName = $('#username').val();
		//判断密码长度
		var password = $('input[name=userpassword]').val();
		if(password.length <6 || password.length > 15){
			alert("密码长度在6~15位之间");
			return;
		}
		//确认密码
		var confirm_password = $('input[name=confirm_password]').val();
		if($.trim(confirm_password) == ''){
			alert("请输入确认密码!");
			return;
		}
		//前后密码是否一致
		if(confirm_password !=password){
			alert("前后密码输入不一致,请确认!");
			return;
		}
		var confirm_password = $('input[name=confirm_password]').val();
		if($.trim(confirm_password) == ''){
			alert("请输入确认密码!");
			return;
		}
		if(confirm_password !=password){
			alert("前后密码输入不一致,请确认!");
			return;
		}
		$('#register-form').submit();
	});//end
	$(".close").click(function(){
	     history.back(-1);
	});
});
