<%@page import="dto.MarksDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
  <hr class="new1">
  <%  MarksDto a = (MarksDto) request.getAttribute("result");%>
  
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #d79a34, #d79a34);
  background: linear-gradient(to right, #d79a34, #d79a34);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Student Name: <%=a.getStudent_name()%></th>
          <th>Register Number:<%=a.getRegister_number()%> </th>
          <th>Date Of Birth: <%=a.getDate_of_birth()%></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Father Name: <%=a.getFather_name()%></th>
          <th>School Name: <%=a.getSchool_name()%></th>
          <th>Gender:<%=a.getGener()%> </th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>

  <table>
    <thead>
      <tr>
        <td colspan="3">Subject</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      
    </thead>
    <tbody>
      <tr>
        
        <td colspan="3">Kannada </td>
        <td>Theory</td>
        <td>125</td>
        <td> 44 </td>
        <td><%=a.getKannada()%></td>
      </tr>
      <tr>
        
        <td colspan="3">English</td>
        <td>Theory</td>
        <td>100</td>
        <td>35</td>
        <td><%=a.getEnglish()%></td>
      </tr>
      <tr>
        <td colspan="3">Hindi </td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td> <%=a.getHindi()%></td>
      </tr>
      <tr>
        <td colspan="3">Mathematics </td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td><%=a.getMathematics()%></td>
      </tr>
      <tr>
        <td colspan="3">Socialscience</td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td> <%=a.getSocialscience()%> </td>
      </tr>
      <tr>
        <td colspan="3">Science</td>
        <td>Theory</td>
        <td>100</td>
        <td>35</td>
        <td> <%=a.getScience()%> </td>
      </tr>
     
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>625</td>
        <td>219</td>
        <td> <%=a.getTotalmarks()%>  </td>
      </tr>
      
  </table>
  
  
  <table>
            <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;" ><center>print</center></a></th>
  
  </table>
  
   
</body>