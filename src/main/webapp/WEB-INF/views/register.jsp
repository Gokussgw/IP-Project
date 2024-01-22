<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<style>
    body, html {
        height: 100%;
        margin: 0;
        font-family: Arial, sans-serif;
        background: url('image.jpg') no-repeat center center fixed;
        background-size: cover;
      
        display: flex;
        align-items: center;
        justify-content: center;
        
  
    }
    body::before {
        content: '';
        display: block;
        position: fixed;
        left: 0;
        top: 0;
        height: 100%;
        width: 100%;
        background: url('image.jpg') no-repeat center center fixed;
        background-size: cover;
        filter: blur(8px);
        -webkit-filter: blur(8px);
        z-index: -1;
    }
    .registration-container {
        background: rgba(255, 255, 255, 0.8); /* semi-transparent white background */
        backdrop-filter: blur(400px); /* apply blur effect to the background */
        padding: 100px;
        border-radius: 16px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        width: 100%;
        max-width: 50000px;
        position: relative;
        z-index: 1;
    }
    .header {
        text-align: center;
        margin-bottom: 50px;
    }
    .header h1 {
        color: #333;
    }
    .logos {
        max-width: 100px;
        margin-bottom: 10px;
        align-items: self-start;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
    }
    .form-group input {
        width: 100%;
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .register-btn {
        width: 100%;
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #5cb85c;
        color: white;
        cursor: pointer;
        font-size: 16px;
    }
    .register-btn:hover {
        background-color: #4cae4c;
    }
</style>
</head>
<body>

<div class="registration-container">
    <div class="header">
        <!-- Include your logo image file path in the src attribute -->
        <img src="logo.gif" alt="Logos" class="logos">
        <h1>LCS PANTAU SYSTEM</h1>
    </div>
    
    <form id="registrationForm">
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" required>
        </div>
        <div class="form-group">
            <label for="confirm-email">Confirm Email Address</label>
            <input style="align-content: end;" type="email" id="confirm-email" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" required>
        </div>
        <div class="form-group">
            <label for="confirm-password">Confirm Password</label>
            <input type="password" id="confirm-password" required>
        </div>
        <div class="form-group">
            <label for="contact">Contact Number</label>
            <input type="tel" id="contact">
        </div>
        <div class="form-group">
            <label for="residential-area">Residential Area</label>
            <input type="text" id="residential-area">
        </div>
        <button type="submit" class="register-btn">REGISTER</button>
    </form>
</div>

<script>
document.getElementById('registrationForm').onsubmit = function(event) {
    event.preventDefault();

    var email = document.getElementById('email').value;
    var confirmEmail = document.getElementById('confirm-email').value;
    var password = document.getElementById('password').value;
    var confirmPassword = document.getElementById('confirm-password').value;

    if(email !== confirmEmail) {
        alert("Email addresses do not match.");
        return false;
    }
    
    if(password !== confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }

    alert("Registration successful!");
    
    window.location.href = 'login.jsp';
    return true;
};
</script>

</body>
</html>
