<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Student Detail</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="container-fluid">
	<div class="card" style="width: 600px; margin: auto; margin-top: 50px">
		<h2 class="bg-warning text-light card-header" align="center">Please
			enter Student Details</h2>
		<form class="form" action="updatedb" >
			<table class="table table-hover table-striped">
				<tr>
					<td>
						<h3>Personal Details</h3>
					</td>
					<td></td>

				</tr>
				<tr>
					<td>Register Number</td>
					<td><input type="number" name="sid" value="<%=request.getParameter("sid")%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>Student Name</td>
					<td><input type="text" name="sname" value="<%=request.getParameter("sname")%>"></td>
				</tr>
				
				<tr>
					<td>Father Name</td>
					<td><input type="text" name="fname" value="<%=request.getParameter("fname")%>"></td>
				</tr>
				<tr>
					<td>School Name</td>
					<td><input type="text" name="slname" value="<%=request.getParameter("slnam")%>"></td>
				</tr>
				<tr>
					<td>phone number</td>
					<td><input type="number" name="num" value="<%=request.getParameter("num")%>"></td>
				</tr>
				<tr>
					<td>Date Of Birth</td>
					<td><input type="date" name="date" value="<%=request.getParameter("date")%>"></td>
					
				</tr>
				<tr>
					<td>Gender</td>
					<td>
					 <%if (request.getParameter("gender").equals("male")){ %>
        Male:<input type="radio" name="gender" value="male" checked="checked">
		Female:<input type="radio" name="gender" value="female"><br>
		          <%} else { %>
		Male:<input type="radio" name="gender" value="male" >
		Female:<input type="radio" name="gender" value="female" checked="checked"><br>       
		          
		          
		          <%} %>
					</td>
				</tr>
				<tr>
					<td>
						<h3>Obtained Marks</h3>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>Kannada</td>
					<td><input type="number" name="kannada" value="<%=request.getParameter("kannada")%>"></td>
				</tr>
				<tr>
					<td>English</td>
					<td><input type="number" name="english" value="<%=request.getParameter("english")%>"></td>
				</tr>
				<tr>
					<td>Hindi</td>
					<td><input type="number" name="hindi" value="<%=request.getParameter("hindi")%>"></td>
				</tr>
				<tr>
					<td>Mathematics</td>
					<td><input type="number" name="mathematics" value="<%=request.getParameter("mathematics")%>"></td>
				</tr>
				<tr>
					<td>Social Science</td>
					<td><input type="number" name="social" value="<%=request.getParameter("social")%>"></td>
				</tr>
				<tr>
					<td>Science</td>
					<td><input type="number" name="science" value="<%=request.getParameter("science")%>"></td>
				</tr>
				<tr>
					<td><button type="submit" class="btn btn-outline-success">Submit</button></td>
					<td><button type="reset" class="btn btn-outline-danger">Reset</button></td>

					
				</tr>
			</table>
		</form>
	</div>
</body>
</html>