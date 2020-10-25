<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP-sida test</title>
</head>
<body>
	<h1>Detta är output</h1>
	<h4><%= request.getAttribute("name") %></h4>
</body>
</html>