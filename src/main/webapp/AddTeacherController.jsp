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
Teacher t= new Teacher();
TeacherDAO dao=new TeacherDAO();
t.setT_ID(Integer.parseInt(request.getParameter("tid")));
t.setT_FirstName(request.getParameter("tfname"));
t.setT_LastName(request.getParameter("tlname"));
t.setT_DOB(request.getParameter("tdob"));
t.setT_Address(request.getParameter("tadd"));
t.setT_Phone(Long.parseLong(request.getParameter("tphone")));
t.setDesignation(request.getParameter("tdesig"));

int row=dao.insert(t);
if(row>0){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}
%>
</body>
</html>