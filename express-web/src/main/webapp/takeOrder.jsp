<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="com.web.auction.pojo.Auctionuser"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<%String username=request.getParameter("username");
  session.setAttribute("username",username);%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单管理系统</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <!-- jqgrid-->
<link href="css/plugins/jqgrid/ui.jqgridffe4.css?0820" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">

  <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/plugins/jqgrid/i18n/grid.locale-cnffe4.js?0820"></script>
    <script src="js/plugins/jqgrid/jquery.jqGrid.minffe4.js?0820"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
</head>


<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-content">


                        <div class="jqGrid_wrapper">
                            <table id="table_list_2"></table>
                            <div id="pager_list_2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
    <script>
    $(document).ready(
        function() {
            $.jgrid.defaults.styleUI = "Bootstrap";

            $("#table_list_2").jqGrid({
                url: "/querys",

                editurl: "/orderadd",

                mtype: "POST",

                datatype: "json",

                height: 600,

                autowidth: true,

                shrinkToFit: true,

                rowNum: 15,

                rowList: [10, 15, 20, 30],

                colNames: ["单号", "手机", "姓名", "地址","费用","状态","操作"],

                colModel: [
                    {
                        name: "orderno",
                        index: "orderno",
                        editable: true,
 
                        width: 60,
                        sorttype: "int",
                        search: false,
                        key: true
               
                    },
                    {
                        name: "tell", index: "tell", editable: true, width: 90, search: true,editrules:{
                        required : true
                    } },
                    {
                        name: "username", index: "username", editable: true, width: 100,editrules:{
                        required : true
                    } },
                    {
                        name: "address", index: "address", editable: true, width: 80,editrules:{
                        required : true
                    } },
                    {
                        name: "price", index: "price", editable: true, width: 80,editrules:{
                        required : true
                    } },
                    {
                        name: "state", index: "state", editable: false, width: 80,editrules:{
                        required : true
                    } },
                    
                    {
                    
                    	name: "state", index: "state", editable: false, width: 80, formatter:currencyFmatter     
                       },
                    
                    
                ],

                pager: "#pager_list_2",

                viewrecords: true,

                caption:
                    "订单管理<input id=\"keyword\" placeholder=\"请输入要查找的关键字\" style='margin-left:15px;' > <button id='search'>搜索</button> <a href='doLogout' title='注销'>注销</a>",

                add: true,

                edit: true,

                search: false,

                addtext: "添加订单",

                edittext: "修改订单",

                hidegrid: false,

            });
            $("#table_list_2").setSelection(4, true);


            var editOptions = {
                top: 50,
                left: "100",
                width: 800,
                closeOnEscape: true,
                afterSubmit: function(json1, json2,json3) {
                    console.log(JSON.stringify(json1) + "---" + JSON.stringify(json2) + "---" + JSON.stringify(json3));
                    console.log(json1.responseJSON.success);
                    console.log(json2.oper);
                    if (!json1.responseJSON.success) {
                        alert(json1.responseJSON.msg);
                        return json1;
                    } else if (json2.oper == "edit") {
                        alert("修改成功");
                    } else if (json2.oper == "add") {
                        alert("添加成功");
                    } else if (json2.oper == "del") {
                        alert("删除成功");
                    }
                    return json1
                },
            }


            $("#table_list_2").jqGrid("navGrid",
                "#pager_list_2",
                { edit: true, add: true, del: true, search: false },
                editOptions,
                editOptions,
                editOptions,
                {},
                { multipleSearch: true }
            );

            $(window).bind("resize",
                function() {
                    var width = $(".jqGrid_wrapper").width();

                    $("#table_list_2").setGridWidth(width)

                });
            $("#add_table_list_2").click(function() {
                document.getElementById("orderno").removeAttribute("disabled");;
            });
            $("#edit_table_list_2").click(function() {
                document.getElementById("orderno").setAttribute("disabled", "true");;
            });

            $("#search").click(function() {
                $("#table_list_2").jqGrid('clearGridData'); //清空表格
                $("#table_list_2").jqGrid('setGridParam',
                    { // 重新加载数据
                        datatype: 'json',
                        url: "/querys?keyword=" + $("#keyword").val(),
                        page: 1
                    }).trigger("reloadGrid");
            });
        });
    </script>
</body>


<script>
function currencyFmatter(cellValue,options,rowObject) {
	if(rowObject["state"] == "未取"){
		return "<button id='takeOrder' onclick='take2()'>接单</button>";
	}else{
	  return "<button id='takeOrder' onclick='take1()'>已接单</button>";
	}
}

function take1(){
	alert("该订单已被接单,请选择其他订单");
	window.location.href="/takeOrder.jsp"
}

function take2(){
   var username="${sessionScope.user.username}"
	   console.log(username);
	$.ajax({
		url:"/take?username=<%=username %>",
		type:'GET',
		data:{},
		success:function(){
			alert("接单成功");	
			window.location.href="/takeOrder.jsp"
		}
	})
}
	
</script>
</html>