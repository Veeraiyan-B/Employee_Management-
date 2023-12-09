<%@page import="edu.jsp.employee_management.dto.Employee"%>
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
            height: 100vh;
        }

        form {
            width: 50%; /* Adjust the width as needed */
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>


</head>
<body>

      <% Employee e=(Employee)request.getAttribute("employee"); %>

     <form action="update"  method="post" >
     
     <lable>Enter your Id</lable>
     <input type="text" name="id"  value="<%=e.getId()%>"  readonly="true">
     <lable>Enter your name</lable>
     <input type="text" name="name" value="<%=e.getName()%>">
      <lable>Enter your companyname</lable>
     <input type="text" name="cname" value="<%=e.getCname()%>">
      <lable>Enter your job</lable>
     <input type="text" name="job"  value="<%=e.getJob()%>">
      <lable>Enter your sal</lable>
     <input type="number" name="sal"    value="<%=e.getSal()%>">
      <lable>Enter your email</lable>
     <input type="email" name="email"  value="<%=e.getEmail()%>">
      <lable>Enter your password</lable>
     <input type="password" name="password"   value="<%=e.getPassword()%>">
      <lable>Enter your phone</lable>
     <input type="tel" name="phone"  value="<%=e.getPhone()%>">
     <input type="submit">
     
     
     </form>

</body>
</html>