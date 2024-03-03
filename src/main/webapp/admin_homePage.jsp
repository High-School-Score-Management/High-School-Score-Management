<%-- 
    Document   : admin_homePage
    Created on : Feb 28, 2024, 8:22:29 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </head>
    <style>
        .nav-link {
            color: white;
        }

        .nav-link:hover {
            text-decoration: underline;
            color: white;
        }
    </style>
    <body style="background-color: #003a5f">
        <header>
            <!-- Menu -->
            <nav class="navbar navbar-expand-lg navbar-light" >
                <div class="container-fluid justify-content-between">
                    <img
                        class="navbar-brand"
                        id="logo"
                        src="imgs/logo_small.jpg"
                        alt="Hame Logo"
                        style="width: 60px; border-radius: 15%"
                        />
                    <button
                        type="button"
                        class="navbar-toggler"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarCollapse"
                        >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div
                        class="collapse navbar-collapse justify-content-between"
                        id="navbarCollapse"
                        >                        
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link dropdown-toggle"
                                    data-bs-toggle="dropdown"
                                    href=""
                                    >Hello, Admin</a
                                >
                                <ul class="dropdown-menu">
                                    <li>
                                        <a class="dropdown-item" href="/HandmadeStore/AccountAdmin"
                                           >My account</a
                                        >
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="/HandmadeStore/SignOutAdmin"
                                           >Change Password</a
                                        >
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="/HandmadeStore/SignOutAdmin"
                                           >Sign out</a
                                        >
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <main class="container">
            <div class="row mt-5">
                <div class="col-sm-12 col-md-6 col-lg-3 text-center">
                    <img src="imgs/1492531743-icon-sets-school-outline-hand-drawn-iconfinder02_83203.png" width="200px" >
                    <p class="text-light">List of teachers</p>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-3 text-center">
                    <img src="imgs/icons8-reading-100.png" width="200px" >
                    <p class="text-light">List of students</p>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-3 text-center">
                    <img src="imgs/icons8-door-100.png" width="200px" >
                    <p class="text-light">List of classes</p>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-3 text-center">
                    <img src="imgs/icons8-unit-100.png" width="200px" >
                    <p class="text-light">List of departments</p>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-12 text-center">
                    <img src="imgs/icons8-book-100.png" width="200px" >
                    <p class="text-light">List of subjects</p>
                </div>
            </div>
        </main>
    </body>
</html>
