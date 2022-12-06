<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Deleting the student...</h1>
<form action="DeleteStudentController.jsp">
<table border='1'>

<tr><td><input type="hidden" name="stuid" value=<%=request.getParameter("stuid") %>></td></tr>
<tr><td><input type="submit" value="Conform Delete"></td></tr>


</table>



</form>
</body>
</html>