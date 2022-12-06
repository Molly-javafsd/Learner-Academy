<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Deleting Teacher...</h1>
<form action="DeleteTeacherController.jsp">
<table border='1'>

<tr><td><input type="hidden" name="tid" value=<%=request.getParameter("tid") %>></td></tr>
<tr><td><input type="submit" value="Conform Delete"></td></tr>


</table>
</form>
</body>
</html>