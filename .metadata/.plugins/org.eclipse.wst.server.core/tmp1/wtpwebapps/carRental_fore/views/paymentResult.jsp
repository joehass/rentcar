<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/jquery-2.0.3.min.js" ></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/jquery.min.js" ></script> 
 <script type="text/javascript">
$(function(){
    if($('#msg').text()=='支付失败!'){
        $('#msg').attr('style','color:red');
    }else{
        $('#msg').attr('style','color:green');

        /* 支付成功后修改订单状态 */
        $.post("${pageContext.request.contextPath}/order/orderResult?o_code="+'${r6_Order}',function(data){});
        
    }
});     
</script>
<style type="text/css">
     h1{
         text-align:center;
     }
</style>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/tx/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/tx/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/tx/css/component.css" />
</head>
<body>
<div class="container demo-1">
        <div class="content">
            <div id="large-header" class="large-header">
                <canvas id="demo-canvas"></canvas>
                <h4 class="main-title" style="font-size: 1.2em;">
					 <div style="margin:200px auto;width:500px">
		             <h2 id="msg" style="text-align: left;">${msg}</h2>
		             <h3 style="text-align: left;">HMSC:${hmac}</h3>
		             <h3 style="text-align: left;">订单:${r6_Order}</h3>
		             <h3 style="text-align: left;">支付金额:${r3_Amt }</h3>
		             <h3 style="text-align: left;">商户:${r_info}</h3>
		             <h3 style="text-align: left;">支付成功时间:${rp_PayDate}</h3>
		             <br>
		             <br>
		             <span id="mes" style="color:red;"></span>&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/order/getOrders" style="color:blue;">返回我的订单</a>
             		 </div>
				</h4>
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath() %>/fore/tx/js/TweenLite.min.js"></script>
    <script src="<%=request.getContextPath() %>/fore/tx/js/EasePack.min.js"></script>
    <script src="<%=request.getContextPath() %>/fore/tx/js/rAF.js"></script>
    <script src="<%=request.getContextPath() %>/fore/tx/js/demo-1.js"></script>

       
        
        
 <script type="text/javascript"> 
	var i = 10; 
	var intervalid; 
	intervalid = setInterval("fun()", 1000); 
	function fun() { 
		if (i == 0) { 
			window.location.href = "<%=request.getContextPath()%>/order/getOrders"; 
			clearInterval(intervalid); 
		} 
		document.getElementById("mes").innerHTML = i+"&nbsp;S"; 
		i--; 
	} 
</script>
</body>
</html>