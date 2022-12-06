<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="EditTeacherController.jsp">
<table border='1'>

<tr><td>Edit First_Name:</td><td><input type="text" name="tfname"></td></tr>
<tr><td>Edit Last_Name:</td><td><input type="text" name="tlname"></td></tr>
<tr><td>Edit Date Of Birth:</td><td><input type="text" name="tdob"></td></tr>
<tr><td>Edit Address:</td><td><input type="text" name="tadd"></td></tr>
<tr><td>Edit Phone:</td><td><input type="number" name="tphone"></td></tr>
<tr><td>Edit Designation:</td><td><input type="text" name="tdesig"></td></tr>

<tr><td><input type="hidden" name="tid" value=<%=request.getParameter("tid") %>></td></tr>
<tr><td><input type="submit" value="Edit Now"></td></tr>


</table>
</form>
</body>
</html>