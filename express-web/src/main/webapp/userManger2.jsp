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
<title>订单管理系统</title>
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
                url: "/querys1",

                editurl: "/orderadd1",

                mtype: "POST",

                datatype: "json",

                height: 600,

                autowidth: true,

                shrinkToFit: true,

                rowNum: 15,

                rowList: [10, 15, 20, 30],

                colNames: ["编号","配送员名字", "配送员年龄", "配送员工龄", "配送员状态"],

                colModel: [
                    {
                        name: "eid",
                        index: "eid",
                        editable: true,
 
                        width: 60,
                        sorttype: "int",
                        search: false,
                        key: true
                    },
                    {
                        name: "ename", 
                        index: "ename", 
                        editable: true, 
                        width: 90, 
                        search: true,
                        editrules:{
                        required : true
                    } },
                    {
                        name: "eage", 
                        index: "eage", 
                        editable: true, 
                        width: 90, 
                        search: true,
                        editrules:{
                        required : true
                    } },
                    {
                        name: "etime", index: "etime", editable: true, width: 100,editrules:{
                        required : true
                    } },
                    {
                        name: "estate", index: "estate", editable: true, width: 80,editrules:{
                        required : true
                    } },

                   
                ],

                pager: "#pager_list_2",

                viewrecords: true,

                caption:
                    "配送员管理<input id=\"keyword\" placeholder=\"请输入要查找的关键字\" style='margin-left:15px;' > <button id='search'>搜索</button>",

                add: true,

                edit: true,

                search: false,

                addtext: "添加",

                edittext: "修改",

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
                { edit1: true, add1: true, del1: true, search1: false },
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
                document.getElementById("eid").removeAttribute("disabled");;
            });
            $("#edit_table_list_2").click(function() {
                document.getElementById("eid").setAttribute("disabled", "true");;
            });

            $("#search").click(function() {
                $("#table_list_2").jqGrid('clearGridData'); //清空表格
                $("#table_list_2").jqGrid('setGridParam',
                    { // 重新加载数据
                        datatype: 'json',
                        url: "/querys1?keyword=" + $("#keyword").val(),
                        page: 1
                    }).trigger("reloadGrid");
            });
        });




    </script>
  
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/table_jqgrid.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:02 GMT -->
</html>
