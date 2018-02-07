<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=0.25"/>
    <title>交流</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/responsive.css">
    <script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
    
<style> 
    *{margin:0; padding:0; list-style:none;}
	#outer{width: 100%;margin: 50px auto 0;padding: 20px;}
	#con{width: 700px;height: 30px;padding: 0 10px; font-size: 20px; margin-bottom: 20px;}
	#talk{overflow: hidden;}
	#talk li{font-size: 16px; line-height: 150%;}
	#talk .我{background-color:#CCCCCC; text-align: right; color: blue;}
	#talk .pc{color: #46b8da;}
	#kj a,#fs a,#lt a{
		text-decoration: none;
		height: 25px;
		border: 1px solid #CCCCCC;
		border-radius:5px;
		background-color: #CCCCFF;
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


    <br>
    <div class="mainmenu-area" style="position: absolute;top: 80px;left:110px;margin: 0;">
        <div class="container">
            <div class="row">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav" style="border: 1px solid #ccc;border-radius:15px;">
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/index/${user.u_card}">首页</a></li>
                       	<li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/user/getUser/${user.u_card}">我的主页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getPageCar?u_card=${user.u_card}">汽车查询</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/order/getOrders?u_card=${user.u_card}">我的订单</a></li>
                        <li class="active"><a style="font-family: 仿宋;color:red;font-size: 2em;" href="#">联系客服</a></li>
                    	<li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getImg?u_card=${user.u_card}">车图一览</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> 
    
    <div class="single-product-area">
        <div class="container">
					<div style="width: 100%;" role="tabpanel">
                        <ul class="product-tab" role="tablist">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">小风</a></li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">客服</a></li>
                        </ul>
                        <div class="tab-content">
                       		<!-- 机器人-->
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                            <div id="outer" style="border:1px solid #CCCCCC; height: 250px;">
                            	<ul id="talk"></ul>
                            </div>
	                    <script type="text/javascript">
	                    function checkScrollScreen1(){
	                    	if(!$("#scrollScreen1").attr("checked")){
	                        	$("#outer").css("overflow","scroll");
	                        }else{
	                        	$("#outer").css("overflow","hidden");
	                            $("#outer").scrollTop($("#outer").height()*2);
	                        }
	                        setTimeout('checkScrollScreen1()',500);
	                    }
	                    </script>
	                            <div style="margin-top:15px;">
	                            	<div id="kj" style="float:left; font-family:楷体;font-size: 1.6em;font-weight: 900; ">
		                            	<label id="lss">快捷发送点这里:</label>
		                            	<a href="#" id="m1" onclick="fm1()">你好!</a>
		                            	<a href="#" id="m2" onclick="fm2()">这里的汽车都挺好的!</a>
		                            	<a href="#" id="m3" onclick="fm3()">我这会有点忙！</a>
	                            	</div>
	                            	<div id="fs" style="float: right;">
		                            	<input style=" width:200px;height: 35px;font-family:楷体;font-size: 1.3em;font-weight: 900;" type="text" id="con" placeholder="请输入..."/>
		                            	<a href="#" onclick="fs()" style="background-color:#99CCCC;font-size: 1.4em; ">发送</a>
		                            	<a href="#" onclick="qp()" style="background-color:#CCFFFF;font-size: 1.4em; ">清屏</a>
	                            	</div>
	                            </div>
	                            <input style="margin-left: 20px;margin-top: 8px;" name="scrollScreen" type="checkbox" class="noborder" id="scrollScreen1" onClick="checkScrollScreen1()" value="1" checked>
	                            
				            </div>

<script type="text/javascript">
var sysBBS = "<span style='font-size:14px; line-height:30px;'>欢迎光临聊天室，请遵守聊天室规则，不要使用不文明用语。</span><br><span style='line-height:22px;'>";
window.setInterval("showContent();",1000);
// Jquery:JS框架.
// 相当于window.onload
$(function(){
	showContent();
});

/* //键盘事件监听回车键
document.onkeyup = function (e) {
    var ev = e || event;
    if(ev.keyCode == 13){
    	sendMessage();
    }
} */

var url="/carRental_back/";
function sendMessage() {
	var textarea= $("#textarea").val();
	if(textarea==""||textarea==null){
		alert("请输入内容后发送！");
		return;
	}
	$.post(url+"userServlet?"+new Date().getTime(),$("#form1").serialize(),function(data){
		$("#list").html(sysBBS+data+"</span>");
	});
	fmusic1(); 
	$("#textarea").val("");
	$("#textarea").focus();
}

// 显示聊天的内容
function showContent(){
	$.post(url+"userServlet?"+new Date().getTime(),{'method':'getMessage'},function(data){
		$("#list").html(sysBBS+data+"</span>");
	});
}

/* 声音特效 */
function fmusic1(){
    var lss = $("#lss");
	$('<audio id="chatAudio1"><source src="music/3424.mp3" type="audio/ogg"></audio>').appendTo(lss);//载入声音文件 
    $('#chatAudio1')[0].play();
}

function checkScrollScreen(){
	if(!$("#scrollScreen").attr("checked")){
    	$("#list").css("overflow","scroll");
    }else{
    	$("#list").css("overflow","hidden");
        //当聊天信息超过一屏时，设置最先发送的聊天信息不显示
        //alert($("#content").height());
        $("#list").scrollTop($("#list").height()*2);
    }
    setTimeout('checkScrollScreen()',500);
}
</script>

                            <!-- 客服 -->
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                            
                            	<form id="form1" name="form1" method="post">
									<input type="hidden" name="method" value="sendMessage"/>
									<input type="hidden" name="username" value="${user.u_name}"/>
										<div id="list" style="border:1px solid #CCCCCC; height: 250px;font-size: 1.3em;">
	                            		</div>
										<div  style="margin-top: 15px;">
											<input name="scrollScreen" type="checkbox" class="noborder" id="scrollScreen" onClick="checkScrollScreen()" value="1" checked>
										      <select  style=" width:200px;height: 35px;font-family:楷体;font-size: 1.3em;font-weight: 900;" name="face" class="wenbenkuang">
													<option value="无表情的">无表情的</option>
													<option value="微笑着">微笑着</option>
													<option value="笑呵呵地">笑呵呵地</option>
													<option value="热情的">热情的</option>
													<option value="温柔的">温柔的</option>
													<option value="红着脸">红着脸</option>
													<option value="幸福的">幸福的</option>
													<option value="嘟着嘴">嘟着嘴</option>
													<option value="热泪盈眶的">热泪盈眶的</option>
													<option value="依依不舍的">依依不舍的</option>
													<option value="得意的">得意的</option>
													<option value="神秘兮兮的">神秘兮兮的</option>
													<option value="恶狠狠的">恶狠狠的</option>
													<option value="大声的">大声的</option>
													<option value="生气的">生气的</option>
													<option value="幸灾乐祸的">幸灾乐祸的</option>
													<option value="同情的">同情的</option>
													<option value="遗憾的">遗憾的</option>
													<option value="正义凛然的">正义凛然的</option>
													<option value="严肃的">严肃的</option>
													<option value="慢条斯理的">慢条斯理的</option>
													<option value="无精打采的">无精打采的</option>
												</select>
											<input style="width:300px;height: 35px;font-family:楷体;font-size: 1.3em;font-weight: 900;" type="text" name="textarea" id="textarea" placeholder="请输入..."/>
										  <input style="background-color:#99CCCC;font-size: 1.4em; " type="button" name="button" id="button" onclick="sendMessage()" value=" 发 送 " />
									</div>
								</form>
								
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
    
<!-- 引入与图灵机器聊天的js -->
<script src="<%=request.getContextPath() %>/fore/js/talk.js"></script>
    
   
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
