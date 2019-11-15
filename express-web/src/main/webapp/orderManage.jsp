<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>订单管理</title>
<style>body{
	 background: url("images/7.png")no-repeat center 0px;
	 background-size:cover;
	 text-align:center;
	 background-position:center 0px;
	}
	.login_box{
		width:80%;
		height:80%;
		background:rgba(167,157,148,0.35);
		padding-top:10px;
		border-radius: 20px;
	}
	.text_box{
		width:90%;
		height:80%;
		text-align: center;
		background:rgba(0,0,0,0.00);
		border: 0px;
		border-radius: 8px;
	}
	.btn_back{
		width:100px;
		height: 50px;
		margin-right:100%;
		text-align: center;
		border-radius:25px;
		font-size: 20px;
		color:rgba(226,198,159,0.5);
		border: 0px;
		background:rgba(167,157,148,0.5)
	}
	.btn_back:hover{
		background:rgba(165,166,160,0.5);
	}
	</style>
</head>

<body>
<script type=text/javascript src="js/按钮点击.js"></script>
<button class="btn_back" onClick="javascript:L_home()">Back</button>	
<table align="center" border="0" style="width: 80%;height: 500px;padding-top: 30px">
  <tbody>
    <tr>
      <td align="center" width="33.3333333333333%" height="50%">
		  <div class="login_box">
			  <table border="0" align="center" style="width:90%;">
	  			  <tbody>
					  <tr align="center">
	      				<td>单号</td>
        			  </tr>
					  <tr align="center">
	      				<td>姓名</td>
        			  </tr>
					  <tr align="center">
	      				<td>手机</td>
        			  </tr>
					  <tr align="center">
	      				<td>地址</td>
        			  </tr>
				  </tbody>
			  </table>
			  <table width="30%" border="0" align="right" style="margin-top:20px;margin-right: 20px">
  <tbody>
    <tr>
      <td align="center">状态</td>
    </tr>
  </tbody>
</table>

		  </div></td>
      <td align="center"><div class="login_box"></div></td>
      <td align="center"><div class="login_box"></div></td>
    </tr>
    <tr>
      <td align="center"><div class="login_box"></div></td>
      <td align="center"><div class="login_box"></div></td>
      <td align="center"></td>
    </tr>
  </tbody>
</table>

</body>
</html>
