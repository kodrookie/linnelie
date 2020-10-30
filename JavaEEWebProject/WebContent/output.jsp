<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP-sida test</title>
</head>
<body>
	<h1>Detta är output. Kanske Linns sida!</h1>
	<h3>Hej! Jag heter <%
		String fullName = request.getAttribute("name").toString();
		out.println(fullName);
	%><h3>
</body>
</html>