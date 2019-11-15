<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录界面</title>


	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<script type="text/javascript" src="js/register.js"></script>
	
	<script type="text/javascript">
	
			String msg = request.getParameter("msg");
			if("registerSuccess".equals(msg)){
				out.print("alert('注册成功，系统将自动跳转登录页');");
			}
			if("loginError".equals(msg)){
				out.print("alert('用户名密码错误，请重新登录');");
			}
			if("validateCodeError".equals(msg)){
				out.print("alert('验证码错误，请重新输入');");
			}
		

	</script>



<style>
	html,body{
		width: 100%;
	}
body{
	 background: url("../images/7.png")no-repeat center 0px;
	 background-size:cover;
	 text-align:center;
	 background-position:center 0px;
	}
	.login_box{
		width:30%;
		height: 400px;
		margin:200px 35%;
		background:rgba(167,157,148,0.35);
		padding-top:50px;
		border-radius: 20px;
	}
	.text_box{
		width:100%;
		height:80%;
		background:linear-gradient(to right,rgba(240,207,161,0.5),rgba(230,177,135,0.8));
		border: 0px;
		border-radius: 8px;
	}
	.btn_login{
		width: 60%;
		height: 100%;
		text-align: center;
		border-radius:15px;
		font-size: 20px;
		color:#314551;
		border: 0px;
		background:rgba(167,157,148,0.3)
	}
	.btn_login:hover{
		background: rgba(234,194,165,0.6);
	}
	</style>
<link href="../css/bootstrap-4.2.1.css" rel="stylesheet" type="text/css">
</head>

<body>

 <form action="doLogin" method="post">	
<div class="login_box">
	<table width="90%" height="156" border="0" align="center">
	  <tbody>
	    <tr height="50px">
	      <td align="center">用户ID </td>
	      <td><input type="text" name="username" class="text_box" value="${username}" id="name" placeholder="用户名/邮箱"></td>
        </tr>
	    <tr height="50px">
	      <td align="center">密&nbsp;&nbsp;&nbsp;码</td>
	      <td><input type="password" name="userpassword" class="text_box" value="${userpassword}" id="password"></td>
        </tr>

		
        <tr height="50px">
	      <td align="center">验证码</td>
	      <td><input type="text" name="inputCode" class="text_box" value="" id="passwords">
	      </td>
	      <td>
	      <img id="validateCode" src="Number.jsp" width="75" height="27" alt="" />
	      </td>
        </tr>
        <tr>
        </tr>
        
	    <tr align="right">
	 
		  <td colspan="2">
		   <span style="color:red;font-size=18px;">${errorMsg}</span>
		  <font size="2" color="#0D00FF">忘记密码？</font></td>
		</tr>
		<tr align="left">
		<td>
		 <input name=""  type="checkbox" id="rem_u"  />
           <span class="rem_u">下次自动登录</span>
		 </td>
		</tr>
		<tr height="50px"></tr>
      </tbody>
  </table>

	<table width="90%" height="50px" border="0" align="center">
	  <tbody>
	    <tr style="text-align: center">
			<td><button class="btn_login" >登录</button></td>
		
	      <td><button class="btn_login"  >注册</button></td>

        </tr>
	    
      </tbody>
  </table>
	

 
</div>
</form>
  
</body>
</html>

	
	
	
	
	
	
	
	
	
	
	
	


	
	