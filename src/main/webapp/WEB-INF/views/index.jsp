<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LCS Pantau System Dashboard</title>
    <link rel="stylesheet" href="css.css">
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
            <span><h3><a href="index.jsp">Data Approval</a></h3></span>
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



    <div id="dashboard">
        <aside class="sidebar1">
            <!-- Sidebar content here -->
        </aside>
        <main class="main-content">
            <header>
                <!-- Header content with logo and title -->
            </header>
            <section class="data-table">
                <table>
                    <!-- Table headers -->
                    <tr>
                        <th>Date</th>
                        <th>Reference No.</th>
                        <th>Type</th>
                        <th>File</th>
                        <th>Actions</th>
                    </tr>
                    <!-- Table rows -->
                    <!-- Repeat this for each row -->
                    <tr>
                        <td>22 June 2023</td>
                        <td>MBIP088 / 0020</td>
                        <td>Water<br>
                        Electricty<br>
                        Gas<br>
                        Oil<br>
                        </td>
                        <td>VIEWED</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>26 August 2023</td>
                        <td>MBIP089 / 0021</td>
                        <td>Water<br>
                            Electricty<br>
                            Gas<br>
                            Oil<br>
                        </td>
                        <td>VIEWED</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>28 August 2023</td>
                        <td>MBIP090 / 0022</td>
                        <td>Water<br>
                            Electricty<br>
                            Gas<br>
                            Oil<br>
                        </td>
                        <td>VIEWED</td>
                        <td>...</td>
                    </tr>
                    <tr>
                        <td>30 August 2023</td>
                        <td>MBIP091 / 0023</td>
                        <td>Water<br>
                            Electricty<br>
                            Gas<br>
                            Oil<br>
                        </td>
                        <td>VIEWED</td>
                        <td>...</td>
                    </tr>
                </table>
            </section>
        </main>
        <br><br><br><br>
    </div>
    <br>
    
    <div class="content-wrapper">
    <button id="openAlert">Confirm V</button>
    </div>

    <div class="alert" id="alert">
        <h1>Approve</h1>
        <div class="conf">
            <h2>Approved!!</h2>
            <p>
                You Have Approved Data!!
            </p>
            <button id="closeAlert">Close</button>
        </div>
    </div>

    <script src="js.js"></script>
</body>

</html>