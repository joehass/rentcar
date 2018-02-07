<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=0.25"/>
    <title>我的订单</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/responsive.css">
    <script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
    <style type="text/css">
    	#zt{
    		margin: 10px;
    		font-family: 楷体;
    		font-size: 1.5em;
    		font-weight: 900;
    	}
    	#zt span{
    		margin-left: 22px;
    		border:1px solid #ccc;
    		border-radius:6px;
    		padding: 8px;
    	}
    	#ttr:HOVER{
    		background-color: #ccc;
    	}
    </style>
    
<!-- 订单详情隐藏框 -->
<style>
#dydd:HOVER{
	color:red;
}
.login-body .xx{
	font-family: 仿宋;
	font-size: 1.2em;
	font-weight: 900px;
}
.login-body .xx p label{
	color:#000000;
}
.login-body .xx p span{
	color:green;
	font-weight: 900;
}
.login-body {
	padding: 60px 15px;
	height: 148px;
}

.hide-body {
	z-index: 9999;
	position: fixed;
	top: 30%;
	left: 40%;
	width: 900px;
	height: 600px;
	margin: -180px 0 0 -330px;
	border-radius: 10px;
	border: solid 2px #666;
	background-color: #fff;
	display: none;
	box-shadow: 0 0 10px #666;
}

.close-window {
	border-bottom: 1px solid #ddd;
	padding: 22px;
	position: relative;
}

.bottom {
	margin-top: 250px;
}

.close-window .close {
	float: right;
	color: #999;
	padding: 5px;
	margin: -2px -5px -5px;
	font: bold 14px/14px simsun;
	text-shadow: 0 1px 0 #ddd
}

.close-window .close:hover {
	color: #444;
}
</style>
<!-- 订单详情隐藏框 -->

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
	                		}else{}
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
                <div class="navbar-collapse collapse" >
                    <ul class="nav navbar-nav" style="border: 1px solid #ccc;border-radius:15px;">
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/index/${user.u_card}">首页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/user/getUser/${user.u_card}">我的主页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getPageCar?u_card=${user.u_card}">汽车查询</a></li>
                        <li class="active"><a style="font-family: 仿宋;color:red;font-size: 2em;" href="<%=request.getContextPath()%>/order/getOrders?u_card=${user.u_card}">我的订单</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/user/talk">联系客服</a></li>
                    	<li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getImg?u_card=${user.u_card}">车图一览</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> 
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
					<div style="width: 100%;" role="tabpanel">
                        <ul class="product-tab" role="tablist">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">订单列表</a></li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">订单统计</a></li>
                        </ul>
                        <div class="tab-content">
                       		<!-- 所有订单 -->
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
	                            <div id="zt">
	                       			<span id="rrr" onclick="yzf()">已支付 </span>
	                       			<span onclick="wzf()">未支付</span>
	                       			<span onclick="ytc()">已提车</span>
	                       			<span onclick="yqx()">已取消</span>
	                       			<span onclick="yhc()">已还车</span>
	                       			<input style="margin-left: 60px;" type="text" id="order_code" placeholder="请输入订单号">
	                       			<input type="button" onclick="cx()" value="查询">
	                       			<input style="margin-left:40px; " type="button" value="导出订单"
	                       			onClick ="$('#table1').tableExport({type: 'excel', escape: 'false'});">
	                       		</div>

<script type="text/javascript">
function cx(){
	var o_code=$("#order_code").val();
	if(""==o_code||null==o_code){
		alert("请输入你要查询的订单号！"); 
		return;
	}
	window.location.href='${pageContext.request.contextPath}/order/cxOrder?o_code='+o_code+'&u_card=${user.u_card}';
}
function yzf(){
	var o_state = "已支付";
	window.location.href='${pageContext.request.contextPath}/order/grtOrderByTj?o_state='+o_state+'&u_card=${user.u_card}';
}
function wzf(){
	var o_state = "未支付";
	window.location.href='${pageContext.request.contextPath}/order/grtOrderByTj?o_state='+o_state+'&u_card=${user.u_card}';
}
function ytc(){
	var o_state = "已提车";
	window.location.href='${pageContext.request.contextPath}/order/grtOrderByTj?o_state='+o_state+'&u_card=${user.u_card}';
}
function yqx(){
	var o_state = "已取消";
	window.location.href='${pageContext.request.contextPath}/order/grtOrderByTj?o_state='+o_state+'&u_card=${user.u_card}';
}
function yhc(){
	var o_state = "已还车";
	window.location.href='${pageContext.request.contextPath}/order/grtOrderByTj?o_state='+o_state+'&u_card=${user.u_card}';
}

</script> 
                            
								<table cellspacing="0" class="shop_table cart" id="table1">
                                	<tr class="cart_item">
                                        <td class="product-thumbnail">订单号</td>
                                        <td class="product-thumbnail">汽车车牌</td>
                                        <td class="product-thumbnail">提车日期</td>
                                        <td class="product-thumbnail">还车日期</td>
                                        <td class="product-thumbnail">总金额</td>
                                        <td class="product-thumbnail">保险</td>
                                        <td class="product-thumbnail">订单状态</td>
                                        <td class="product-thumbnail">订单处理</td>
                                    </tr>
                                    <c:forEach var="o" items="${orders}">
                                    	<tr class="cart_item" id="ttr">
	                                        <td class="product-thumbnail">${o.o_code }</td>
	                                        <td onclick="queryCarInfo('${o.b_code}')" class="product-thumbnail">${o.b_code}</td>
	                                        <td class="product-thumbnail">${o.start_date}</td>
	                                        <td class="product-thumbnail">${o.end_date}</td>
	                                        <td class="product-thumbnail" style="color:red;font-size: 1.3em;font-weight:900;">￥${o.allMoney}</td>
	                                        <td class="product-thumbnail" >
	                                        	<span style="border-radius:5px; border:1px solid #99CC00;background-color:#FFFFCC; font-family:仿宋;font-size:1.2em;color:blue;font-weight: 900;">
	                                        		${o.o_bx}
	                                        	</span>
	                                        </td>
	                                        <td class="product-thumbnail">
	                                        	<span style="border-radius:5px; border:1px solid #99CCFF;background-color:#FFFF99; font-family:仿宋;font-size:1.2em;color:#9933FF;font-weight: 900;">
	                                        		 ${o.o_state}
	                                        	</span>
	                                        </td>
	                                        <td class="product-thumbnail">
	                                       		<c:if test="${'未支付'==o.o_state || '已取消'==o.o_state || '已还车'==o.o_state || '已提车'==o.o_state}">
	                                        	<a class="xq" onclick="funXq('${o.o_code }')" href="javascript:;" style="text-decoration:none;border-radius:5px; border:1px solid #99CCFF;background-color:#99CC99; font-family:楷体;font-size:1.3em;color:blue;font-weight: 900;">详情</a>
	                                        	</c:if>
	                                        	<c:if test="${'未支付'==o.o_state }">
	                                        	<a href="#" onclick="qxdd('${o.o_code }','${o.o_state}')" style="text-decoration:none;border-radius:5px; border:1px solid #99CCFF;background-color:#FFCCFF; font-family:楷体;font-size:1.3em;color:#9933FF;font-weight: 900;">取消</a>
	                                        	<a href="#" onclick="payOrder('${o.o_state }','${o.o_code }')" style="text-decoration:none;border-radius:5px; border:1px solid #99CCFF;background-color:#FFFFCC; font-family:楷体;font-size:1.3em;color:red;font-weight: 900;">付款</a>
	                                        	</c:if>
	                                        	<c:if test="${'已支付'==o.o_state }">
	                                        	<a class="xq" onclick="funXq('${o.o_code }')" href="javascript:;" style="text-decoration:none;border-radius:5px; border:1px solid #99CCFF;background-color:#99CC99; font-family:楷体;font-size:1.3em;color:blue;font-weight: 900;">详情</a>
	                                        	<a href="#" onclick="dydd('${o.o_code }','${user.u_name}')" style="text-decoration:none;border-radius:5px; border:1px solid #99CCFF;background-color:#FFFFCC; font-family:楷体;font-size:1.3em;color:green;font-weight: 900;">下载合同</a>
	                                        	</c:if>
	                                        </td>
                                   	    </tr>
                                    </c:forEach>
                                </table>
				            </div>

<script type="text/javascript">
/*打印订单*/
function dydd(o_code,u_name){
	$.post("${pageContext.request.contextPath}/order/dyOrderInfo?o_code="+o_code,function(data){
		if("1"==data){
			alert("你好:【 "+u_name+" 】,你的订单与合同下载成功，在D盘下打开！");
		}else{
			alert("你好:【 "+u_name+" 】,你的订单与合同下载失败，请联系公司！");
		}
	});
}

/*支付订单：只能支付未支付订单*/
function payOrder(o_state,o_code){
	if("未支付"==o_state){
		var b = confirm("你确定支付订单？");
		if(b){
			window.location.href='${pageContext.request.contextPath}/order/pay?o_code='+o_code+'&u_card=${user.u_card}';
		}else{}
	}else{
		alert("你的操作有误，请查看你的订单状态!");
	}
}

/* 查询汽车详情 */
function queryCarInfo(b_code) {
	window.location.href='${pageContext.request.contextPath }/car/getCarInfo/'+b_code;
}

/*取消订单：只能取消未支付订单*/
function qxdd(o_code,o_state){
	if("未支付"==o_state){
		var b = confirm("订单："+o_code+"，你确定取消订单？");
		if(b){
			window.location.href='${pageContext.request.contextPath}/order/qxOrder?o_code='+o_code+'&u_card=${user.u_card}';
		}else{}
	}else{
		alert("你的操作有误，请查看你的订单状态!");
	}
}

</script>
			                
                            <!-- 订单统计 -->
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                <div id="xs">
                               		<span id="tj1"></span>
                               		<span id="tj2"></span>
                               		<div style="position:absolute;top:380px;left:900px; font-family:楷体;font-size: 1.5em;font-weight: 900;">
                               			<label><input type="radio" checked="checked" name="radio" onclick="fun1()">支付状态</label>
                               			<br>
                               			<br>
                               			<br>
                               			<label><input type="radio" name="radio" onclick="fun2()">购买保险</label>
                               		</div>
                                </div>
                            </div>
                        </div>
                      </div>
                      
            </div>
        </div>
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/tjJS/jscharts.js"></script>
<script type="text/javascript">
$(function(){
	funT1();
	$("#tj1").show();
	$("#tj2").hide();
});
function fun1(){
	$("#tj1").show();
	$("#tj2").hide();
}
function fun2(){
	$("#tj2").show();
	$("#tj1").hide();
}
function funT1(){
	/* 订单是否支付 */
	var num1 =parseFloat('${PayOrders}') ;
	var num2 =parseFloat('${NoPayOrders}');
	var myData = new Array(['已支付',num1],['未支付',num2]);
	var colors = ['#0066CC', '#FF9900'];
	var myChart = new JSChart('tj1', 'pie');
	myChart.setDataArray(myData);
	myChart.colorizePie(colors);
	myChart.setTitle('订单支付状态统计');
	myChart.setTitleColor('#0066CC');
	myChart.setTitleFontSize(16);
	myChart.setTextPaddingTop(280);
	myChart.setPieValuesDecimals(1);
	myChart.setPieUnitsFontSize(9);
	myChart.setPieValuesFontSize(8);
	myChart.setPieValuesColor('#fff');
	myChart.setPieUnitsColor('#969696');
	myChart.setSize(616, 321);
	myChart.setPiePosition(308, 145);
	myChart.setPieRadius(95);
	myChart.setFlagColor('#fff');
	myChart.setFlagRadius(4);
	myChart.setBackgroundImage('<%=request.getContextPath() %>/fore/img/chart_bg.jpg');
	myChart.draw();

	/* 订单购买了保险 */
	var num3 =parseFloat('${BXOrders}') ;
	var num4 =parseFloat('${NoBXOrders}');
	var myData2 = new Array(['有保险',num3],['无保险',num4]);
	var colors2 = ['#99CCFF','#AF0202'];
	var myChart2 = new JSChart('tj2', 'bar');
	myChart2.setDataArray(myData2);
	myChart2.colorizeBars(colors2);
	myChart2.setTitle('是否购买过保险');
	myChart2.setTitleColor('#009966');
	myChart2.setAxisNameX('购买保险状态');
	myChart2.setAxisNameY('订单数目');
	myChart2.setAxisColor('#009966');
	myChart2.setAxisNameFontSize(16);
	myChart2.setAxisNameColor('#999');
	myChart2.setAxisValuesColor('#7E7E7E');
	myChart2.setBarValuesColor('#7E7E7E');
	myChart2.setAxisPaddingTop(60);
	myChart2.setAxisPaddingRight(140);
	myChart2.setAxisPaddingLeft(150);
	myChart2.setAxisPaddingBottom(50);
	myChart2.setTextPaddingLeft(105);
	myChart2.setTitleFontSize(11);
	myChart2.setBarBorderWidth(1);
	myChart2.setBarBorderColor('#009966');
	myChart2.setBarSpacingRatio(50);
	myChart2.setGrid(false);
	myChart2.setSize(616, 321);
	myChart2.setBackgroundImage('<%=request.getContextPath()%>/fore/img/chart_bg.jpg');
	myChart2.draw();
}
</script>
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


<!-- 订单详情隐藏框 -->
<div class="hide-body" id="jietu">
	<div class="close-window">
		<%-- <img alt="" src="<%=request.getContextPath() %>/fore/img/qczl.jpg"> --%>
		<a href="javascript:;" title="关闭" class="close">×</a>
		<h3 align="center">订单号：<span id="o_code"></span></h3>
	</div>
	<div class="login-body" style="background: url('../fore/img/qczl.jpg') no-repeat right bottom;">
		<div style="float: left;margin-left: 50px;">
			<img alt="" src="/car_img/${user.u_img}" style="width:120px; height: 150px;border: 1px solid #CCCCCC;border-radius:5px; ">
		</div>
		<div class="xx" style="float: left;margin-left: 30px;">
			<p><label>姓名:</label><span>${user.u_name}</span>
			<p><label>身份证号:</label><span>${user.u_card}</span></p>
			<p><label>驾驶证号:</label><span>${user.u_jscard}</span></p>
			<p><label>汽车车牌:</label><span id="b_code"></span>
		</div>
		<div class="xx" style="float: left;margin-left: 30px;">
			<p><label>提车日期:</label><span id="start_date"></span></p>
			<p><label>还车日期:</label><span id="end_date"></span></p>
			<p><label>总天数:</label><span id="days"></span>
			<p><label>提车地点:</label><span id="d_pname"></span>
		</div>
		<div class="xx" style="float: left;margin-left: 30px;">
			<p><label>￥35保险:</label><span id="o_bx"></span></p>
			<p><label>日租价:</label><span id="b_price"></span></p>
			<p><label>总金额:</label><span style="color:red;font-weight:900;" id="allMoney"></span></p>
			<p><label>订单状态:</label><span style="color:red;font-weight:900;" id="o_state"></span></p>
		</div>
		<div>
			<div style="margin-top:15px; margin-left: 60px;">
				<img id="biaozhi" alt="" src="" style="width:90px;height:90px;border: 1px solid #CCCCCC;border-radius:5px; ">
			</div>
			<div style="margin-top:15px; margin-left: 60px;">
				<img id="type" alt="" src="" style="width:90px;height: 90px;border: 1px solid #CCCCCC;border-radius:5px; ">
			</div>
		</div>
		<div style="position:absolute;top:300px;left:222px; width:600px;height:200px;border: 1px solid #CCCCCC;border-radius:5px; ">
			<marquee  behavior="alternate" onmouseover="this.stop();" onmouseout="this.start();">
				<img id="car_img1" alt="" src="" style="margin:7px; width:210px;height: 180px;border: 1px solid #CCCCCC;border-radius:5px; ">
				<img id="car_img2" alt="" src="" style="margin:7px; width:210px;height: 180px;border: 1px solid #CCCCCC;border-radius:5px; ">
				<img id="car_img3" alt="" src="" style="margin:7px; width:210px;height: 180px;border: 1px solid #CCCCCC;border-radius:5px; ">
				<img id="car_img4" alt="" src="" style="margin:7px; width:210px;height: 180px;border: 1px solid #CCCCCC;border-radius:5px; ">
			</marquee>
		</div>
	</div>
	<div class="bottom">
	<br>
		<hr>
		<h3 align="center">风行天下汽车租赁系统欢迎你！ 
			<span style="position:absolute;right:10px;border:1px solid #ccc;font-weight:900;
			border-radius:6px;padding:4px; font-family: 楷体;font-size:0.9em;" 
			onClick ="$('#jietu').tableExport({type: 'png', escape: 'false'});">保存截图</span>
		</h3>
		<input type="hidden" name="uploadfileRealPath">
	</div>
</div>
<!-- 订单详情隐藏框 -->
  </body>
</html>


<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/html2canvas.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/swfobject.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/jquery.base64.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/tableExport.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/webtoolkit.sprintf.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/jspdf.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/Base64.js"></script>  
<script>
function funXq(o_code){
	/* Ajax实现异步加载订单，并给表单设置值 */
	$.post("${pageContext.request.contextPath}/order/orderInfo?o_code="+o_code,function(data){
		$("#o_code").text(o_code)
		$("#b_code").html(data.b_code);
		$("#b_price").html(data.b_price);
		$("#start_date").html(data.start_date);
		$("#end_date").html(data.end_date);
		$("#days").html(data.days);
		$("#allMoney").html("￥"+(data.allMoney));
		$("#o_bx").html(data.o_bx);
		$("#o_state").html(data.o_state);
		$("#d_pname").html(data.diqu.d_pname); 

		$("#type").attr("src","/car_img/"+data.type.t_img); 
		$("#biaozhi").attr("src","/car_img/"+data.biaozhi.b_img); 

		$("#car_img1").attr("src","/car_img/"+data.carImage.img1); 
		$("#car_img2").attr("src","/car_img/"+data.carImage.img2); 
		$("#car_img3").attr("src","/car_img/"+data.carImage.img3); 
		$("#car_img4").attr("src","/car_img/"+data.carImage.img4); 
		
	});
}
jQuery(document).ready(function($) {
	$('.xq').click(function() { //jquery的点击事件 
		$('.hide-body').slideDown(200);//将隐藏的窗口div显示出来 
	});
	$('.close-window .close').click(function() {
		$('.hide-body').slideUp(200);//将显示的窗口隐藏起来 
	});
});
</script>
