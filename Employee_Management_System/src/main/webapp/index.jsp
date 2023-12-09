<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        center {
            text-align: center;
        }

        h1 {
            color: #333;
            text-shadow: 2px 2px 2px #ddd;
        }

        h2 {
            margin-top: 20px;
        }

        a {
            text-decoration: none;
            color: #3498db;
            margin: 0 20px;
            padding: 10px 20px;
            border: 1px solid #3498db;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #3498db;
            color: #fff;
        }
    </style>


</head>
<body>
     
     
      <center>
  <h1>Employee Management</h1>
        <h2>
         <a href="Signup.jsp">Add New Employee</a>
         
         <a href="getall">List All Employees</a>
         
        </h2>
 </center>







</body>
</html>