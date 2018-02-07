<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/jquery-2.0.3.min.js" ></script>
<title>name</title>
</head>
<body>
<form  action="https://www.yeepay.com/app-merchant-proxy/node" method="post" id="payform">
	<input type="hidden" name="p0_Cmd" value="${messageType }">
	<input type="hidden" name="p1_MerId" value="${p1_MerId }">
	<input type="hidden" name="p2_Order" value="${orderId }">
	<input type="hidden" name="p3_Amt" value="${amount }">
	<input type="hidden" name="p4_Cur" value="${currency }">
	<input type="hidden" name="p5_Pid" value="${productId }">
	<input type="hidden" name="p6_Pcat" value="${productCat }">
	<input type="hidden" name="p7_Pdesc" value="${productDesc }">
	<input type="hidden" name="p8_Url" value="${merchantCallbackURL }">
	<input type="hidden" name="p9_SAF" value="${addressFlag }">
	<input type="hidden" name="pa_MP" value="${sMctProperties }">
	<input type="hidden" name="pd_FrpId" value="${pd_FrpId }">
	<input type="hidden" name="pr_NeedResponse" value="${pr_NeedResponse }">
	<input type="hidden" name="hmac" value="${md5Hmac }">
</form>
<script type="text/javascript">
$(document).ready(function(){
	$("#payform").submit();
});
</script>
</body>
</html>











