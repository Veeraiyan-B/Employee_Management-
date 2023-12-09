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

        .msg-container {
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100%;
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 10px;
            display: none;
        }
       form {
            width: 50%;
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
     
    


   

   <form id="userForm" action="signin" method="post">
        <label>Enter your name</label>
        <input type="text" name="name">

        <label>Enter your company name</label>
        <input type="text" name="cname">

        <label>Enter your job</label>
        <input type="text" name="job">

        <label>Enter your salary</label>
        <input type="number" name="sal">

        <label>Enter your email</label>
        <input type="email" name="email">

        <label>Enter your password</label>
        <input type="password" name="password">

        <label>Enter your phone</label>
        <input type="tel" name="phone">

        <input type="submit">
    </form>
    
    <% String msg = (String) request.getAttribute("msg");
    if (msg != null) { %>
        <div class="msg-container" id="msgContainer">
            <h1><%=msg %></h1>
        </div>

        <script>
            // Display the alert box with the message from the servlet
            var msg = '<%=msg %>';
            alert(msg);
        </script>
    <% } %>
    

</body>
</html>