<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="EditSubjectController.jsp">
<table border='1'>
<tr><td>Edited Name:</td><td><input type="text" name="subname"></td></tr>
<tr><td><input type="hidden" name="subid" value=<%=request.getParameter("subid") %>></td></tr>
<tr><td><input type="submit" value="Edit Now"></td></tr>
</table>
</form>
</body>
</html>