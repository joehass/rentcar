/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.45
 * Generated at: 2018-01-08 11:52:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-4.3.0.RELEASE.jar", Long.valueOf(1477391662000L));
    _jspx_dependants.put("jar:file:/D:/renthome/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/carRental_fore/WEB-INF/lib/spring-webmvc-4.3.0.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1465519008000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<title>用户注册页面</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath() );
      out.write("/fore/css/re.css\" />\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath() );
      out.write("/fore/js/upload.js\"></script>\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath() );
      out.write("/fore/js/jquery-1.8.2.min.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath() );
      out.write("/fore/css/default.css\" />\r\n");
      out.write("\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath() );
      out.write("/fore/css/component.css\" />\r\n");
      out.write("\t\t<script src=\"");
      out.print(request.getContextPath() );
      out.write("/fore/js/modernizr.custom.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("function speck(text){\r\n");
      out.write("\tzhText = encodeURI(text);\r\n");
      out.write("\t/* document.write(\"<audio id='speckid' autoplay=\\\"autoplay\\\">\");\r\n");
      out.write("\tdocument.write(\"<source src=\\\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text=\"+ zhText +\"\\\" type=\\\"audio/mpeg\\\">\");\r\n");
      out.write("\t/* document.write(\"<embed height=\\\"0\\\" width=\\\"0\\\" src=\\\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text=\"+ zhText +\"\\\">\"); */\r\n");
      out.write("\t/* document.write(\"</audio>\");  */\r\n");
      out.write("\t$(\"#speckid\").attr(\"src\",\"http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=2&text=\"+ zhText);\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function checkAll(){\r\n");
      out.write("\treturn checkName()&&checkDate()&&checkCard()&&checkJcard()&&checkaddress()&&checkpassword()&&checkuCpassword()&&checkphone()&&checkYphone();\r\n");
      out.write("} \r\n");
      out.write("/* 获取验证码 */\r\n");
      out.write("function getYcode(){\r\n");
      out.write("\t/* 发送验证码 */\r\n");
      out.write("\tif(checkphone()){\r\n");
      out.write("\t\tvar u_phone = $(\"input[name='u_phone']\").val();\r\n");
      out.write("\t\t$.post(\"/carRental_back/getSmscodeServlet?u_phone=\"+u_phone,{'method':'getYcode'},function(data){\r\n");
      out.write("\t\t\t$(\"#Mcode\").val(data);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t} \r\n");
      out.write("\t/* $(\"#Mcode\").val(\"123456\"); */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function checkName(){\r\n");
      out.write("\tvar name = $(\"input[name='u_name']\").val(); \r\n");
      out.write("\tif(name == \"\"){\r\n");
      out.write("\t\tspeck('用户名不能为空！');\r\n");
      out.write("\t\t$(\"#Tname\").html('用户名不能为空！');\r\n");
      out.write("\t\t$(\"#Tname\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#Tname\").html(\"<font color='green' >√  可用</font>\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function checkDate(){\r\n");
      out.write("\tvar currentdate='");
      out.print(new Date().toLocaleString().toString().substring(0, 9)  );
      out.write("';\r\n");
      out.write("\tvar u_date = $(\"input[name='u_date']\").val();\r\n");
      out.write("\tif(u_date == \"\"){\r\n");
      out.write("\t\tspeck('出生日期不能为空！');\r\n");
      out.write("\t\t$(\"#Tdate\").html('出生日期不能为空！');\r\n");
      out.write("\t\t$(\"#Tdate\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(getRDate(u_date,currentdate)<18){\r\n");
      out.write("\t\tspeck('你的年龄小于18岁，不能租车！');\r\n");
      out.write("\t\t$(\"#Tdate\").html('你的年龄小于18岁，不能租车！');\r\n");
      out.write("\t\t$(\"#Tdate\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(getRDate(u_date,currentdate)>60){\r\n");
      out.write("\t\tspeck('你的年龄大于60岁，不能租车！');\r\n");
      out.write("\t\t$(\"#Tdate\").html('你的年龄大于60岁，不能租车！');\r\n");
      out.write("\t\t$(\"#Tdate\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t$(\"#Tdate\").html(\"<font color='green'>√ 合适</font>\");\r\n");
      out.write("\treturn true;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("/* 日期相减的年份 */\r\n");
      out.write("function getRDate(sDate,eDate){\r\n");
      out.write("\tvar sArr = sDate.split(\"-\");\r\n");
      out.write("\tvar eArr = eDate.split(\"-\");\r\n");
      out.write("\tvar sRDate = sArr[0];\r\n");
      out.write("\tvar eRDate = eArr[0];\r\n");
      out.write("\tvar result = eRDate-sRDate;\r\n");
      out.write("\treturn result;\r\n");
      out.write("}\r\n");
      out.write("function checkCard(){\r\n");
      out.write("\tvar u_card = $(\"input[name='u_card']\").val();\r\n");
      out.write("\tif(u_card == \"\"){/*10-15-13-18位*/\r\n");
      out.write("\t\tspeck('身份证号码不能为空！');\r\n");
      out.write("\t\t$(\"#Tcard\").html('身份证号码不能为空！');\r\n");
      out.write("\t\t$(\"#Tcard\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t/*从数据库查找是否有此用户，如果身份证号注册，则提示：该身份证已注册！*/\r\n");
      out.write("\t$.post(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/user/verifyUser?u_card=\"+u_card,function(data){\r\n");
      out.write("\t\tif(\"1\"==data){\r\n");
      out.write("\t\t\tspeck('该身份证已注册！请填写你自己的身份证号！');\r\n");
      out.write("\t\t\t$(\"#Tcard\").html('该身份证已注册！');\r\n");
      out.write("\t\t\t$(\"#Tcard\").css({color:\"red\"});\r\n");
      out.write("\t\t} else{\r\n");
      out.write("\t\t\t$(\"#Tcard\").html(\"<font color='green'>√ 可用</font>\");\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\tif(\"该身份证已注册！\"==$(\"#Tcard\").text()){\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#Tcard\").html(\"<font color='green'>√ 可用</font>\");\r\n");
      out.write("\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("function checkJcard(){\r\n");
      out.write("\tvar u_Jcard = $(\"input[name='u_Jcard']\").val();\r\n");
      out.write("\tif(u_Jcard == \"\"){/*12位*/\r\n");
      out.write("\t\tspeck('驾驶证号码不能为空！');\r\n");
      out.write("\t\t$(\"#TJcard\").html('驾驶证号码不能为空！');\r\n");
      out.write("\t\t$(\"#TJcard\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#TJcard\").html(\"<font color='green'>√ 可用</font>\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function checkaddress(){\r\n");
      out.write("\tvar u_address = $(\"input[name='u_address']\").val();\r\n");
      out.write("\tif(u_address == \"\"){\r\n");
      out.write("\t\tspeck('家庭住址不能为空！');\r\n");
      out.write("\t\t$(\"#Taddress\").html('住址不能为空！');\r\n");
      out.write("\t\t$(\"#Taddress\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#Taddress\").html(\"<font color='green'>√ 地址有效</font>\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function checkpassword(){\r\n");
      out.write("\tvar u_password = $(\"input[name='u_pass']\").val();\r\n");
      out.write("\tif(u_password == \"\"){\r\n");
      out.write("\t\tspeck('密码不能为空！');\r\n");
      out.write("\t\t$(\"#Tpassword\").html('密码不能为空！');\r\n");
      out.write("\t\t$(\"#Tpassword\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#Tpassword\").html(\"<font color='green'>√ 密码可用</font>\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function checkuCpassword(){\r\n");
      out.write("\tvar u_Cpassword = $(\"input[name='u_Cpassword']\").val();\r\n");
      out.write("\tvar u_password = $(\"input[name='u_pass']\").val();\r\n");
      out.write("\tif(u_Cpassword == \"\"){\r\n");
      out.write("\t\tspeck('请再次输入密码！');\r\n");
      out.write("\t\t$(\"#TCpassword\").html('请再次输入密码！');\r\n");
      out.write("\t\t$(\"#TCpassword\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\tif(u_Cpassword!=u_password){\r\n");
      out.write("\t\t\tspeck('你两次输入的密码不一致，请仔细核对！');\r\n");
      out.write("\t\t\t$(\"#TCpassword\").html('两次密码不一致！');\r\n");
      out.write("\t\t\t$(\"#TCpassword\").css({color:\"red\"});\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}else{\r\n");
      out.write("\t\t\t$(\"#TCpassword\").html(\"<font color='green'>√ 两次密码一致！</font>\");\r\n");
      out.write("\t\t\treturn true;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function checkphone(){\r\n");
      out.write("\tvar u_phone = $(\"input[name='u_phone']\").val();\r\n");
      out.write("\tif(u_phone == \"\"){\r\n");
      out.write("\t\tspeck('手机号码不能为空！');\r\n");
      out.write("\t\t$(\"#Tphone\").html('手机号码不能为空！');\r\n");
      out.write("\t\t$(\"#Tphone\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#Tphone\").html(\"<font color='green'>√</font>\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function checkYphone(){\r\n");
      out.write("\tvar u_Yphone = $(\"input[name='u_Yphone']\").val();\r\n");
      out.write("\tif(u_Yphone == \"\"){\r\n");
      out.write("\t\tspeck('验证码不能为空！');\r\n");
      out.write("\t\t$(\"#TYphone\").html('验证码不能为空！');\r\n");
      out.write("\t\t$(\"#TYphone\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar checkCode =$(\"#Mcode\").val();\r\n");
      out.write("\tif(checkCode!=u_Yphone){\r\n");
      out.write("\t\tspeck('对不起   你输入的验证码错误！');\r\n");
      out.write("\t\t$(\"#TYphone\").html('验证码错误！');\r\n");
      out.write("\t\t$(\"#TYphone\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t$(\"#TYphone\").html(\"<font color='green'>√ 验证码正确！</font>\");\r\n");
      out.write("\treturn true;\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("function checkimg(){\r\n");
      out.write("\tvar img = $(\"input[name='u_img']\").val();\r\n");
      out.write("\tif(img == \"\"){\r\n");
      out.write("\t\t$(\"#Timg\").html('请选择图片！');\r\n");
      out.write("\t\t$(\"#Timg\").css({color:\"red\"});\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#Timg\").html(\"<font color='green'>√ 可用</font>\");\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function tj() {\r\n");
      out.write("\tif(checkAll()){\r\n");
      out.write("\t\tspeck('恭喜你！注册成功，经管理员审核后，你才可以租车！');\r\n");
      out.write("\t\tvar img = $(\"input[name='u_img']\").val();\r\n");
      out.write("\t\tif(\"\"==img||null==img){\r\n");
      out.write("\t\t\timg=\"*\"\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\t/* alert(img); */\r\n");
      out.write("\t\tvar user =  $(\"input[name='u_name']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"select[name='u_sex']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"input[name='u_date']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"input[name='u_card']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"input[name='u_jscard']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"input[name='u_address']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"input[name='u_pass']\").val()+ \"!\"\r\n");
      out.write("\t\t+\t$(\"input[name='u_phone']\").val()+ \"!\"\r\n");
      out.write("\t\t+\timg;\r\n");
      out.write("\t\twindow.location.href='");
      out.print(request.getContextPath());
      out.write("/user/addUser?user='+user; \r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t}\r\n");
      out.write("} \r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>   \r\n");
      out.write("<script>\r\n");
      out.write("var addInfo = \"");
      out.print(request.getAttribute("result"));
      out.write("\";\r\n");
      out.write("if(addInfo != null&& addInfo !=\"\"){\r\n");
      out.write("\tif(addInfo==\"0\"){\r\n");
      out.write("\t\talert(\"【注册失败!】\");\r\n");
      out.write("\t}else if(addInfo == \"1\"){\r\n");
      out.write("\t\talert(\"【注册成功!】\");\r\n");
      out.write("\t}\r\n");
      out.write("}else{\r\n");
      out.write("\taddInfo ==\"\";\r\n");
      out.write("}\r\n");
      out.write("</script>   \r\n");
      out.write("   <form ");
      out.write(" method=\"post\"  enctype=\"multipart/form-data\">\r\n");
      out.write("   <ul>\r\n");
      out.write("\t  <li class=\"active\">位置><a href=\"");
      out.print(request.getContextPath());
      out.write("/fore/login.jsp\" style=\"color:red;\">登录</a>>新用户注册</li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"item\">\r\n");
      out.write("\t       \t<div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">用户名:</label>\r\n");
      out.write("\t           <input type=\"text\" name=\"u_name\"/>\r\n");
      out.write("\t           <span id=\"Tname\" style=\"font-weight: 900\">*数字和字母组成！</span>\r\n");
      out.write("\t       </div>\r\n");
      out.write("\t       <div class=\"item\" >\r\n");
      out.write("\t           <label class=\"lab\">性别:</label>\r\n");
      out.write("\t           <select name=\"u_sex\">\r\n");
      out.write("\t           \t\t<option value=\"男\" selected=\"selected\">男</option>\r\n");
      out.write("\t           \t\t<option value=\"女\">女</option>\r\n");
      out.write("\t           </select>\r\n");
      out.write("\t           <span id=\"Tsex\" style=\"font-weight: 900\">*选择性别！</span>\r\n");
      out.write("\t       </div>\r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">出生日期:</label>\r\n");
      out.write("\t           <input type=\"date\" name=\"u_date\"/>\r\n");
      out.write("\t           <span id=\"Tdate\" style=\"font-weight: 900\">*选择出身日期！</span>\r\n");
      out.write("\t       </div> \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">身份证号:</label>\r\n");
      out.write("\t           <input type=\"text\" name=\"u_card\"/>\r\n");
      out.write("\t           <span id=\"Tcard\" style=\"font-weight: 900\">*18位数字！</span>\r\n");
      out.write("\t       </div>\r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">驾驶证号:</label>\r\n");
      out.write("\t           <input type=\"text\" name=\"u_jscard\"/>\r\n");
      out.write("\t           <span id=\"TJcard\" style=\"font-weight: 900\">*8位数字！</span>\r\n");
      out.write("\t       </div>  \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">住址:</label>\r\n");
      out.write("\t           <input type=\"text\" name=\"u_address\"/>\r\n");
      out.write("\t           <span id=\"Taddress\" style=\"font-weight: 900\">*你的家庭住址！</span>\r\n");
      out.write("\t       </div>  \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">密码:</label>\r\n");
      out.write("\t           <input type=\"text\" name=\"u_pass\"/>\r\n");
      out.write("\t           <span id=\"Tpassword\" style=\"font-weight: 900\">*设置密码！</span>\r\n");
      out.write("\t       </div>  \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">重新输入:</label>\r\n");
      out.write("\t           <input type=\"password\" name=\"u_Cpassword\"/>\r\n");
      out.write("\t           <span id=\"TCpassword\" style=\"font-weight: 900\">*再次输入密码！</span>\r\n");
      out.write("\t       </div>  \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">手机号:</label>\r\n");
      out.write("\t           <input type=\"text\" name=\"u_phone\"/>\r\n");
      out.write("\t           <span id=\"Tphone\" style=\"font-weight: 900\">*11位手机号码！</span>\r\n");
      out.write("\t       </div>  \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">验证码:</label>\r\n");
      out.write("\t           <input style=\"width:125px;\" type=\"text\" name=\"u_Yphone\"/>\r\n");
      out.write("\t           <input class=\"buttonZC\"  style=\"margin-left:10px; width:110px;font-size: 1.0em;background-color: #99CC99;color:green;\" type=\"button\" onclick=\"getYcode()\"  value=\"获取验证码\"/>\r\n");
      out.write("\t       \t   <span id=\"TYphone\" style=\"font-weight: 900\">*手机验证码！</span>\r\n");
      out.write("\t       \t   <input type=\"text\" id=\"Mcode\" style=\"width;0px;height: 0px;border-left:0px;border-top:0px;border-right:0px;border-bottom:0px;background-color:transparent;\">  \r\n");
      out.write("\t       </div>  \r\n");
      out.write("\t        <div class=\"item\">\r\n");
      out.write("\t           <label class=\"lab\">用户头像:</label>\r\n");
      out.write("\t           <img style=\"height: 180px;width: 180px;float: left;border-radius:5px;border:1px solid #ccc;\" id=\"img\" alt=\"图片暂时无法加载\" src=\"");
      out.print(request.getContextPath() );
      out.write("/fore/img/ren.jpg\" >\r\n");
      out.write("\t\t\t   <input style=\"opacity:0; float:left; height:180px;width:50px;font-size: 0.8em;\" type=\"file\" name=\"u_img\" onchange=\"PreviewImage1(this,'img')\"/>\r\n");
      out.write("\t      \t   <span id=\"Timg\" style=\"font-weight: 900\">选择头像！</span>\r\n");
      out.write("\t       </div> \r\n");
      out.write("\t       \r\n");
      out.write("\t       <div class=\"item\">\r\n");
      out.write("\t           <input class=\"button\" style=\"background-color:#99CC00; width:125px;color:green;\" type=\"button\" onclick=\"tj()\" value=\"注册\"/>\r\n");
      out.write("\t           <input  class=\"button\" style=\"background-color:#99CC00;margin-left:40px; width:125px;color:blue;\" type=\"reset\" value=\"重置\"/><!-- onclick=\"dl()\" --> \r\n");
      out.write("\t       </div>\r\n");
      out.write("\t <div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t\t<ul id=\"cbp-bislideshow\" class=\"cbp-bislideshow\">\r\n");
      out.write("\t\t\t\t\t<li><img src=\"");
      out.print(request.getContextPath());
      out.write("/fore/images/1.jpg\" alt=\"image01\"/></li>\r\n");
      out.write("\t\t\t\t\t<li><img src=\"");
      out.print(request.getContextPath());
      out.write("/fore/images/2.jpg\" alt=\"image02\"/></li>\r\n");
      out.write("\t\t\t\t\t<li><img src=\"");
      out.print(request.getContextPath());
      out.write("/fore/images/3.jpg\" alt=\"image03\"/></li>\r\n");
      out.write("\t\t\t\t\t<li><img src=\"");
      out.print(request.getContextPath());
      out.write("/fore/images/4.jpg\" alt=\"image04\"/></li>\r\n");
      out.write("\t\t\t\t\t<li><img src=\"");
      out.print(request.getContextPath());
      out.write("/fore/images/5.jpg\" alt=\"image05\"/></li>\r\n");
      out.write("\t\t\t\t\t<li><img src=\"");
      out.print(request.getContextPath());
      out.write("/fore/images/6.jpg\" alt=\"image06\"/></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<div id=\"cbp-bicontrols\" class=\"cbp-bicontrols\">\r\n");
      out.write("\t\t\t\t\t<span class=\"cbp-biprev\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"cbp-bipause\"></span>\r\n");
      out.write("\t\t\t\t\t<span class=\"cbp-binext\"></span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script src=\"");
      out.print(request.getContextPath());
      out.write("/fore/js/jquery.min.js\"></script>\r\n");
      out.write("\t\t<script src=\"");
      out.print(request.getContextPath());
      out.write("/fore/js/jquery.imagesloaded.min.js\"></script>\r\n");
      out.write("\t\t<script src=\"");
      out.print(request.getContextPath());
      out.write("/fore/js/cbpBGSlideshow.min.js\"></script>\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\t$(function() {\r\n");
      out.write("\t\t\t\tcbpBGSlideshow.init();\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function dl(){\r\n");
      out.write("\twindow.location.href=\"");
      out.print(request.getContextPath());
      out.write("/fore/login.jsp\";\r\n");
      out.write("}\r\n");
      out.write("</script>\t       \r\n");
      out.write("\t    </div>  \r\n");
      out.write("   \t\t\t\r\n");
      out.write("   </form>\r\n");
      out.write("   \r\n");
      out.write("   <audio id='speckid' autoplay=\"autoplay\">\r\n");
      out.write("   \t<source id=\"sid\" type=\"audio/mpeg\">\r\n");
      out.write("   </audio>\r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
