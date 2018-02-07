<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=0.25"/>
    <title>汽车详情</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/responsive.css">
  </head>
  <body>
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li>当前用户：</li>
                        	<li><a href="#"><i class="fa fa-user"></i>${user.u_name}</a></li>
                            <li><a href="javascript:exitFun()"><i class="fa fa-user"></i> 退出</a></li>
                        </ul>
                    </div>
                    <script type="text/javascript">
                	function exitFun(){
                		var b = confirm("你确定退出？");
                		if(b){
                			window.location.href='<%=request.getContextPath() %>/fore/exit.jsp';
                		}else{
                			
                		}
                	}
                </script>
                </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="#">
                        	<img id="myLogoImg" style="height: 140px;width: 170px;position: absolute;top: 0px;left:930px;">
                        	</a>
						</h1>
                    </div>
                </div>
            </div>
        </div>
    </div> 

<script src='<%=request.getContextPath() %>/fore/js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">
$.post("${pageContext.request.contextPath}/car/getLogoImg",function(data){
	 $("#myLogoImg").attr("src","/car_img/"+data);
});
</script>
    
    <div class="mainmenu-area" style="position: absolute;top: 80px;left:110px;margin: 0;">
        <div class="container">
            <div class="row">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav" style="border: 1px solid #ccc;border-radius:15px;">
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/index/${user.u_card}">首页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/user/getUser/${user.u_card}">我的主页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getPageCar?u_card=${user.u_card}">汽车查询</a></li>
                        <li class="active"><a style="font-family: 仿宋;color:red;font-size: 2em;" href="#">汽车详情</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/order/getOrders?u_card=${user.u_card}">我的订单</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/user/talk">联系客服</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div>
    <br>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="row">
                        	<!-- 汽车图片 -->
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img" style="padding: 10px;border: 1px solid #CCCCCC;">
                                        <img style="width:350px;height: 280px;" id="img" alt="">
                                        <div id="qrcodeTable" style="display:none;margin-top: 18px;"></div>
                                    </div>
                                    
                                    <div class="product-gallery">
                                    	<label style="font-family: 楷体;font-size: 1.4em;color:blue;font-weight: 800;">类型：</label>
                                        <img style="margin:0px;padding:0px;height:100px;width: 110px;" src="/car_img/${car.type.t_img}" alt="">
                                    	<label style="margin-left: 30px;font-family: 楷体;font-size: 1.4em;color:blue;font-weight: 800;">品牌：</label>
                                        <img style="margin:0px;padding:0px;height:100px;width: 95px;border: 1px solid #CCCCCC;" src="/car_img/${car.biaozhi.b_img}" alt="">
                                    </div>
                                </div>
                            </div>

<script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>                            
<script type="text/javascript">
var curIndex=1;
$(function(){
	setInterval(changeImg,2000); //设置每2000毫秒调用changeImg()函数	
});
function changeImg()  //图片切换函数
{
    if(curIndex==1){
   		 $("#img").attr("src","/car_img/${car.carImage.img1}");
    }else if(curIndex==2){
   		 $("#img").attr("src","/car_img/${car.carImage.img2}");
    }else if(curIndex==3){
   		 $("#img").attr("src","/car_img/${car.carImage.img3}");
    }else if(curIndex==4){
   		 $("#img").attr("src","/car_img/${car.carImage.img4}");
    }else if(curIndex==5){
        curIndex=1;
    }
    curIndex+=1;   
}
</script>
	                       <!-- 汽车参数 -->
	                       <div style="position:absolute;left: 500px;" class="col-sm-6">
	                           <div style="width:700px;" class="product-inner">
	                               <h2 class="product-name"><i id="carCode">${car.b_code}</i>
	                               &nbsp;&nbsp; &nbsp;<i style="color:blue;">
	                               
	                               <c:choose>
	                               	<c:when test="${car.state=='Y'}">可租用</c:when>
	                               	<c:when test="${car.state=='N'}">已租出</c:when>
	                               	<c:otherwise>已预约</c:otherwise>
	                               </c:choose>
	                               
	                               </i></h2>
	                               <div class="product-inner-category">
	                                   <p style="font-family: 楷体;font-size: 1.4em;">汽车款式: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_kuanshi}</a>
	                                   		&nbsp;燃料类型: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_ranliao}</a>
	                                   		&nbsp;有无天窗: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_iswindow}</a>
	                                  		&nbsp;有无导航: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_isdao}</a>
	                                   </p>
	                                   <p style="font-family: 楷体;font-size: 1.4em;">变速类型: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_biansu}</a>
	                                   		&nbsp;座椅材质: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_zuoyi}</a>
	                                   		&nbsp;车门数: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_chemen}</a>
	                                   		&nbsp;&nbsp;&nbsp;&nbsp;座位数: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_zuowei}</a>
	                                   </p>
	                                   <p style="font-family: 楷体;font-size: 1.4em;">购车日期: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_buydate}</a></p>
	                                   <p style="font-family: 楷体;font-size: 1.4em;">汽车简介: <a style="font-family: 仿宋;font-size: 1.4em;" href="#">${car.b_introduce}</a></p>
	                               </div> 
	                               <div class="product-inner-price">
	                                   <p style="font-family: 楷体;font-size: 1.4em;">
	                                   	押金（￥）: <a style="font-family: 仿宋;font-size: 1.4em;color: blue;" href="#">800</a>
	                                   	&nbsp;&nbsp;日租价（￥）: <ins style="color:red;font-size: 1.5em;">${car.b_price}</ins>
	                                   </p>
	                               </div>
	                               
	                               <c:choose>
	                               	<c:when test="${car.state=='Y'}">
										<button class="add_to_cart_button" style="font-size: 1.7em;font-weight: 900;" type="button" onclick="yuyue('${car.b_code}')">预约此车</button>
										<a href="javascript:void(0)" onMouseOut="hideImg()"  onmouseover="showImg()" style="font-size: 1.4em;font-weight: 900;">扫码在手机端打开</a>
									</c:when>
	                               	<c:otherwise>
	                               		<button class="add_to_cart_button" style="font-size: 1.7em;font-weight: 900;" type="button">该车正在使用中...</button>
										<a href="javascript:void(0)" onMouseOut="hideImg()"  onmouseover="showImg()" style="font-size: 1.4em;font-weight: 900;margin-left: 60;">扫码在手机端打开</a>
									</c:otherwise>
	                               </c:choose>
	                               
	                               
	                               <!-- 二维码 -->
	                               <br>
	                               


<script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
<script src="<%=request.getContextPath() %>/fore/js/jquery.min.js" type="text/javascript"></script>  
<script src="<%=request.getContextPath() %>/fore/js/jquery.qrcode.js" type="text/javascript"></script>  
<script src="<%=request.getContextPath() %>/fore/js/qrcode.js" type="text/javascript"></script>  
<script type="text/javascript">
function showImg(){
  	$("#qrcodeTable").show();
  	$("#img").hide();
}
function hideImg(){
	$("#qrcodeTable").hide();
	$("#img").show();
}

function utf16to8(str) {  
    var out, i, len, c;  
    out = "";  
    len = str.length;  
    for (i = 0; i < len; i++) {  
        c = str.charCodeAt(i);  
        if ((c >= 0x0001) && (c <= 0x007F)) {  
            out += str.charAt(i);  
        } else if (c > 0x07FF) {  
            out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));  
            out += String.fromCharCode(0x80 | ((c >> 6) & 0x3F));  
            out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));  
        } else {  
            out += String.fromCharCode(0xC0 | ((c >> 6) & 0x1F));  
            out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));  
        }  
    }  
    return out;  
}  

var code = $("#carCode").html();
/* 加载二维码 */
jQuery('#qrcodeTable').qrcode({
	text	: utf16to8("http://car.tunnel.qydev.com/carRental_back/getCarInfoServlet?b_code="+code)
});
</script>


<script type="text/javascript">
function yuyue(b_code){
	var u_card='${user.u_card}';
	window.location.href='${pageContext.request.contextPath }/car/makeOrder?b_code='+b_code+'&u_card='+u_card;
}
</script>	                               
	                           </div>
	                       </div>
	                       
	                   </div>
                       
                    </div>                    
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>兰州交通大学.clm&nbsp;&nbsp;&nbsp;<a target="_blank" href="#">登录QQ</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <script src="<%=request.getContextPath() %>/fore/js/min.js"></script>
   <script src="<%=request.getContextPath() %>/fore/js/min2.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="<%=request.getContextPath() %>/fore/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/fore/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="<%=request.getContextPath() %>/fore/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="<%=request.getContextPath() %>/fore/js/main.js"></script>
  </body>
</html>