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
<%


%>
<form action="AddStudentController.jsp">
<table border='1'>
<tr><td>Student ID:</td><td><input type="number" name="stuid"></td></tr>
<tr><td>First_Name:</td><td><input type="text" name="stufname"></td></tr>
<tr><td>Last_Name:</td><td><input type="text" name="stulname"></td></tr>
<tr><td>Date Of Birth:</td><td><input type="text" name="studob"></td></tr>
<tr><td>Address:</td><td><input type="text" name="stuadd"></td></tr>
<tr><td>Phone:</td><td><input type="number" name="stuphone"></td></tr>
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
<tr><td><input type="submit" value="Save Now"></td></tr>
</table><br><br>
<h1>List Of Students</h1>
<table border='1'>
<tr><th>Student_ID</th><th>First_Name</th><th>Last_Name</th><th>DOB</th><th>Address</th><th>Phone</th><th>Class_Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%
StudentDAO dao=new StudentDAO();
List<Student> list= dao.display();
for(Student st:list){
%>
<tr><td><%=st.getID() %></td><td><%=st.getF_name()%></td><td><%=st.getL_name()%></td><td><%=st.getDOB()%></td><td><%=st.getAddress()%></td><td><%=st.getPhone()%></td><td><%=st.getClasses().getClass_Name()%></td><td><a href="editstudent.jsp?stuid=<%=st.getID() %>">Edit name</a></td><td><a href="deletestudent.jsp?stuid=<%=st.getID() %>">Delete student</a></td></tr>
<% } %>
</table><br><br>
</form>
</body>
</html>