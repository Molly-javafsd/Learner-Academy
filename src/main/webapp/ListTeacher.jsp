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
<form action="AddTeacher.jsp">
<input type="submit" value="Add New Teacher">
</form>

<h1>List Of Teachers</h1>
<table border='1'>
<tr><th>Teacher_ID</th><th>First_Name</th><th>Last_Name</th><th>DOB</th><th>Address</th><th>Phone</th><th>Designation</th><th>Edit Action</th><th>Delete Action</th></tr>
<%
TeacherDAO dao=new TeacherDAO();
List<Teacher> list=dao.display();
for(Teacher t:list){%>
<tr><td><%=t.getT_ID() %></td><td><%=t.getT_FirstName()%></td><td><%=t.getT_LastName()%></td><td><%=t.getT_DOB()%></td><td><%=t.getT_Address()%></td><td><%=t.getT_Phone()%></td><td><%=t.getDesignation()%></td><td><a href="editteacher.jsp?tid=<%=t.getT_ID() %>">Edit name</a></td><td><a href="deleteteacher.jsp?tid=<%=t.getT_ID() %>">Delete teacher</a></td><td>

<%}%>

</table><br><br>
</body>
</html>