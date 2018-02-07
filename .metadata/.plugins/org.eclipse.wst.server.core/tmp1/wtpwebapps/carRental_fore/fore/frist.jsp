<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>游客页面</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=0.25"/>

<link href="<%=request.getContextPath() %>/fore/css/frist/css/style.css" rel="stylesheet" />
<style>
body{
	background-color: #CCFFFF;
}
#dl:HOVER{
	color:red;
}
#imgg{  
    cursor: pointer;  
    transition: all 1.3s;  
}  
#imgg:hover{  
    transform: scale(1.4);  
}  
</style>

<script src='<%=request.getContextPath() %>/fore/css/frist/js/jquery.min.js'></script>

</head>
<body>
<div style="position:inherit ;color: black;background-color:green;height: 50px;">
<marquee style="padding-top: 5px;"> <h4 style="font-family:楷体;font-size: 2.2em;font-weight: 900;color:red;">欢迎来到汽车租赁系统！</h4></marquee>
<div style="background-color: #99CCFF;position: absolute;top:0px;right: 0px;height: 50px;width: 180px;text-align: center;padding-top: 10px;">
<a id="dl" href="<%=request.getContextPath() %>/fore/login.jsp" style="font-family:仿宋;font-weight: 900;font-size: 1.6em;text-decoration: none;border:1px solid #FFF;border-radius:8px;margin-top: 15px;">登录</a>

<a id="dl" href="<%=request.getContextPath() %>/user/registerJsp" style="font-family:仿宋;font-weight: 900;font-size: 1.6em;text-decoration: none;border:1px solid #FFF;border-radius:8px;margin-top: 15px;margin-left: 20px;">注册</a>
</div>
</div>
<div id="cubeTransition">

<!-- 111 -->
<div class="page1">
<h2 style="position: relative;top:30px;">
<video id="myVideo" src="<%=request.getContextPath() %>/fore/video/fhqc.mp4" preload="auto" poster="<%=request.getContextPath() %>/fore/img/fll.jpg" controls="controls" style="border:12px solid #ccc;border-radius:10px;height:480px;width:852px;padding: 0px;">
</video>

<script type="text/javascript">
$.post("${pageContext.request.contextPath}/car/getVideo",function(data){
	 $("#myVideo").attr("src","/car_img/"+data);
});
</script>

</h2>
</div>
<!-- 2222 -->
<div style="background-color: #66CC99;" class="page2">
<h2>
<i style="color:green; font-size: 0.43em;font-family:楷体; position: absolute;top:-158px;left: 70px;">租<br>车<br>流<br>程<br>介<br>绍</i>
<img usemap="#mymap" style="position: absolute;top:-140px;left:180px;height:330px;width:700px;" src="<%=request.getContextPath() %>/fore/img/yylc.png">
<map name="mymap">
<area shape = "rect" coords="150,5,291,40"   href="#" onclick="zcFun()"/>
<area shape = "rect" coords="150,200,291,240" href="#" onclick="dlFun()"/>
<area shape = "rect" coords="362,109,462,133" href="#" onclick="cxqcFun()"/>
<area shape = "rect" coords="361,180,464,200" href="#" onclick="grzyFun()"/>
<area shape = "rect" coords="361,245,462,273" href="#" onclick="yyqcFun()"/>
<area shape = "rect" coords="358,302,459,326" href="#" onclick="lxkfFun()"/>
<area shape = "rect" coords="550,208,655,240" href="#" onclick="qxFun()"/>
<area shape = "rect" coords="550,269,655,300" href="#" onclick="zfFun()"/>
</map>
<textarea id="in" style="border:none;background-color: #66CC99;position: absolute;top:-140px;right: 90px;width:320px;height: 340px;font-family:楷体;font-size: 0.275em;font-weight: 900;color:green;">
新用户注册
1.用户必须输入相应的值！
2.填入的手机号要接收短信验证码！
3.注册成功后即可登录！
</textarea>
<i style="color:green; font-size: 0.25em;font-family:楷体; position: absolute;top: 220px;left: 70px;"><br>个<br>人<br>号</i>
<img id="imgg" style="width: 150px;height: 150px;position: absolute;top: 220px;left:120px;" title="个人号" src="<%=request.getContextPath() %>/fore/img/erweima.jpg">
<i style="color:green; font-size: 0.25em;font-family:楷体; position: absolute;top: 220px;left:300px;"><br>公<br>众<br>号</i>
<img id="imgg" style="width: 150px;height: 150px;position: absolute;top: 220px;left:350px;" title="公众号" src="<%=request.getContextPath() %>/fore/img/ewm.jpg">
<i style="color:green; font-size: 0.27em;font-family:楷体; position: absolute;top: 230px;left:525px;">
个人号：系统、租车流程介绍，积分兑换等功能
<br><br>
公众号：翻译、天气预报、新车、优惠推荐等功能
</i>
</h2>
</div>

<!-- 3333 -->
<div style="background-color: #246;" class="page3">
<label id="flashcontent" style="position:absolute;left:315px;top:80px; border: 10px solid #ccc;border-radius:10px ;"></label>
<label style="position:absolute;left:440px;top:500px;font-family:楷体;font-size: 0.35em;font-weight: 900;">
<label id="mkl"><input type="radio" name="sand" checked="checked" id="slr" onclick="sFun()">迈凯伦内观图</label>
<label id="adl"><input type="radio" name="sand" id="ad" style="margin-left: 100px;" onclick="aFun()">奥迪外观图</label>
</label> 
</div>

</div>

<ul id="bullets"></ul>
<script type="text/javascript" src="<%=request.getContextPath() %>/fore/carImg/swfobject.js"></script>
<script>
srlFun();

function sFun(){
	srlFun();
}
function aFun(){
	adFun();
}

/* 奥迪 */
function adFun(){
	$("#flashcontent").css("left","345px");
	$("#adl").css("color","yellow");
	$("#mkl").css("color","black");
	
	var so = new SWFObject("<%=request.getContextPath() %>/fore/carImage1/result6.swf", "result6.swf", "640px", "313px", "9.0.0", "#ffffff");
	so.addParam("quality", "high");
    so.addParam("salign", "lt");
    so.addParam("allowScriptAccess", "always");
    so.addParam("allowFullScreen", "true");
    so.addVariable("waitingPic","wait.gif");
    so.write("flashcontent");
}
/* slr */
function srlFun(){
	 $("#flashcontent").css("left","315px");
	 $("#adl").css("color","black");
	 $("#mkl").css("color","yellow");
	
	 var so = new SWFObject("<%=request.getContextPath() %>/fore/carImg/PWViewer.swf", "sotester", "700px", "390px", "9.0.0", "#FFFFFF"); 
	 so.addParam("allowNetworking", "all"); 
	 so.addParam("allowScriptAccess", "always"); 
	 so.addParam("allowFullScreen", "true"); 
	 so.addParam("scale", "noscale"); 
	 so.addVariable("configFileSize", "1.440"); 
	 so.addVariable("zipResSize", "0.000"); 
	 so.addVariable("sceneFilesSize", "553.258"); 
	 so.addVariable("base", "car/"); 
	 so.addVariable("lwImg", "resources/waiting.gif"); 
	 so.addVariable("lwBgColor", "255,255,255,255"); 
	 so.addVariable("lwBarBgColor", "255,45,91,141"); 
	 so.addVariable("lwBarColor", "255,130,170,215"); 
	 so.addVariable("lwBarBounds", "0,0,0,0"); 
	 so.addVariable("lwShowLoadingPercent", "false"); 
	 so.addVariable("iniFile", "config_car.bin"); 
	 so.addVariable("progressType", "0"); 
	 so.addVariable("swfFile", ""); 
	 so.addVariable("href", location.href); 
	 so.write("flashcontent");
} 
</script>         
<!-- 分享 -->
<script>
window._bd_share_config={
		"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},
		"slide":{"type":"slide","bdImg":"7","bdPos":"right","bdTop":"150"},
		"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],
			"viewText":"分享","viewSize":"32"},
		"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};
		with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>


<script type="text/javascript">
function zcFun(){
	$("#in").html("新用户注册\n1.用户必须输入相应的值！\n2.填入的手机号要接收短信验证码！\n3.注册成功后即可登录！");
}
function dlFun(){
	$("#in").html("用户登录\n1.注册之后进行登录！\n2.用户必须输入相应的值！\n3.必须填入验证码！");
}
function cxqcFun(){
	$("#in").html("查询汽车\n\n1.跳转到汽车主页！\n\n2.输入你想要查询的汽车的配置信息！");
}
function grzyFun(){
	$("#in").html("个人主页\n1.显示自己的信息！\n2.修改密码！\n3.充值余额！\n4.兑换积分！\n5.进行留言！\n6.查看充值记录！");
}
function yyqcFun(){
	$("#in").html("预约汽车\n1.显示汽车和你的信息！\n2.选择提、还车日期！\n3.你必须选择提车地点！\n4.地图中查询店铺！");
}
function lxkfFun(){
	$("#in").html("联系客服：\n1.和公司客服进行聊天，提出问题或改进意见！\n2.你的好的意见会被采用的！");
}
function qxFun(){
	$("#in").html("取消订单：\n1.取消“已预约”状态的订单！\n2.取消之后还可以看到！\n3.你可以打印订单！");
}
function zfFun(){
	$("#in").html("支付订单：\n1.你可以选择网上在线支付方式！\n2.支付完成之后记得按时到提车地点提车！");
}
</script>


<script>
function animationIn(i){
/* console.log(i,'i\'m in') */
switch(i) {
    case 1:
        $('.page2 h2').fadeIn();
        break;
    default:
        ;
}
}
function animationOut(i){
/* console.log(i,'i\'m out') */
switch(i) {
    case 1:
        $('.page2 h2').fadeOut();
        break;
    default:
        ;
}
}
</script>
<script src='<%=request.getContextPath() %>/fore/js/jquery-1.7.2.min.js'></script>
<script src='<%=request.getContextPath() %>/fore/css/frist/js/mousewheel.js'></script>
<script src="<%=request.getContextPath() %>/fore/css/frist/js/jquery.touchSwipe.js"></script>
<script src="<%=request.getContextPath() %>/fore/css/frist/js/cubeTransition.js"></script>
</body>
</html>

