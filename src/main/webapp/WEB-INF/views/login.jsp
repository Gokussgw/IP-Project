<%@ page import="my.utm.ip.spring_jdbc.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
    body, html {
        height: 100%;
        margin: 0;
        font-family: Arial, sans-serif;
    }
    .bg-image {
        /* The image used */
        background-image: url('${pageContext.request.contextPath}/resources/images/image.jpg');
        
        /* Add the blur effect */
        filter: blur(8px);
        -webkit-filter: blur(8px);
        
        /* Full height */
        height: 100%; 
        
        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .login-container {
        background: rgba(255,255,255, 0.8); /* Semi-transparent white */
        padding: 60px; /* More padding for white space */
        border-radius: 20px; /* Rounded edges */
        width: 100%;
        max-width: 600px; /* Maximum width with more white space around */
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 2;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    }
    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    .login-form {
        display: flex;
        flex-direction: column;
    }
    .login-form input {
        padding: 25px; /* Larger padding for inputs */
        margin-bottom: 45px; /* More space between inputs */
        border: 1px solid #ddd;
        border-radius: 20px; /* Rounded edges for inputs */
        font-size: 20px; /* Larger font size for better readability */
    }
    .login-form button {
        padding: 15px; /* Larger padding for button */
        border: none;
        border-radius: 10px; /* Rounded edges for button */
        background-color: #0056b3; /* Different color for better contrast */
        color: white;
        cursor: pointer;
        font-size: 16px; /* Larger font size for button */
    }
    .login-form button:hover {
        background-color: #003d82;
    }
    .login-form .register {
        text-align:right;
        text-size-adjust: 100px;
        margin-top: 50px; /* More space above the register link */
        font-size: 20px;
    }
    .logo {
        margin-bottom: 20px; /* Space below the logo */
    }
    .logo img {
        max-width: 50%; /* Ensure the logo is responsive and fits the container */
        height: auto;
        display: block;
        margin: auto;
        align-items: center;
        border-radius: 10px; /* Optional: if you want rounded edges on the logo */
    }
</style>
</head>
<body>

<div class="bg-image"></div>

<div class="login-container">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/resources/images/logo.gif" alt="Company Logo">
    </div>
    <h2>LCS PANTAU SYSTEM</h2>
    <form class="login-form" id="loginForm" method="POST" action="${pageContext.request.contextPath}/mbip/login">
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
         <button type="submit">LOGIN</a> </button>
        <div class="register">
            <a href="register.jsp">Click me for Register</a><br>
            <a href="index.jsp">Staff Login</a>
        </div>
    </form>
</div>
<!-- <script>
    document.getElementById('loginForm').onsubmit = function(event) {
    event.preventDefault();
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

    // Check if email is valid
    if (!emailRegex.test(email)) {
        alert('Please enter a valid email address.');
        return false;
    }

    // Check if password is not empty
    if (password === '') {
        alert('Please enter your password.');
        return false;
    }

    // Form is valid
  
    return true;
}
</script> -->

</body>
</html>
