<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=0.25"/>
    <title>个人详情</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/responsive.css">
  	<script type="text/javascript" src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
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
                        <li class="active"><a style="font-family: 仿宋;color:red;font-size: 2em;" href="#">我的主页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getPageCar?u_card=${user.u_card}">汽车查询</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/order/getOrders?u_card=${user.u_card}">我的订单</a></li>
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
            <div style="position:relative; ;top:-35px;" class="row">
            	<hr>
            	<marquee>
                <h2 style="height: 10px;" class="sidebar-title">*提示：100积分可换取5元；充值时按充值金额5%获得积分；留言一次，你可获得1积分！</h2>
                </marquee>
                <hr>
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form method="post" action="" name="form1" style="width:500px;">
                                <table cellspacing="0" class="shop_table cart" style="width:500px;">
                                    
                                    <!-- 个人详情*********************************************************** -->
                                    	<tr class="cart_item">
                                            <td colspan="2" rowspan="2"><img style="height:120px;width:100px; " alt="头像不见了" src="/car_img/${user.u_img}"></td>
                                            <td class="product-thumbnail">身份证号</td>
                                            <td class="product-thumbnail">${user.u_card}</td>
                                        </tr>
                                        <tr class="cart_item">
                                        	<td class="product-thumbnail">驾驶证号</td>
                                            <td class="product-thumbnail">${user.u_jscard}</td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-thumbnail" style="width: 150px;" >性别</td>
                                            <td class="product-thumbnail">${user.u_sex}</td>
                                            <td class="product-thumbnail">电话</td>
                                            <td class="product-thumbnail">${user.u_phone}</td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-thumbnail" style="width: 150px;">年龄</td>
                                        	<td class="product-thumbnail">${user.u_age}</td>
                                        	<td class="product-thumbnail">住址</td>
                                        	<td class="product-thumbnail">${user.u_address}</td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-thumbnail" style="width: 150px;">积分</td>
                                            <td class="product-thumbnail">
												<div style="border: none;font-size: 1.5em;color: green;">${user.userPb.p_pd}</div>
											</td>
                                            <td class="product-thumbnail">注册日期</td>
                                            <td class="product-thumbnail">${user.u_date}</td>
                                        	
                                        </tr>
                                        <tr class="cart_item">
                                        	<td class="product-thumbnail" style="width: 150px;">余额</td>
                                            <td class="product-thumbnail">
                                        		<div style="border: none;font-size: 1.5em;color: red;">￥${user.userPb.p_money}</div>
                                           	</td>
                                           	<td class="product-thumbnail">
                                        		<input style="width: 130px;" type="text" id="nPs" placeholder="请输入旧密码！">
											</td>
                                        	<td class="product-thumbnail">
                                           	 	<input style="border-radius:10px;background-color: #ccc;height: 42px;width: 86px;padding: 0;" type="button" onclick="upFun()" value="修改密码">
                                           	</td>
                                        </tr>
                                        <tr class="cart_item">
                                           	<td colspan="4"> 
                                           		<input style="border-radius:10px;background-color: #ccc;height: 42px;width: 100px;padding: 0;text-align: center;" type="button" onclick="getMonFun()" value="充值余额">
                                           		<input style="border-radius:10px;background-color: #ccc;height: 42px;width: 100px;padding: 0;text-align: center;margin-left: 100px;" type="button" onclick="upPb()" value="兑换积分">
                                            </td>
                                        </tr>
                                    <!-- 购物车*********************************************************** -->
                                        
                                    </tbody>
                                </table>
                                <input id="ops" type="hidden" value="${user.u_psw}">
                            </form>

<script>
	function upPb(){
		var upPb = ${user.userPb.p_pd};
		if(upPb<100){
			alert("对不起，你的积分还不够100!");
			return;
		}
		var p_pd = prompt("请输入你要兑换的积分数：","100");
		if(p_pd % 100 !=0){
			alert("兑换的积分必须为100积分的倍数!");
			return;
		}
		if(p_pd){
			window.location.href='<%=request.getContextPath()%>/user/updateUserPb?u_card=${user.u_card}&p_pd='+p_pd;
			alert("积分兑换成功!");
		}else{}
	}

	function getMonFun(){
		var addMon = prompt("请输入要充值的金额：","100");
		if(addMon % 100 !=0){
			alert("充值的金额必须为100元的倍数!");
			return;
		}
		if(addMon){
			window.location.href='<%=request.getContextPath()%>/user/updateUserMoney?u_card=${user.u_card}&addMon='+addMon;
			alert("充值成功!");
		}
		
	}
	function upFun(){
		var Ps = document.getElementById("nPs").value;
		var oldPs = $("#ops").val();
		if(Ps==null || Ps==""){
			alert("请先输入你的原密码!");
			return;
		}
		if(Ps!=oldPs){
			alert("请输入的密码有误，修改失败!");
			return;
		}else{
			var newPs = prompt("请输入新密码（6位数字）！", "例如：123456");
			if(newPs){
				if("例如：123456"==newPs){
					alert("你要设定的密码格式有误！");
				}else{
					window.location.href='<%=request.getContextPath()%>/user/updateUserPs?u_card=${user.u_card}&newPs='+newPs;
					var b = confirm("恭喜你，密码修改成功!是否重新登录？");
			   		if(b){
			   			window.location.href='<%=request.getContextPath() %>/fore/exit.jsp';
			   		}else{}
					}
			}else{}
			
		}
		
		
	}
</script>
					
					
					<div style="width: 500px;position: absolute;top: 0px;left: 660px;" role="tabpanel">
                        <ul class="product-tab" role="tablist">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">留言板</a></li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">充值记录</a></li>
                        </ul>
                        <div class="tab-content">
                       		<!-- 留言 -->
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
								<div class="single-sidebar">
				                     
				                     <textarea style="font-family: 楷体;font-size: 1.6em;color: blue;" id="note" cols="40" rows="8" placeholder="请提出你宝贵的建议..."></textarea>
				                     <br>
				                     <input style="border-radius:10px; background-color: #0099CC;height: 42px;width: 75px;padding: 0;" type="button" onclick="getNote()" value="提交">
				                </div>
				            </div>
			                <script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>
			                <script>
									function getNote(){
										var note = $("#note").val();
										if(note==null || note==""){
											alert("请输入留言内容!");
											return;
										}
										if(note.length<5){
											alert("你的留言必须大于5个字!");
											return;
										}
										window.location.href='<%=request.getContextPath()%>/user/sendNote?u_card=${user.u_card}&note='+note;
										alert("留言成功,恭喜你获得1积分!");
										
									}
							</script> 
                            <!-- 遍历充值记录 -->
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                <table cellspacing="0" class="shop_table cart">
                                	<tr class="cart_item">
                                        <td class="product-thumbnail">充值金额</td>
                                        <td class="product-thumbnail">充值日期</td>
                                    </tr>
                                    <c:forEach var="c" items="${userRecodes}">
                                    	<tr class="cart_item">
	                                    	<td style="color:red;font-weight: 900;" class="product-thumbnail">￥${c.r_money}</td>
	                                        <td class="product-thumbnail">${c.r_date}</td>
                                   	    </tr>
                                    </c:forEach>
                                </table>
                            </div>
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