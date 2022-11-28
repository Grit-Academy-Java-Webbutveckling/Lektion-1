<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%! String textColor = "red"; %>
<head>
<meta charset="ISO-8859-1">
<title>Lektion 1</title>
</head>

<body>
	<%-- <jsp:forward page="./JSPForward"></jsp:forward> --%>
	
	<% String name = "Grit";%>
	<%! int day = 1; %>

	<h1 style="color:<%= textColor%>">Hello <%= name %></h1>
	<%--This is a comment --%>
	
	
	<% if(day == 1 || day == 7){ %>
		<jsp:element name="p">
			<jsp:body>Today is weekend</jsp:body>
		</jsp:element>
	<%}%>
	
	<p>
		<%
			switch(day){
			  case 1: out.println("Today is weekend");break;
			}
		%>
	</p>
	
	<jsp:include page="./JSPInclude.jsp"></jsp:include>
	
	<form action="anotherJSPPage.jsp" method="POST">
		<input type="text" name="name"/>
		<input type="submit" value="Skicka"/>
	</form>
	
	<a href="./anotherJSPPage.jsp">Click Me</a>
	
	<jsp:element name="a">
		<jsp:attribute name="href">./anotherJSPPage.jsp</jsp:attribute>
		<jsp:body>Click me</jsp:body>
	</jsp:element>
	
</body>
</html>