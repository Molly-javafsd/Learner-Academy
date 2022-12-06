<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.example.pojo.*" %>
      <%@ page import="com.example.dao.*" %>
         <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AddSubject.jsp">
<input type="submit" value="Add New Subject">
</form>

<h1>List Of Subjects</h1>
<table border='1'>
<tr><th>Subject_ID</th><th>Subject_Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%
SubjectDAO dao=new SubjectDAO();
List<Subject> list=dao.display();
for(Subject s:list){%>
	<tr><td><%=s.getSub_ID() %></td><td><%=s.getSubject_Name()%></td><td><a href="editsubject.jsp?subid=<%=s.getSub_ID() %>">Edit subject name</a></td><td><a href="deletesubject.jsp?subid=<%=s.getSub_ID() %>">Delete subject</a></td><td>

<%}%>

</table><br><br>
</body>
</html>