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
TeacherDAO dao=new TeacherDAO();
Teacher t=new Teacher();
t.setT_ID(Integer.parseInt(request.getParameter("tid")));

String s=dao.delete(t);
if(s.equals("deleted")){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}

%>
</body>
</html>