<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Environmental Dashboard</title>
<style>
    
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
    .dashboard-container {
        display: flex;
        background-color: white;
        margin: 20px;
        border-radius: 5px;
        overflow: hidden;
    }
   
    
    .data-table {
        margin-bottom: 20px;
        width: 100%;
        border-collapse: collapse;
    }
    .data-table, .data-table th, .data-table td {
        border: 1px solid #ddd;
    }
    .data-table th, .data-table td {
        padding: 10px;
        text-align: left;
    }
    .data-table th {
        background-color: #3498db;
        color: white;
    }
    .footer {
        background-color: #2c3e50;
        color: white;
        text-align: center;
        padding: 10px;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
    .content {
        display: flex;
        flex-direction: row; /* Place content side by side */
        justify-content: center; /* Center content if there's extra space */
        align-items: flex-end; /* Align to the top */
        flex-wrap: wrap; /* Allow wrapping on smaller screens */
    }
    .map-container {
        flex: 1; /* Take up as much space as needed */
        padding: 10px;
    }
    .map-container img {
        max-width: 100%; /* To ensure the map scales down with the container */
        height: auto;
        border: 1px solid #ddd; /* Optional: Adds a border around the map image */
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
        background-color: white;
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
</style>
</head>
<body>

<div class="dashboard-container">
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
        <div class="map-container">
            <!-- Including the map image -->
           
        </div>
        <h2>Data That Collected</h2>
        <table class="data-table">
            <tr>
                <th>Location:</th>
                <td>UTM</td>
                <th>Coordinate:</th>
                <td>1.55981805557918, 103.6377097556344</td>
            </tr>
            <tr>
                <th>Water (L)</th>
                <td>200.00</td>
                <th>Energy (KWH)</th>
                <td>10000.00</td>
            </tr>
            <tr>
                <th>Recycle (KG)</th>
                <td>150.00</td>
                <th>Food Waste (KG)</th>
                <td>100.50</td>
            </tr>
            <tr>
                <th>Cooking Oil (L/KG)</th>
                <td>500.65</td>
                <th>Fabric (KG)</th>
                <td>20.00</td>
            </tr>
            <tr>
                <th>Participation (People)</th>
                <td>500</td>
            </tr>
        </table>

        <h2>Carbon Emission</h2>
        <table class="data-table">
            <tr>
                <th>Total Carbon Emission</th>
                <td>50,000 KGCO2</td>
            </tr>
        </table>

        <h2>GHG Emissions</h2>
        <table class="data-table">
            <tr>
                <th>Year 2023</th>
                <td></td>
            </tr>
            <tr>
                <th>Stationery:</th>
                <td>2,385,186</td>
            </tr>
            <tr>
                <th>Transportation:</th>
                <td>1,296,241</td>
            </tr>
            <tr>
                <th>Energy:</th>
                <td>434,394</td>
            </tr>
        </table>

        <h2>Details</h2>
        <table class="data-table">
            <tr>
                <th>Potential Emission Reduction</th>
                <td>3,000,000 tCO2eq</td>
            </tr>
            <tr>
                <th>Potential Reduction on Absolute GHG Emission</th>
                <td>50% by 2031</td>
            </tr>
        </table>
    </div>
</div>

<div class="footer">
    Contact Us: +607-5555000 | Hotline: 1300-80-5000
</div>

</body>
</html>
