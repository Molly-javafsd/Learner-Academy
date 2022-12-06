<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="com.example.pojo.*" %>
      <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AddTeacherController.jsp">
<table border='1'>
<tr><td>Teacher ID:</td><td><input type="number" name="tid"></td></tr>
<tr><td>First_Name:</td><td><input type="text" name="tfname"></td></tr>
<tr><td>Last_Name:</td><td><input type="text" name="tlname"></td></tr>
<tr><td>Date Of Birth:</td><td><input type="text" name="tdob"></td></tr>
<tr><td>Address:</td><td><input type="text" name="tadd"></td></tr>
<tr><td>Phone:</td><td><input type="number" name="tphone"></td></tr>
<tr><td>Designation:</td><td><input type="text" name="tdesig"></td></tr>

<tr><td><input type="submit" value="Save Now"></td></tr>


</table>



</form>
</body>
</html>