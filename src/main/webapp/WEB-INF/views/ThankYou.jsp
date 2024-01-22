<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LCS Pantau System</title>
<style>
    
    body, h1, h2, h3, p, div {
        height: 100%;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        height: auto;
         /* Full viewport height */
        width: 100%; /* Full viewport width */
        margin: 0 auto;
        overflow: hidden;
        min-height: 100vh;
        font-family: Arial, sans-serif;
        background: url('image.jpg') no-repeat center center fixed;
        background-size: cover;
        display:flex;
      
       
    }
    .sidebar {
        width: 200px; /* Adjust as necessary */
        background-color: #003366;
        color: white;
        display: block;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        color: white;
        width: 400px; /* Adjust as necessary */
        background-color: #003366;
        color: rgb(0, 0, 0);
        display: flex;
        flex-direction: column;
        height: 100vh; /* Full viewport height */
        padding: 20px;
    }
    .sidebar img {
        margin-bottom: 20px;
    }
    .sidebar img.user-icon {
        width: 10px; /* Adjust size as needed */
        border-radius: 50%; /* Makes the image round */
        margin-bottom: 2px;
        width: 50%;
        padding: 1px;
        border: 1px solid #fff; /* or transparent for no border */
        margin: 10px 0;
        text-align: left;
        background-color: white;
    }
    .menu-item {
        width: 100%;
        padding: 10px;
        display: flex;
        align-items: center;
        border-bottom: 1px solid #fff; /* Change to transparent if you don't want visible borders */
        margin: 5px 0;
        text-align: left;
        transition: background-color 0.3s;
    }
    .menu-item:hover {
        background-color: #57438a46; /* Darker shade for hover effect */
    }
    .menu-item img {
        width: 30px; /* Adjust size as needed */
        margin-right: 10px;
    }
    .menu-item span {
        font-size: 14px;
        
    }
    .sidebar .menu-item {
        width: 100%;
        padding: 10px;
        border: 1px solid #fff; /* or transparent for no border */
        margin: 10px 0;
        text-align: left;
    }
    .main-content {
        flex-grow: 1;
        max-width: 800px; /* Adjust as necessary */
        background-color: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        flex-grow: 1;
        background-color: white;
        padding: 20px;
        overflow-y: auto;
        display: block;
    }
    .header, .footer, .validation-warning {
        background-color: #003366;
        color: white;
        padding: 10px;
    }
    .validation-warning {
        background-color: #003366;
        text-align: center;
        margin: 20px 0;
    }
    .top-bar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 50px  10px;
        text-align: center;
        justify-content: center;
        font-size: larger;
    }
    .account-info {
        text-align: center;
        color: rgb(0, 0, 0);
        margin-top: 10px;
        
        bottom: 20px;
        right: 20px;
        background-color: rgb(255, 255, 255);
        color: rgb(0, 0, 0);
      justify-content: center;
    }
    .account-info div {
        margin-bottom: 5px;
    }
    .menu {
        display:grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 10px;
        padding: 10px;
        grid-template-rows: max-content;
    }
    .menu-item {
        padding: 20px;
        border: 1px solid #ccc;
        text-align: center;
        border-radius: 5px;
        background-color: #f4f4f4;
    }
    .menu-item img {
        width: 80px; /* Adjust size as needed */
    }
    .footer {
        text-align: center;
        font-size: 20px;
        position: sticky;/* Keep the footer at the bottom */
        bottom: 0;
        margin: 30px;
        padding: auto;
    }
</style>
</head>
<body>
    <div class="sidebar">
        <h1 style="color: #fff;">Dashboard</h1>
        <img src="user.png" alt="User Icon" class="user-icon" />
        <div class="menu-item">
            <img src="dashboard.svg" alt="Dashboard Icon" />
            <span><h3><a href ="HomePage.jsp">Dashboard</a></h3></span>
        </div>
        
        <div class="menu-item">
            <img src="scan.png" alt="Scan and Submit Icon" />
            <span><h3><a href="upload.jsp">Scan & Submit</a></h3></span>
        </div>
       
        
        <div class="menu-item">
            <img src="map.png" alt="Carbon Data Icon" />
            <span><h3><a href="map.jsp">Carbon Data</a></h3></span>
        </div>
        </a>
       
        <div class="menu-item">
            <img src="user.png" alt="My Account Icon" />
            <span><h3> <a href="Account.jsp">My Account </a></h3></span>
        </div>
        </a>
    </div>

<div class="main-content">
    <div class="header">
        <h1>LCS PANTAU SYSTEM</h1>
    </div>
    
    <div class="top-bar">
        <src img="scan.png" alt="Scan and Submit">
        <div class="account-info">
           
            
            <h1>THANK YOU</h1>
            <br><br><br>
            <h3>FOR YOUR SUBMISSION</h3>
            <br><br><br><br><br>
            <h3>YOU CAN CHECK YOU SUBMISSION THRU "My Account"</h3>
            <br><br><br><br>
            <h3 style="color:rgb(163, 163, 163)"><a href="Homepage.html" >DISMISS</a></h3>

        
        
        </div>
    </div>
    
    
    
    
    <div class="footer">
        <p>Contact Us: General: +601-12345678 | Hotline: 1223-2241-113</p>
    </div>
</div>

</body>
</html>
