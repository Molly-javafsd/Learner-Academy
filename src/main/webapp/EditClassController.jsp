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
ClassDAO dao=new ClassDAO();
Classes c=new Classes();
c.setClass_Name(request.getParameter("cname"));
c.setClass_ID(Integer.parseInt(request.getParameter("cid")));

String s=dao.update(c);
if(s!=null){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}

%>
</body>
</html>