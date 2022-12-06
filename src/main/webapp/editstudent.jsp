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
<form action="EditStudentController.jsp">
<table border='1'>

<tr><td>Edit First_Name:</td><td><input type="text" name="stufname"></td></tr>
<tr><td>Edit Last_Name:</td><td><input type="text" name="stulname"></td></tr>
<tr><td>Edit Date Of Birth:</td><td><input type="text" name="studob"></td></tr>
<tr><td>Edit Address:</td><td><input type="text" name="stuadd"></td></tr>
<tr><td>Edit Phone:</td><td><input type="number" name="stuphone"></td></tr>

<tr><td>Student Class:
<%
ClassDAO dao1= new ClassDAO();
List<Classes> li=dao1.display(); %>

<select name="classname">
<%
for(Classes c:li){
	%>
	<option value="<%=c.getClass_ID() +","+c.getClass_Name() %>"><%=c.getClass_Name() %></option>
	<% } %>
</select></td></tr>
<tr><td><input type="hidden" name="stuid" value=<%=request.getParameter("stuid") %>></td></tr>
<tr><td><input type="submit" value="Edit Now"></td></tr>


</table>
</form>
</body>
</html>