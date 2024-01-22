<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Bill Upload Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000000;
            padding: 20px;
        }
        
        #billUploadForm {
            
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 3px 2px 4px 2px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
            margin-top: 20px;
        }
        
        label {
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
            color: #333333;
        }
        
        select, input[type="file"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        button {
            background-color: #5c85d6;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #4d73b1;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
    <script>
       function addBill() {
    // Create a label for the new select element for bill type
    var label = document.createElement("label");
    label.textContent = "Type of Bill: ";
   
    
    // Create a new select element for bill type
    var select = document.createElement("select");
    select.name = 'billType[]';
    var options = ["Electricity", "Water", "Internet", "Gas", "Telephone"];
    for (var i = 0; i < options.length; i++) {
        var option = document.createElement("option");
        option.value = options[i].toLowerCase();
        option.text = options[i];
        select.appendChild(option);
    }
    
    // Create a new input element for file upload
    var input = document.createElement("input");
    input.type = 'file';
    input.name = 'billFile[]';
    
    // Create line breaks for spacing
    var br = document.createElement("br");
    var br2 = document.createElement("br");
    
    // Append the new elements to the billEntries div
    var billEntries = document.getElementById("billEntries");
    billEntries.appendChild(label);
     // Line break after label
    billEntries.appendChild(select);
    billEntries.appendChild(input);
    billEntries.appendChild(br2); // Line break after file input
}
    </script>
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
        padding: 0 10px;
    }
    .account-info {
        text-align: left;
        color: rgb(0, 0, 0);
        margin-top: 10px;
        
        bottom: 20px;
        right: 20px;
        background-color: rgb(255, 255, 255);
        color: rgb(0, 0, 0);
        padding-left: 20px;
        padding-right: 20px;
        border: 3px solid rgb(0, 0, 0);
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
            <!-- Add your logos here -->
            <div class="account-info">
                <table style="border: black;">
                    <td>
                <div>NAME: JOHN DOE</div>
                <div>RESIDENTIAL AREA: SKUDAI</div>
                <div>ID NUMBER: 12345 </div>
            </td>
            </table>
            
            </div>
        </div>

        <form id="billUploadForm">
            <div id="billEntries">
                <br><br>
                <button type="button" onclick="addBill()">Add Bill</button>
                <br><br>
                <label>Type of Bill:</label>
                <select name="billType[]">
                    <option value="electricity">Electricity</option>
                    <option value="water">Water</option>
                    <option value="internet">Internet</option>
                    <option value="gas">Gas</option>
                    <option value="telephone">Telephone</option>
                </select>
        
                <input type="file" name="billFile[]">
                <br>
            </div>
            <br><br>
            <input type="submit" value="Submit Bills">
        </form>
        
<div class="footer">
    <p>Contact Us: General: +601-12345678 | Hotline: 1223-2241-113</p>
</div>

</body>
</html>
