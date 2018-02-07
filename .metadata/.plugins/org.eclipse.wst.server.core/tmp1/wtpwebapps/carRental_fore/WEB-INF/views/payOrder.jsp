<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=0.25"/>
<title>个人详情</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/fore/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/fore/css/font-awesome.min.css">
<!-- Custom CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/fore/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/fore/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/fore/css/responsive.css">
<style type="text/css">
.yh{
	float:left;
	font-family: 楷体;
	font-size: 1.3em;
	font-weight: 900;
	width: 170px;
	height: 30px;
}
.yh input{
	width: 15px;
	height: 15px;
}

/* 二维码放大 */
#qrcodeTable{  
         cursor: pointer;  
         transition: all 1.2s;  
 }  
#qrcodeTable:hover{  
     transform: scale(1.6);  
 }  
 
#qrcodeCanvas{  
         cursor: pointer;  
         transition: all 1.2s;  
 }  
#qrcodeCanvas:hover{  
     transform: scale(1.6);  
 }  
</style>
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
								<li><a href="javascript:exitFun()"><i
										class="fa fa-user"></i> 退出</a></li>
							</ul>
						</div>
						<script type="text/javascript">
		                	function exitFun(){
		                		var b = confirm("你确定退出？");
		                		if(b){
		                			window.location.href='<%=request.getContextPath()%>/fore/exit.jsp';
									} else {}
							}
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

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
						<li><a style="font-family: 仿宋; color: black; font-size: 2em;" href="<%=request.getContextPath()%>/car/index/${user.u_card}">首页</a></li>
						<li><a style="font-family: 仿宋; color: black; font-size: 2em;" href="<%=request.getContextPath()%>/user/getUser/${user.u_card}">我的主页</a></li>
						<li><a style="font-family: 仿宋; color: black; font-size: 2em;" href="<%=request.getContextPath()%>/car/getPageCar?u_card=${user.u_card}">汽车查询</a></li>
						<li><a style="font-family: 仿宋; color: black; font-size: 2em;" href="<%=request.getContextPath()%>/order/getOrders?u_card=${user.u_card}">我的订单</a></li>
						<li class="active"><a style="font-family: 仿宋; color: red; font-size: 2em;" href="#">订单支付</a></li>
						<li><a style="font-family: 仿宋; color: black; font-size: 2em;" href="<%=request.getContextPath()%>/user/talk">联系客服</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<br>
	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div style="position: relative; top: -35px;">

							<div role="tabpanel">
								<ul class="product-tab" role="tablist">
									<li role="presentation" class="active"><a href="#home"
										aria-controls="home" role="tab" data-toggle="tab">网上在线支付</a></li>
									<li role="presentation"><a href="#profile"
										aria-controls="profile" role="tab" data-toggle="tab">扫码支付</a></li>
								</ul>
								<div class="tab-content">
									<!-- 在线支付 -->
									<div role="tabpanel" class="tab-pane fade in active" id="home">
										<div style="margin-left: 100px;">
											<form action="<%=request.getContextPath() %>/paymentServlet">
												<div style="background-color: #ccc;">
													<label>订单号：</label>
													<input name="orderId" readonly="readonly" style="border: none;font-size: 1.4em;width: 400px;background-color: #ccc;" value="${orderInfo.o_code}">
													<label style="margin-left: 40px;">应支付：</label>
													<input name="amount" readonly="readonly" style="border: none;font-size: 1.5em;color: red;background-color: #ccc;" value="${orderInfo.allMoney+800}">
												</div>
												<br>
												
												<div style="border: 1px solid #ccc;padding-left: 10px;">
													<br>
													<div class="yh"><input type="radio" name="pd_FrpId" value="CCB-NET" checked="checked">中国建设银行</div>
													<div class="yh"><input type="radio" name="pd_FrpId" value="ICBC-NET">中国工商银行</div>
													<div class="yh"><input type="radio" name="pd_FrpId" value="ABC-NET">农业银行 </div>
													<div class="yh"><input type="radio" name="pd_FrpId" value="CMBCHINA-NET">招商银行</div>
													<div class="yh"><input type="radio" name="pd_FrpId" value="ABC-NET-B2C">中国农业银行</div>
													<div class="yh"><input type="radio" name="pd_FrpId" value="BCCB-NET-B2C">北京银行</div>
												    <br>
												    <br>
													<div class="yh"><input type="radio" name="pd_FrpId" value="BOCO-NET-B2C">交通银行 </div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="NJCB-NET-B2C">南京银行 </div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="CMBC-NET-B2C">中国民生银行 </div>      
													<div class="yh"> <input type="radio" name="pd_FrpId" value="CMBC-NET-B2C">光大银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="BOC-NET-B2C">中国银行 </div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="PINGANBANK-NET">平安银行</div>      
												    <br>
												    <br>
													<div class="yh"><input type="radio" name="pd_FrpId" value="CBHB-NET-B2C">渤海银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="HKBEA-NET-B2C">东亚银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="NBCB-NET-B2C">宁波银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="SDB-NET-B2C">深圳发展银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="ECITIC-NET-B2C">中信银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="ECITIC-NET-B2C">广发银行</div>      
												    <br>
												    <br>
													<div class="yh"><input type="radio" name="pd_FrpId" value="SHB-NET-B2C">上海银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="SPDB-NET-B2C">上海浦发银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="POST-NET-B2C">中国邮政</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="HZBANK-NET-B2C">杭州银行 </div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="HXB-NET-B2C">华夏银行</div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="CZ-NET-B2C">浙商银行</div>      
												    <br>
													<br>
													<div class="yh"><input type="radio" name="pd_FrpId" value="SZX-NET">神州行 </div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="QQCARD-NET">Q币卡 </div>      
													<div class="yh"><input type="radio" name="pd_FrpId" value="TELECOM-NET">电信卡</div>  
												<br>
												<br>
												</div>
												
												<br>
												<input type="submit" value="确认支付">
											</form>
										</div>
									</div>

<script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
<script src="<%=request.getContextPath() %>/fore/js/jquery.min.js" type="text/javascript"></script>  
<script src="<%=request.getContextPath() %>/fore/js/jquery.qrcode.js" type="text/javascript"></script>  
<script src="<%=request.getContextPath() %>/fore/js/qrcode.js" type="text/javascript"></script>  


									<!-- 微信扫码 -->
									<div role="tabpanel" class="tab-pane fade" id="profile">
											<div style="float: left;margin-left: 200px;">
												<h2 style="text-align: center;">微信</h2>
												<div id="qrcodeTable">
													<img style="width: 256px;height: 256px;" alt="" src="<%=request.getContextPath() %>/fore/pay/wx.jpg">
												</div>
											</div>
											<div style="float: left;margin-left: 200px;">
												<h2 style="text-align: center;">支付宝</h2>
												<div id="qrcodeCanvas">
													<img style="width: 256px;height: 256px;" alt="" src="<%=request.getContextPath() %>/fore/pay/zfb.jpg">
												</div>
											</div>	
											
									</div>
								</div>
						</div>
				</div>
		</div>
	</div>
<script>
/* jQuery('#qrcodeTable').qrcode({
	render	: "table",
	text	: "https://open.weixin.qq.com/connect/oauth2/authorize"
});	 */
/* jQuery('#qrcodeCanvas').qrcode({
	text	: "https://openapi.alipay.com/gateway.do"
});	 */
</script>	
			
	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							兰州交通大学.clm&nbsp;&nbsp;&nbsp;<a target="_blank" href="#">登录QQ</a>
						</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	<script src="<%=request.getContextPath()%>/fore/js/min.js"></script>
	<script src="<%=request.getContextPath()%>/fore/js/min2.js"></script>

	<!-- jQuery sticky menu -->
	<script
		src="<%=request.getContextPath()%>/fore/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/fore/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script
		src="<%=request.getContextPath()%>/fore/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="<%=request.getContextPath()%>/fore/js/main.js"></script>
</body>
</html>