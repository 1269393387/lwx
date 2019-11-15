<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>我要代送</title>
<script type="text/javascript">
     function entry(){
    	 window.location="index.jsp";
     }
     </script>
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
		width:58%;
		height: 600px;
		margin:200px 25%;
		background:rgba(167,157,148,0.35);
		border-radius: 20px;
	}
	.text_box{
		width:95%;
		height:30%;
		background:linear-gradient(to right,rgba(240,207,161,0.5),rgba(230,177,135,0.8));
		border: 0px;
		border-radius: 50px;
	}
	.btn_login{
		width: 50px;
		height: 50px;
		text-align: center;
		border-radius:25px;
		font-size: 16px;
		color:#314551;
		border: 0px;
		background:rgba(167,157,148,0.3)
	}
	.btn_login:hover{
		background: rgba(234,194,165,0.6);
	}
	.btn_back{
		width:100px;
		height: 50px;
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
<link href="css/bootstrap-4.2.1.css" rel="stylesheet" type="text/css">
</head>

<body>

<form action="deliveryOrder"  method="post">
 <div class="login_box">
	<table width="90%" height="200px" border="0" align="center">
	  <tbody>
	    <tr height="100px" align="center">
	      <td width="20%" align="right">单号</td>
	      <td><input type="text" name="orderno" class="text_box"  id="orderno"></td>
	    </tr>
	    <tr height="100px" align="center">
	      <td width="20%" align="right">金额</td>
	      <td><input type="text" name="price" class="text_box"  id="price"></td>
	    </tr>
	    <tr height="100px" align="center">
	      <td width="20%" align="right">地址</td>
	      <td><input type="text" name="address" class="text_box"  id="address"></td>
	    </tr>
	    <tr height="100px" align="center">
	      <td width="20%" align="right">联系方式</td>
	      <td><input type="text" name="tell" class="text_box"  id="tell"></td>
	    </tr>
	    <tr height="100px" align="center">
	      <td> 
	           <span style="color:red;font-size=18px;">${errorMsg}</span>
	      </td>
		    <td><button  class="btn_login" >确定</button>
		    <td><button  class="btn_login" onclick="entry()" >返回</button>
	    </tr>
      </tbody>
  </table>
</div>
</form>

</body>
</html>
