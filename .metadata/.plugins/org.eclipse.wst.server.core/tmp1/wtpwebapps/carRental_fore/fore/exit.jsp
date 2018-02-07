<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>安全退出</title>
</head>
<body>
<%
	session.invalidate();
	response.sendRedirect(request.getContextPath()+"/fore/login.jsp");
%>
</body>
</html>