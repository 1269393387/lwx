<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/WebCalendar.js"></script>
</head>

<script type="text/javascript">
     function entry(){
    	 window.location="index2.jsp";
     }
</script>
<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">个人信息中心</h1>
  </div>
  <table>
<tr><td>用户名：<input type="text" value="Admin"></input></td></tr>
<tr><td>密    码：<input type="text" value="11111"></input></td></tr>
<tr><td>电    话：<input type="text" value="1368424312"></input></td></tr>
<tr><td>地    址：<input type="text" value="广东省广州市"></input></td></tr>
<tr><td>个人标签：<input type="text" value="null"></input></td></tr>

<tr><td>
<input type="button"  value="返回" class="spbg buttombg f14  sale-buttom buttomb" onclick="entry()">
</td></tr>
</table>
</body>
</html>