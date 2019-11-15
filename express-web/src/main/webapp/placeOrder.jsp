<%@page import="com.web.auction.pojo.Orderuser"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>我要代拿</title>
<style>
	html,body{
		width: 100%;
	}
body{
	 background: url("images/7.png")no-repeat center 0px;
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
<%
String price=((Orderuser)session.getAttribute("orderno")).getPrice();
String oId=((Orderuser)session.getAttribute("orderno")).getOrderno();
%>
<script type=text/javascript src="按钮点击.js"></script>	
  <script src="js/jquery.min.js?v=2.1.4"></script>
<div class="login_box">
	<table width="90%" height="156" border="0" align="center">
	  <tbody>
	    <tr height="50px">
	      <td align="center">需要支付</td>
	      <td><input type="text" name="order"  value="<%=price %>元" disabled class="text_box"></td>
        </tr>
		<tr height="50px"></tr>
      </tbody>
  </table>
	<table width="90%" height="50px" border="0" align="center">
	  <tbody>
	    <tr style="text-align: center">
			<td><button class="btn_login" onClick="javascript:Order_success()">支付</button></td>
	      <td><button class="btn_login" onClick="javascript:Order_affirm()">返回</button></td>
	   
        </tr>
	    
      </tbody>
  </table>
	
</div>
</body>
</html>
<<script type="text/javascript">
<!--

//-->
function Order_success(){
	$.ajax({
		url:"/price?oId=<%=oId %>",
		type:'GET',
		data:{},
		success:function(){
			alert("取货成功");
			window.location.href="/order.jsp"
		}
	})
}
function Order_affirm(){
	window.location.href="/order.jsp"
}
</script>
