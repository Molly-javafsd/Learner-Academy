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
<a href="./Logout">LogOut</a><br><br>
<h1>Add Subjects and Teachers</h1><br><br>
<form action="ListSubject.jsp">
<input type="submit" value="Show/Add Subject">
</form><br>
<form action="ListTeacher.jsp">
<input type="submit" value="Show/Add Teacher">
</form><br>

<form action="AddStudent.jsp">
<input type="submit" value="Show/Add Students">
</form><br><br>

<h1>List Of Classes</h1>
<table border='1'>

<tr><th>Class_ID</th><th>Class_Name<th>Edit Action</th><th>Delete Action</th></tr>
<%
ClassDAO dao=new ClassDAO();
List<Classes> list=dao.display();
for(Classes c:list){%>
	<tr><td><%=c.getClass_ID() %></td><td><%=c.getClass_Name() %></td><td><a href="editclass.jsp?cid=<%=c.getClass_ID() %>">Edit class name</a></td><td><a href="deleteclass.jsp?cid=<%=c.getClass_ID() %>">Delete class</a></td><td><a href="subjectTeacher.jsp?cid=<%=c.getClass_ID() %>">SubjectAndTeachers</a></td><td><a href="classrepo.jsp?cid=<%=c.getClass_ID() %>">Class Report</a></td></tr>
<%}%>
</table><br><br>

<form action="AddClass.jsp">
<input type="submit" value="Add Class">
</form>


</body>
</html>