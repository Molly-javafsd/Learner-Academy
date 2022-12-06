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
<%int cid=Integer.parseInt(request.getParameter("cid"));


ClassDAO vf=new ClassDAO();
Classes cc=vf.getClasse(cid);
String name=cc.getClass_Name();

%>

<h1>Class Report of <b><%=name %></b></h1>
<% 
AssignDao Dao=new AssignDao();
List<ReportSubjectNTeacher> arr1=Dao.getAllData(cid);
%>

<table border='1'>
<tr><th>ID</th><th>Class Name</th><th>Subject Name</th><th>Teacher Name</th></tr>
<%
for(ReportSubjectNTeacher cc1:arr1){
%>

<tr><td><%=cc1.getId() %></td><td><%=cc1.getClassName() %></td><td><%=cc1.getSuBName() %></td><td><%=cc1.gettName() %></td></tr>
<%} %>
</table>
<h1>Student List</h1>
<table border="1">
<tr><th>Class_ID</th><th>Class_Name</th><th>First_Name</th><th>Last_Name</th><th>DOB</th><th>Address</th><th>Phone</th></tr>
<%
StudentDAO dao1=new StudentDAO();
List<Student> list1=dao1.getAllData(cid);
for(Student s:list1){%>
	<tr><td><%=cid %></td><td><%=s.getClasses().getClass_Name() %></td><td><%=s.getF_name()%></td><td><%=s.getL_name() %></td><td><%=s.getDOB() %></td><td><%=s.getAddress() %></td><td><%=s.getPhone() %></td></tr>
<%}%>
</table><br><br>

</body>
</html>