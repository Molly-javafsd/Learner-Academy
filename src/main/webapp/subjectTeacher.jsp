<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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

<%int sc=Integer.parseInt(request.getParameter("cid"));

ClassDAO vf=new ClassDAO();
Classes cc=vf.getClasse(sc);
String name=cc.getClass_Name();

%>
<h1>Assign Teacher And Subject for <b><%=name %></b></h1>
<form action="AssignController" method="post">

<input type="hidden" name="cid" value="<%=sc %>">

Select Teacher :<br>
<%
TeacherDAO tdao=new TeacherDAO();
List<Teacher> arr=tdao.display();%>
<select name="teacher">
<%
for(Teacher c:arr){%>
<option value="<%=c.getT_ID()+","+c.getT_FirstName() %>"><%=c.getT_FirstName() %></option>
<%} %>
</select><br><br>

Select Subject :<br>

<%SubjectDAO dao=new SubjectDAO();
List<Subject> arrsub=dao.display();%>

<select name="subject">
<%
for(Subject s:arrsub){%>

<option value="<%=s.getSub_ID()+","+s.getSubject_Name() %>"><%=s.getSubject_Name() %>
</option>
<%} %>
</select><br><br>

<input type="submit" value="Assign Now"><br><br>
</form><br>
<% 
AssignDao Dao=new AssignDao();
List<ReportSubjectNTeacher> arr1=Dao.getAllData(sc);
%>

<table border='1'>
<tr><th>ID</th><th>Class Name</th><th>Subject Name</th><th>Teacher Name</th></tr>
<%
for(ReportSubjectNTeacher cc1:arr1){
%>

<tr><td><%=cc1.getId() %></td><td><%=cc1.getClassName() %></td><td><%=cc1.getSuBName() %></td><td><%=cc1.gettName() %></td></tr>
<%} %>
</table>
</body>
</html>