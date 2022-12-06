<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.example.pojo.*" %>
      <%@ page import="com.example.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
SubjectDAO dao=new SubjectDAO();
Subject s=new Subject();
s.setSub_ID(Integer.parseInt(request.getParameter("subid")));
s.setSubject_Name(request.getParameter("subname"));
String s1=dao.update(s);
if(s1.equals("updated")){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}

%>
</body>
</html>