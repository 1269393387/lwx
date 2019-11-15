<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%String username=request.getParameter("username");
  session.setAttribute("username",username);%>
  
<!doctype html>
<html>
<head>
<link rel="stylesheet" href="style1.css">
<meta charset="utf-8">
<title>主页</title>
<style>
/*素材*/
html,body,header,nav,footer,div,ul,ol,li,p,form,input,a,span,em,i,strong,b,font,img{
		margin:0; padding:0; list-style:none; border:none;}
body{font-family:"微软雅黑"; font-size:14px;}
a{text-align:center; text-decoration:none; outline:none;}
input{outline:none;}
em{font-style:normal;}
	
body{text-align:center}
/*顶部logo*/
.logo{
	background-color:#112233;
	width:100%;
	height:80px;
	}
/*嵌套进logo的登录div*/
.login{
	width:700px;
	height:inherit;
	float:right;
	}
/*功能菜单*/
	.logintest{
		background: #FFFFFF;
		width: 100%;
		height: 50px;
	}
	.all_box{
		width: 100%;
		height: 500px;
		background: #467199;
	}
	.menu_box{
		height: 100%;
		width: 40%;
		background:#355574;
	}
	.fun_box{
		width: 60%;
		height: 100%;
		float: right;
		background: #467199;
	}
	.app_box{
		width: 70%;
		height: 100%;
	}
	.btn_get{
		width: 100%;
		height: 80%;
		border-radius: 50px;
		background:#5DC8BE;
		font-size: 25px;
		color: #FFFFFF;
		border: none;
	}
	.btn_get:hover{
		background:#3FBBB0;
	}
	.btn_order{
		width: 100%;
		height: 80%;
		border-radius: 50px;
		background:#5FCA8E;
		font-size: 25px;
		color: #FFFFFF;
		border: none;
	}
	.btn_order:hover{
		background:#3EBF76;
	}
/*.ad{
	background:url(../设计图/efdcf410af7fea5109b654ec9d94d191.jpg);
	width:500px;
	height:309px;
	margin: 0 auto;
	}*/

/*轮播图 开始*/
.main_banner{width:100%; height:375px;}
.main_banner_wrap{
	width:100%; height:375px; position:relative; background:#112233/*333D46*/; 
	margin:0 auto; overflow:hidden;  box-shadow: 0px 1px 2px #c5c5c5;
}
#myCanvas {
	position: absolute;
	z-index: 13;
	opacity: 0.8;
	cursor: pointer;
	-webkit-animation: roll 3s;
	animation: roll 3s;
}
@-webkit-keyframes roll {
	from{-webkit-transform:rotate(120deg);opacity:0;}
	to{-webkit-transform:rotate(0deg);opacity:0.8;}		
}
@keyframes roll {
	from{transform:rotate(120deg);opacity:0;}
	to{transform:rotate(0deg);opacity:0.8;}		
}
.banner_btn{ 	/*a 标签 按钮*/
		width:255px; height:240px; position:absolute; 
		display:block; z-index:9; top:20px;
}
.btn_next{right:20px;}
.banner_btn span{width:50px; height:100px; display:block; position:absolute;
		left:110px; top:70px; opacity:0; transition:0.5s;
		background:url(../images/bannerBtn.png) no-repeat 0 0;}
.btn_next span{background-position:-50px 0;}
.main_banner_box:hover .banner_btn_arrow{opacity:0.6;}
.banner_btn span i{width:50px; height:100px; display:block;
		background:url(../images/bannerBtn.png) no-repeat 0 0;}
.btn_next span i{background-position:-50px 0;}
.banner_btn:hover i{
		-webkit-animation:arrow 0.5s infinite alternate ease-in-out;
		-moz-animation:arrow 0.5s infinite alternate ease-in-out;
}
@-webkit-keyframes arrow{
	from{-webkit-transform:scale(1); opacity:1;}
	to{-webkit-transform:scale(1.5); opacity:0.2;}
}
@-moz-keyframes arrow{
	from{-moz-transform:scale(1); opacity:1;}
	to{-moz-transform:scale(1.5); opacity:0.2;}
}

.main_banner_box{
	width:1200px; height:280px; margin:40px auto 0; position:relative; z-index:0;
	/*-webkit-倒影样式*/
	-webkit-box-reflect:below 0 -webkit-linear-gradient(top,rgba(255,255,255,0) 0%,rgba(255,255,255,.2) 100%);
}
/*火狐倒影图层样式*/
.main_banner_box p#rflt{width:1200px; height:280px; position:absolute; left:0; top:280px;
		background:-moz-element(#m_box) no-repeat; -moz-transform:scaleY(-1); opacity:0.2;
}/*火狐倒影图层样式*/
.main_banner li{
		position:absolute; background:#000; overflow:hidden;
		box-shadow:0 4px 8px rgba(0, 0, 0, 0.15);		
}
/*给每张图片初始设置不同宽高，层级，位置*/
.main_banner li#imgCard0{
		width:670px; height:280px; z-index:5;
		left:255px; top:0px; opacity:1; background:#333d46;
}
.main_banner li#imgCard1{
		width:580px; height:240px; z-index:1; 
		left:600px; top:20px; opacity:1; background:#333d46;
}
.main_banner li#imgCard2{/*初始在背后，透明度为0*/
		width:450px; height:180px; z-index:1;
		left:0px; top:60px; opacity:0; background:#333d46;
}
.main_banner li#imgCard3{/*初始在背后，透明度为0*/
		width:450px; height:180px; z-index:1;
		left:0px; top:60px; opacity:0; background:#333d46;
}
.main_banner li#imgCard4{
		width:580px; height:240px; z-index:2; 
		left:0px; top:20px; opacity:1; background:#333d46;
}
.main_banner li img{width:100%; height:100%;}
.main_banner li span{/*遮罩层*/
		width:100%; height:100%; position:absolute; top:0; left:0; 
		z-index:1; background:#000; opacity:0; filter:alpha(opacity=0);
		color:#fff; font-size:30px; line-height:120px; text-align:center;
}
.main_banner li p{width:100%; height:50px; position:absolute;
		left:0; bottom:-50px; background:rgba(0,0,0,0.7); color:#fff;
		text-indent:38px; line-height:50px; font-size:25px;
}

/*指示器按钮*/
.btn_list{text-align:center; position:relative; left:0; top:6px; z-index:10;}
.btn_list span{
		width:15px; height:15px; display:inline-block; margin:15px 5px;
		background:#787d82; border-radius:50%; cursor:pointer;
}
.btn_list span.curr{background:#FFAE00;}
 .scroll {
                display: inline-block;
                overflow: hidden;
                position: relative;
                height: 50px;
                width:200px;
            }
            
            .scroll ul {
                transform: translateY(0);
            }
            
            .animate {
                -webkit-transition: all .3s ease-out;
            }
            
            .scroll li {
                overflow: hidden;
                display: -webkit-box;
                margin-left: 10px;
                width: 90%;
                height: 50px;
                line-height: 30px;
                color: #000;
                text-overflow: ellipsis;
                -webkit-line-clamp: 1;
                -webkit-box-orient: vertical;
                white-space: normal;
            }
            
            .scroll li  img{
                margin-top: 20px;
                margin-right: 12px;
                width: 12px;
                height: 12px;
                
            }

/*轮播图 结束*/
</style>


<script type="text/javascript">
     function entry(){
    	 window.location="order.jsp";
     }

     function entry1(){
    	 window.location="orderManage.jsp";
     }
     function entry2(){
    	 window.location="InfoManger.jsp";
     }
     
     //代送
     function delivery(){
    	 window.location="delivery.jsp";
     }
     //接单
     function takeOrder(){
    	 window.location="takeOrder.jsp";
     }
     //用户管理
     function userManage(){
    	 window.location="userManger2.jsp";
     }
</script>

<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>

<body>
<div class="logo" align="left"><font color="#F9F9F9" size="7">东风代拿<font size="2"></font></font>
	 <div class="login"><table width="90%" height="80px" border="0" align="center">
  <tbody>
    <tr style="color: #FFFFFF;font-size:16px">
	  <td>关于我们</td>
	  <td>招商加盟</td>
	  <td>服务介绍</td>
	  <td>联系我们</td>

	<!--    <td width="7%">
		<button type="button" style="background-color:transparent;border:none;color: #FFFFFF" data-toggle="dropdown" >hi!,<%= session.getAttribute("username")%>
        </button></td>
      -->  
    	<td><li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">
			hi!,<%= session.getAttribute("username")%> <span class="caret"></span>
		</a>
		<ul class="dropdown-menu">

			<li><a href="self3.jsp" title="个人中心">个人中心</a></li>
			<li><a href="doLogout" title="注销">注销</a></li>
		</ul>
		</li>
		</td>
	
    </tr>
  </tbody>
</table></div> 
</div>
<!--轮播图 开始 -->
<div class="main_banner">
	<div class="main_banner_wrap">
		<canvas id="myCanvas" width="150" height="150"></canvas>
		<div class="main_banner_box" id="m_box">
			<a href="javascript:void(0)" class="banner_btn js_pre">
				<span class="banner_btn_arrow"><i></i></span>
			</a>
			<a href="javascript:void(0)" class="banner_btn btn_next js_next">
				<span class="banner_btn_arrow"><i></i></span>
			</a>
			<ul>
				<li id="imgCard0">
					<a href=""><span style="opacity:0;"></span></a>      
					<img src="images/2.jpg" alt="">
					<p style="bottom:0"></p>
				</li> 
				<li id="imgCard1">
					<a href=""><span style="opacity:0.4;"></span></a>      
					<img src="images/3.jpg" alt="">
					<p></p>
				</li> 
				<li id="imgCard2">
					<a href=""><span style="opacity:0.4;" ></span></a>        
					<img src="images/4.jpg" alt="">
					<p></p>
				</li> 
				<li id="imgCard3">
					<a href=""><span style="opacity:0.4;"></span></a>      
					<img src="images/5.jpg" alt="">
					<p></p>
				</li> 
				<li id="imgCard4">
					<a href=""><span style="opacity:0.4;"></span></a>      
					<img src="images/6.jpg" alt="">
					<p></p>
				</li> 
			</ul>
			<!--火狐倒影图层-->
			<p id="rflt"></p>
			<!--火狐倒影图层-->
		</div>
		<!--序列号按钮-->
		<div class="btn_list">
			<span class="curr"></span><span></span><span></span><span></span><span></span>        
		</div>
	</div>
</div>
<div class="all_box">
<div style="width:38%; display:inline-block">
	<div class="scroll">
            <ul id="scrollul">
                
            </ul>
        </div>
</div>
<div class="fun_box" style="display:inline-block">
	<table width="50%" border="0" align="center" height="100%">
  <tbody>

    <c:if test="${sessionScope.user.userisadmin==1}">
    <tr>
      <td><button class="btn_order" onclick="entry2()">订单管理</button></td>
    </tr>
   
        <tr>
      <td><button class="btn_order" onclick="userManage()">员工管理</button></td>
    </tr>
     </c:if>
     
       <c:if test="${sessionScope.user.userisadmin==2}">
     
      <tr>

     <td><button class="btn_get" onclick="takeOrder()">接单</button></td>  
    </tr>
    </c:if>
      <c:if test="${sessionScope.user.userisadmin==0}">
        <tr>
      <td><button class="btn_get" onclick="entry()">我要代拿</button></td>
    </tr>
    <tr>
      <td><button class="btn_get" onclick="delivery()">我要代送</button></td>
    </tr>
    </c:if>
    
  </tbody>
</table>
</div>
	<nav>
    <div class="menu-btn">
        <div class="line line--1"></div>
        <div class="line line--2"></div>
        <div class="line line--3"></div>
    </div>
 
    <div class="nav-links">
        <table width="80%" height="70%" border="0" style="">

</table>

    </div>
</nav>
	
</div>
	<div style="padding-top: 10px; width: 100%;height: 40px;background: #112233"><font color="#FFFFFF">版权归@想送就送队所有</font></div>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="script.js"></script>
  <script src="js/jquery.min.js?v=2.1.4"></script>
<script src="index.js"></script>	

</body>
	
</html>
<script>
        $(function() {
        	getMessage()
            
        });
        function getMessage(){
        	$.ajax({
        		url:"/getnoprice",
        		type:'GET',
        		data:{},
        		success:function(json){
        			var html="";
        			for(var i=0;i<json.data.length;i++)
        				{
        				html=html+'<li><img src="./images/msg.png" style="width:30px;height:30px; vertical-align:middle"/><span>'+json.data[i].username+'有快递未取</span></li>'
        				}
        			$("#scrollul").html(html)
        			var scrollDiv = $(".scroll"),
                $ul = scrollDiv.find("ul"),
                $li = scrollDiv.find("li"),
                $length = $li.length,
                $liHeight = $li.height(),
                num = 0;
 
            if(scrollDiv.length == 0) {
                return;
            }
 
            if($length > 1) {
                $ul.append($li.eq(0).clone());
                setInterval(
                    function() {
                        num++;
                        $ul.addClass("animate").css("-webkit-transform", "translateY(-" + $liHeight * (num) + "px)");
                        setTimeout(
                            function() {
                                if(num == $length) {
                                    $ul.removeClass("animate").css("-webkit-transform", "translateY(0)");
                                    num = 0;
                                }
                            }, 300);
                    }, 3000);
            }
        		}
        	})
        }
    </script>


