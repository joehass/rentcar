<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cn.com.clm.utils.*"%>
<html>
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=0.25"/>
    <title>生成订单</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/font-awesome.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/fore/css/responsive.css">
    <script src="<%=request.getContextPath() %>/fore/js/jquery-1.8.2.min.js"></script>  
    <script type="text/javascript" src="<%=request.getContextPath() %>/fore/date/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/fore/date/dateRange.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fore/date/dateRange.css"/>
    <style type="text/css">
    	td,select{
    		font-family: 楷体;
    		font-size: 1.3em;
    		font-weight: 900;
    		color:blue;
    	}
    	#startDate,#endDate{
    		border-radius:5px;
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
    
    <div class="mainmenu-area" style="position: absolute;top: 80px;left:110px;margin: 0;">
        <div class="container">
            <div class="row">
                <div class="navbar-collapse collapse" >
                    <ul class="nav navbar-nav" style="border: 1px solid #ccc;border-radius:15px;">
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/index/${user.u_card}">首页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/user/getUser/${user.u_card}">我的主页</a></li>
                        <li><a style="font-family: 仿宋;color:black;font-size: 2em;" href="<%=request.getContextPath()%>/car/getPageCar?u_card=${user.u_card}">汽车查询</a></li>
                        <li class="active"><a style="font-family: 仿宋;color:red;font-size: 2em;" href="#">生成订单</a></li>
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
            <div class="row">
                
                <div class="col-md-8">
                    <div class="product-content-right">
	                             <div id="order_review" style="position: relative;">
	                                 <table class="shop_table" style="position: relative;width: 550px;">
	                                     <tfoot>
	                                         <tr class="shipping">
	                                             <th>订单号</th>
	                                             <td><span id="o_code"><%=RandomUtils.genRandomNum()%></span></td>
	                                         </tr>
	                                         <tr class="shipping">
	                                             <th>身份证号</th>
	                                             <td>${user.u_card}</td>
	                                         </tr>
	                                         <tr class="shipping">
	                                             <th>驾驶证号</th>
	                                             <td>${user.u_jscard}</td>
	                                         </tr>
	                                         <tr class="shipping">
	                                             <th>车牌号码</th>
	                                             <td>${car.b_code}</td>
	                                         </tr>
	                                         <tr class="shipping">
	                                             <th>日租价</th>
	                                             <td id="price">${car.b_price}</td>
	                                         </tr>
	                                         
	                                         <tr class="shipping">
	                                         	<th>选择日期</th>
	                                         	<td><span class="date_title" id="date1" 
	                                         	style="width: 200px;border: 1px solid #ccc;border-radius:5px;padding: 8px;"></span></td>
	                                         <tr>
											<tr class="shipping">
	                                             <th>总天数</th>
	                                             <td><span id="allDay"></span></td>
			                                 </tr>
			                                 <tr class="shipping">
	                                             <th>押金</th>
	                                             <td><span id="yj" >￥800</span></td>
			                                 </tr>
											<tr class="shipping">
	                                             <th>总计金额</th>
	                                             <td id="allPrice" style="color:red;"></td>
			                                </tr>
											<tr class="shipping">
	                                             <th>提车地点</th>
	                                             <td><input id="tcdd" type="text" style="border:none;" readonly="readonly" placeholder="请从右边地图选择..."></td>
	                                         </tr>
	                                     </tfoot>
	                                 </table>

<script type="text/javascript">
	var dateRange1 = new pickerDateRange('date1', {
		aRecent90Days : 'aRecent90Days', //最近90天
		startDate: '2017-5-25',
		endDate: '2017-5-27',
		needCompare : false,
		defaultText : ' 至 ',
		autoSubmit : false,
		inputTrigger : 'input_trigger1',
		theme : 'ta'
	});

/* 提交订单 */
function scdd(){
	/* jshc(); */

	var tcdd = $("#tcdd").val();
	if(""==tcdd){
		alert("请选择提车地点！");
		return;
	}

	var b = confirm("你确定预约此车？");
	if(b){
		var u_card = '${user.u_card}';
		var b_code = '${car.b_code}';
		
		var startDate1 = new Date(parseInt(("/Date("+bDateTime+")/").substr(6, 13))).toLocaleDateString();
		var endDate1 =  new Date(parseInt(("/Date("+eDateTime+")/").substr(6, 13))).toLocaleDateString(); 
		//alert(startDate1);
		var strstartDate1 = startDate1.split("/");
		var startDate=strstartDate1[0]+"-"+strstartDate1[1]+"-"+strstartDate1[2];
		
		var strendDate1 = endDate1.split("/");
		var endDate=strendDate1[0]+"-"+strendDate1[1]+"-"+strendDate1[2];
		
		var biaoxian;
		if($("#baoxian").is(':checked')){
			biaoxian="已购买";
		}
		if(!$("#baoxian").is(':checked')){
			biaoxian="未购买";
		}
		var o_code = $("#o_code").text();
		var orderList = b_code+"!"+startDate1+"!"+endDate1+"!"+tcdd+"!"+biaoxian+"!"+o_code;

		window.location.href='${pageContext.request.contextPath}/order/makeOrderList?orderList='+orderList+'&u_card='+u_card;
	}else{
	}
	
	
}


function jshc(){
	var price = $("#price").text(); 
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();

	/* 设置总天数 */
	var days = getRDate(startDate,endDate);
	$("#allDay").html(days);  

	/* 设置总金额 */
	 $.post("${pageContext.request.contextPath}/sendVerifyCodeServlet?method=getDate&price="+price+"&days="+days,function(data){
		var allMoney = data+800;
		$("#allPrice").html(parseInt(allMoney));
	});  
} 

/* 日期相减的天数 */
function getRDate(sDate,eDate){
	var sArr = sDate.split("-");
	var eArr = eDate.split("-");
	var sRDate = new Date(sArr[0], sArr[1], sArr[2]);
	var eRDate = new Date(eArr[0], eArr[1], eArr[2]);
	var result = (eRDate-sRDate)/(24*60*60*1000);
	return result;
}

/* 加载县 */
$(function(){
	$.post("${pageContext.request.contextPath}/province/getProvince",function(data){
		$.each(data,function(i, item) {  
            var statem = "<option value='"+item.p_name+"'>"+item.p_name+"</option>";  
            $("#cityName").append(statem);  
        }); 
	});
});
/*查找地方店铺*/
function queryDf() {
	var province = $("#cityName").val();
	if(""==province){
		alert("请先选择省份！");
		return;
	}
	$.post("${pageContext.request.contextPath}/province/getDf?province="+province,function(data){
		$("#cityName2").html("");
	 	$.each(data,function(i, item) {  
            var statem = "<option value='"+item.d_name+"'>"+item.d_pname+"</option>";  
            $("#cityName2").append(statem);  
        });
	});
}

/* 购买保险 */
function gmbx(){
	if($("#baoxian").is(':checked')){
		var allprice = $("#allPrice").text();
		var all =parseInt(allprice) +35.0;
		$("#allPrice").html(all);
	}
	if(!$("#baoxian").is(':checked')){
		var allprice = $("#allPrice").text();
		var all =parseInt(allprice) -35.0;
		$("#allPrice").html(all);
	}
}
</script>
	                                 
							<!-- 地图定位 -->
							<div style="position:absolute;border: 1px solid #ccc;width:530px;height:430px;left:600px;top:0px;margin: 0px;padding: 0px; ">
								<select id="cityName" style="border:1px solid #ccc;width:60:px;height:25px;" onchange="queryDf()">
									<!-- 加载县 -->
									<option value="">--请选择省份--</option>
								</select>
								<select id="cityName2" style="border:1px solid #ccc;width:60:px;height:25px;" onchange="xianshi()">
									<option value="">--请选择店铺--</option>
								</select>
								<input type="button" onclick="searchCity()" style="background-color: #FFFFFF;margin: 0px;padding: 0px;font-size: 1.3em;font-family: 仿宋;border-radius:5px;" value="查找" />
								<div id="ditu" style="width:100%;height:100%;"></div>
							
							</div>
							
                            <div style="position:absolute;left:600px;top:470px; " id="payment">
                            	<div style="font-family: 楷体;font-size: 1.3em;font-weight: 900;" class="form-row place-order">
                                   <input type="checkbox" id="baoxian" name="保险" value="checkbox" onchange="gmbx()" ><a>购买￥35保险</a>
                                </div>
                                <br>
                                <div class="form-row place-order">
                                   	<input type="button" onclick="scdd()" value="提交" id="place_order" style="font-family: 楷体;font-size: 1.8em;font-weight: 900;width:200px;">
                                </div>
                            </div>
                            </div>

                        </div>                       
                    </div>                    
                </div>
            </div>
        </div>
<script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script>
<script type="text/javascript">
    var map = new BMap.Map("ditu");        //在container容器中创建一个地图,参数container为div的id属性;
    var point = new BMap.Point(103.79,36.07);    //创建点坐标
    map.centerAndZoom(point, 12);                //初始化地图，设置中心点坐标和地图级别
    
    map.enableScrollWheelZoom();                //激活滚轮调整大小功能
    map.addControl(new BMap.NavigationControl());    //添加控件：缩放地图的控件，默认在左上角；
    map.addControl(new BMap.MapTypeControl());        //添加控件：地图类型控件，默认在右上方；
    map.addControl(new BMap.ScaleControl());        //添加控件：地图显示比例的控件，默认在左下方；
    map.addControl(new BMap.OverviewMapControl());  //添加控件：地图的缩略图的控件，默认在右下方； TrafficControl   
    
    var search = new BMap.LocalSearch("中国", {
      onSearchComplete: function(result,result2){
        if (search.getStatus() == BMAP_STATUS_SUCCESS){
          var res = result.getPoi(0);
          var point = res.point;
          map.centerAndZoom(point, 11);
        }
      },renderOptions: {  //结果呈现设置，
        map: map,  
        autoViewport: true,  
        selectFirstResult: true 
      } ,onInfoHtmlSet:function(poi,html){//标注气泡内容创建后的回调函数，有了这个，可以简单的改一下返回的html内容了。
        // alert(html.innerHTML)
      }//这一段可以不要，只不过是为学习更深层次应用而加入的。
    });
    search.search($("#cityName2").val());
    
    function searchCity() {
    	 search.search($("#cityName2").val());
	}

    function xianshi() { 
		$("#tcdd").val($("#cityName2").find("option:selected").text());
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
  </body>
</html>