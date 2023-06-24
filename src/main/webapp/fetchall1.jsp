<%@page import="dto.MarksDto"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<MarksDto> l2= (List<MarksDto>)request.getAttribute("student list"); %>


<table border="">
<tr>
			<th>Student Name</th>
			<th>Rigister Number</th>
			<th>Father Name</th>
			<th>School Name</th>
			<th>Phone Number</th>
			<th>Date Of Birth</th>
			<th>Gender</th>
			<th>Kannada</th>
			<th>English</th>
			<th>Hindi</th>
			<th>Mathematics</th>
			<th>Social Scince</th>
			<th>Scince</th>
			<th>Delete</th>
			<th>Update</th>
			


		</tr>
        <%
		for (MarksDto a : l2) {
		%>
         <tr>

			<td><%=a.getStudent_name()%></td>
			<td><%=a.getRegister_number()%></td>
			<td><%=a.getFather_name()%></td>
			<td><%=a.getSchool_name()%></td>
			<td><%=a.getPhone_number()%></td>
			<td><%=a.getDate_of_birth()%></td>
			<td><%=a.getGener()%></td>
			<td><%=a.getKannada()%></td>
			<td><%=a.getEnglish()%></td>
			<td><%=a.getHindi()%></td>
			<td><%=a.getMathematics()%></td>
			<td><%=a.getSocialscience()%></td>
			<td><%=a.getScience()%></td>
			
			<td><a href="delete?id=<%=a.getRegister_number()%>">DELETE</a></td>
			<td><a href="update.jsp?
			
			sid=<%=a.getRegister_number()%>
			&sname=<%=a.getStudent_name()%>
			&fname=<%=a.getFather_name()%>
			&slnam=<%=a.getSchool_name()%>
			&num=<%=a.getPhone_number()%>
			&date=<%=a.getDate_of_birth()%>
			&gender=<%=a.getGener()%>
			&kannada=<%=a.getKannada()%>
			&english=<%=a.getEnglish()%>
			&hindi=<%=a.getHindi()%>
			&mathematics=<%=a.getMathematics()%>
			&social=<%=a.getSocialscience()%>
			&science=<%=a.getScience()%>">UPDATE</a></td>


		</tr>
        <% }%>

</table>
</body>
</html>