<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="java.util.List"%>

<%@ page import="edu.jsp.employee_management.dto.Employee"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 50vh;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
            color: #3498db;
        }

        a:hover {
            color: #2980b9;
        }
    </style>

</head>
<body>
    
     
	<%
	List<Employee> employees = (List<Employee>) request.getAttribute("list");
	%>
	
	 
	
	<table border="1px">
        <tr>
            <th colspan="10"><h2>Employee Information</h2></th>
        </tr>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Company</th>
            <th>Job</th>
            <th>Salary</th>
            <th>Email</th>
            <th>Password</th>
            <th>Phone</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>

        <%
        for (Employee e : employees) {
        %>
        <tr>
            <td><%=e.getId()%></td>
            <td><%=e.getName()%></td>
            <td><%=e.getCname()%></td>
            <td><%=e.getJob()%></td>
            <td><%=e.getSal()%></td>
            <td><%=e.getEmail()%></td>
            <td><%=e.getPassword()%></td>
            <td><%=e.getPhone()%></td>
            <td><a href="delete?id=<%=e.getId()%>">delete</a></td>
            <td><a href="get?id=<%=e.getId()%>">Update</a></td>
        </tr>
        <%
        }
        %>
    </table>
    
    
    


</body>
</html>