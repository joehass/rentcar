<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>用户注册页面</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/css/re.css" />
<script src="<%=request.getContextPath() %>/fore/js/upload.js"></script>
<script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/css/default.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/css/component.css" />
		<script src="<%=request.getContextPath() %>/fore/js/modernizr.custom.js"></script>
<script type="text/javascript">

function speck(text){
	zhText = encodeURI(text);
	/* document.write("<audio id='speckid' autoplay=\"autoplay\">");
	document.write("<source src=\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text="+ zhText +"\" type=\"audio/mpeg\">");
	/* document.write("<embed height=\"0\" width=\"0\" src=\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text="+ zhText +"\">"); */
	/* document.write("</audio>");  */
	$("#speckid").attr("src","http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text="+ zhText);
	
}

function checkAll(){
	return checkName()&&checkDate()&&checkCard()&&checkJcard()&&checkaddress()&&checkpassword()&&checkuCpassword()&&checkphone()&&checkYphone();
} 
/* 获取验证码 */
function getYcode(){
	/* 发送验证码 */
	if(checkphone()){
		var u_phone = $("input[name='u_phone']").val();
		$.post("/carRental_back/getSmscodeServlet?u_phone="+u_phone,{'method':'getYcode'},function(data){
			$("#Mcode").val(data);
		});
	} 
	/* $("#Mcode").val("123456"); */
}

function checkName(){
	var name = $("input[name='u_name']").val(); 
	if(name == ""){
		speck('用户名不能为空！');
		$("#Tname").html('用户名不能为空！');
		$("#Tname").css({color:"red"});
		return false;
	}else{
		$("#Tname").html("<font color='green' >√  可用</font>");
		return true;
	}
}
function checkDate(){
	var currentdate='<%=new Date().toLocaleString().toString().substring(0, 9)  %>';
	var u_date = $("input[name='u_date']").val();
	if(u_date == ""){
		speck('出生日期不能为空！');
		$("#Tdate").html('出生日期不能为空！');
		$("#Tdate").css({color:"red"});
		return false;
	}
	if(getRDate(u_date,currentdate)<18){
		speck('你的年龄小于18岁，不能租车！');
		$("#Tdate").html('你的年龄小于18岁，不能租车！');
		$("#Tdate").css({color:"red"});
		return false;
	}
	if(getRDate(u_date,currentdate)>60){
		speck('你的年龄大于60岁，不能租车！');
		$("#Tdate").html('你的年龄大于60岁，不能租车！');
		$("#Tdate").css({color:"red"});
		return false;
	}
	$("#Tdate").html("<font color='green'>√ 合适</font>");
	return true;
	
}
/* 日期相减的年份 */
function getRDate(sDate,eDate){
	var sArr = sDate.split("-");
	var eArr = eDate.split("-");
	var sRDate = sArr[0];
	var eRDate = eArr[0];
	var result = eRDate-sRDate;
	return result;
}
function checkCard(){
	var u_card = $("input[name='u_card']").val();
	if(u_card == ""){/*10-15-13-18位*/
		speck('身份证号码不能为空！');
		$("#Tcard").html('身份证号码不能为空！');
		$("#Tcard").css({color:"red"});
		return false;
	}
	/*从数据库查找是否有此用户，如果身份证号注册，则提示：该身份证已注册！*/
	$.post("${pageContext.request.contextPath}/user/verifyUser?u_card="+u_card,function(data){
		if("1"==data){
			speck('该身份证已注册！请填写你自己的身份证号！');
			$("#Tcard").html('该身份证已注册！');
			$("#Tcard").css({color:"red"});
		} else{
			$("#Tcard").html("<font color='green'>√ 可用</font>");
		}
	});
	if("该身份证已注册！"==$("#Tcard").text()){
		return false;
	}
	
	$("#Tcard").html("<font color='green'>√ 可用</font>");
	return true;

}
function checkJcard(){
	var u_Jcard = $("input[name='u_Jcard']").val();
	if(u_Jcard == ""){/*12位*/
		speck('驾驶证号码不能为空！');
		$("#TJcard").html('驾驶证号码不能为空！');
		$("#TJcard").css({color:"red"});
		return false;
	}else{
		$("#TJcard").html("<font color='green'>√ 可用</font>");
		return true;
	}
}
function checkaddress(){
	var u_address = $("input[name='u_address']").val();
	if(u_address == ""){
		speck('家庭住址不能为空！');
		$("#Taddress").html('住址不能为空！');
		$("#Taddress").css({color:"red"});
		return false;
	}else{
		$("#Taddress").html("<font color='green'>√ 地址有效</font>");
		return true;
	}
}
function checkpassword(){
	var u_password = $("input[name='u_pass']").val();
	if(u_password == ""){
		speck('密码不能为空！');
		$("#Tpassword").html('密码不能为空！');
		$("#Tpassword").css({color:"red"});
		return false;
	}else{
		$("#Tpassword").html("<font color='green'>√ 密码可用</font>");
		return true;
	}
}
function checkuCpassword(){
	var u_Cpassword = $("input[name='u_Cpassword']").val();
	var u_password = $("input[name='u_pass']").val();
	if(u_Cpassword == ""){
		speck('请再次输入密码！');
		$("#TCpassword").html('请再次输入密码！');
		$("#TCpassword").css({color:"red"});
		return false;
	}else{
		if(u_Cpassword!=u_password){
			speck('你两次输入的密码不一致，请仔细核对！');
			$("#TCpassword").html('两次密码不一致！');
			$("#TCpassword").css({color:"red"});
			return false;
		}else{
			$("#TCpassword").html("<font color='green'>√ 两次密码一致！</font>");
			return true;
		}
	}
}
function checkphone(){
	var u_phone = $("input[name='u_phone']").val();
	if(u_phone == ""){
		speck('手机号码不能为空！');
		$("#Tphone").html('手机号码不能为空！');
		$("#Tphone").css({color:"red"});
		return false;
	}else{
		$("#Tphone").html("<font color='green'>√</font>");
		return true;
	}
}
function checkYphone(){
	var u_Yphone = $("input[name='u_Yphone']").val();
	if(u_Yphone == ""){
		speck('验证码不能为空！');
		$("#TYphone").html('验证码不能为空！');
		$("#TYphone").css({color:"red"});
		return false;
	}
	var checkCode =$("#Mcode").val();
	if(checkCode!=u_Yphone){
		speck('对不起   你输入的验证码错误！');
		$("#TYphone").html('验证码错误！');
		$("#TYphone").css({color:"red"});
		return false;
	}
	$("#TYphone").html("<font color='green'>√ 验证码正确！</font>");
	return true;
	
}
function checkimg(){
	var img = $("input[name='u_img']").val();
	if(img == ""){
		$("#Timg").html('请选择图片！');
		$("#Timg").css({color:"red"});
		return false;
	}else{
		$("#Timg").html("<font color='green'>√ 可用</font>");
		return true;
	}
}

function tj() {
	if(checkAll()){
		speck('恭喜你！注册成功，经管理员审核后，你才可以租车！');
		var img = $("input[name='u_img']").val();
		if(""==img||null==img){
			img="*"
		} 
		/* alert(img); */
		var user =  $("input[name='u_name']").val()+ "!"
		+	$("select[name='u_sex']").val()+ "!"
		+	$("input[name='u_date']").val()+ "!"
		+	$("input[name='u_card']").val()+ "!"
		+	$("input[name='u_jscard']").val()+ "!"
		+	$("input[name='u_address']").val()+ "!"
		+	$("input[name='u_pass']").val()+ "!"
		+	$("input[name='u_phone']").val()+ "!"
		+	img;
		window.location.href='<%=request.getContextPath()%>/user/addUser?user='+user; 
	}else{
		}
} 
</script>
</head>
<body>   
<script>
var addInfo = "<%=request.getAttribute("result")%>";
if(addInfo != null&& addInfo !=""){
	if(addInfo=="0"){
		alert("【注册失败!】");
	}else if(addInfo == "1"){
		alert("【注册成功!】");
	}
}else{
	addInfo =="";
}
</script>   
   <form <%-- action="${pageContext.request.contextPath }/user/addUser" --%> method="post"  enctype="multipart/form-data">
   <ul>
	  <li class="active">位置><a href="<%=request.getContextPath()%>/fore/login.jsp" style="color:red;">登录</a>>新用户注册</li>
	</ul>
	
		<div class="item">
	       	<div class="item">
	           <label class="lab">用户名:</label>
	           <input type="text" name="u_name"/>
	           <span id="Tname" style="font-weight: 900">*数字和字母组成！</span>
	       </div>
	       <div class="item" >
	           <label class="lab">性别:</label>
	           <select name="u_sex">
	           		<option value="男" selected="selected">男</option>
	           		<option value="女">女</option>
	           </select>
	           <span id="Tsex" style="font-weight: 900">*选择性别！</span>
	       </div>
	       <div class="item">
	           <label class="lab">出生日期:</label>
	           <input type="date" name="u_date"/>
	           <span id="Tdate" style="font-weight: 900">*选择出身日期！</span>
	       </div> 
	       <div class="item">
	           <label class="lab">身份证号:</label>
	           <input type="text" name="u_card"/>
	           <span id="Tcard" style="font-weight: 900">*18位数字！</span>
	       </div>
	       <div class="item">
	           <label class="lab">驾驶证号:</label>
	           <input type="text" name="u_jscard"/>
	           <span id="TJcard" style="font-weight: 900">*8位数字！</span>
	       </div>  
	       <div class="item">
	           <label class="lab">住址:</label>
	           <input type="text" name="u_address"/>
	           <span id="Taddress" style="font-weight: 900">*你的家庭住址！</span>
	       </div>  
	       <div class="item">
	           <label class="lab">密码:</label>
	           <input type="text" name="u_pass"/>
	           <span id="Tpassword" style="font-weight: 900">*设置密码！</span>
	       </div>  
	       <div class="item">
	           <label class="lab">重新输入:</label>
	           <input type="password" name="u_Cpassword"/>
	           <span id="TCpassword" style="font-weight: 900">*再次输入密码！</span>
	       </div>  
	       <div class="item">
	           <label class="lab">手机号:</label>
	           <input type="text" name="u_phone"/>
	           <span id="Tphone" style="font-weight: 900">*11位手机号码！</span>
	       </div>  
	       <div class="item">
	           <label class="lab">验证码:</label>
	           <input style="width:125px;" type="text" name="u_Yphone"/>
	           <input class="buttonZC"  style="margin-left:10px; width:110px;font-size: 1.0em;background-color: #99CC99;color:green;" type="button" onclick="getYcode()"  value="获取验证码"/>
	       	   <span id="TYphone" style="font-weight: 900">*手机验证码！</span>
	       	   <input type="text" id="Mcode" style="width;0px;height: 0px;border-left:0px;border-top:0px;border-right:0px;border-bottom:0px;background-color:transparent;">  
	       </div>  
	        <div class="item">
	           <label class="lab">用户头像:</label>
	           <img style="height: 180px;width: 180px;float: left;border-radius:5px;border:1px solid #ccc;" id="img" alt="图片暂时无法加载" src="<%=request.getContextPath() %>/fore/img/ren.jpg" >
			   <input style="opacity:0; float:left; height:180px;width:50px;font-size: 0.8em;" type="file" name="u_img" onchange="PreviewImage1(this,'img')"/>
	      	   <span id="Timg" style="font-weight: 900">选择头像！</span>
	       </div> 
	       
	       <div class="item">
	           <input class="button" style="background-color:#99CC00; width:125px;color:green;" type="button" onclick="tj()" value="注册"/>
	           <input  class="button" style="background-color:#99CC00;margin-left:40px; width:125px;color:blue;" type="reset" value="重置"/><!-- onclick="dl()" --> 
	       </div>
	 <div class="container">
			<div class="main">
				<ul id="cbp-bislideshow" class="cbp-bislideshow">
					<li><img src="<%=request.getContextPath()%>/fore/images/1.jpg" alt="image01"/></li>
					<li><img src="<%=request.getContextPath()%>/fore/images/2.jpg" alt="image02"/></li>
					<li><img src="<%=request.getContextPath()%>/fore/images/3.jpg" alt="image03"/></li>
					<li><img src="<%=request.getContextPath()%>/fore/images/4.jpg" alt="image04"/></li>
					<li><img src="<%=request.getContextPath()%>/fore/images/5.jpg" alt="image05"/></li>
					<li><img src="<%=request.getContextPath()%>/fore/images/6.jpg" alt="image06"/></li>
				</ul>
				<div id="cbp-bicontrols" class="cbp-bicontrols">
					<span class="cbp-biprev"></span>
					<span class="cbp-bipause"></span>
					<span class="cbp-binext"></span>
				</div>
			</div>
		</div>
		
		<script src="<%=request.getContextPath()%>/fore/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/fore/js/jquery.imagesloaded.min.js"></script>
		<script src="<%=request.getContextPath()%>/fore/js/cbpBGSlideshow.min.js"></script>
		<script>
			$(function() {
				cbpBGSlideshow.init();
			});
		</script>
<script type="text/javascript">
function dl(){
	window.location.href="<%=request.getContextPath()%>/fore/login.jsp";
}
</script>	       
	    </div>  
   			
   </form>
   
   <audio id='speckid' autoplay="autoplay">
   	<source id="sid" type="audio/mpeg">
   </audio>
   
</body>
</html>
