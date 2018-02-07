<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=0.25"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/tx/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/tx/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/tx/css/component.css" />
<title>name</title>
</head>
<body>
<!-- 代码部分begin -->
    <div class="container demo-1">
        <div class="content">
            <div id="large-header" class="large-header">
                <canvas id="demo-canvas"></canvas>
                <h3 class="main-title" style="color:red;">登录失败！<br>
                <i id="mes" style="color: blue;"></i>后返回登录界面！</h3>
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath() %>/fore/tx/js/TweenLite.min.js"></script>
    <script src="<%=request.getContextPath() %>/fore/tx/js/EasePack.min.js"></script>
    <script src="<%=request.getContextPath() %>/fore/tx/js/rAF.js"></script>
    <script src="<%=request.getContextPath() %>/fore/tx/js/demo-1.js"></script>
    <!-- 代码部分end -->
<script type="text/javascript"> 
	var i = 5; 
	var intervalid; 
	intervalid = setInterval("fun()", 1000); 
	function fun() { 
		if (i == 0) { 
			window.location.href = "<%=request.getContextPath()%>/fore/login.jsp"; 
			clearInterval(intervalid); 
		} 
		document.getElementById("mes").innerHTML = i+"&nbsp;S"; 
		i--; 
	} 
</script>
	
</body>
</html>