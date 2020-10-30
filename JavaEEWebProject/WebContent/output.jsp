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
<!-- 	JSP Scriplet -->
	<h3>Hej! Jag heter <%
		String fullName = request.getAttribute("name").toString();
		out.println(fullName);
	%><h3>
<!-- 	JSP Expressions -->
	<p>2 x 2 = <%= 2*2 %></p>
	<p>6 > 8 = <%= 6  > 8 %></p>
	
	<%
		for(int i = 0; i < 10; i++)
		{
			out.println("<p>i är lika med: " + i +"!</p>");
		}
	%>
	
<!-- 	JSP Declarations -->
<%!
	int calLength(String string){
		return string.length();
	}
%>
<p>Längden på strängen (Linn!) är <%= calLength("Linn!") %></p>
</body>
</html>