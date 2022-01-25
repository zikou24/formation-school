<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <title>admin</title>

<meta charset="ISO-8859-1">

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- Font Awesome -->
        <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
            integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
            crossorigin="anonymous">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Candal|Lora"
            rel="stylesheet">

        <!-- Custom Styling -->
        <link rel="stylesheet" href="styleadmin.css">

        <!-- Admin Styling -->
        <link rel="stylesheet" href="admin.css">


</head>

<body>        
        <header>
            <div class="logo">
                <h1 class="logo-text"><span>Ecole</span>Formation</h1>
            </div>
            <i class="fa fa-bars menu-toggle"></i>
            <ul class="nav">
                <li>
                    <a href="#">
                        <i class="fa fa-user"></i>
                          <%=session.getAttribute("logineadmin") %>  
                        <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
                    </a>
                    <ul>
                        <li><a href="/adminespa" class="logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </header>

        <!-- Admin Page Wrapper -->
        <div class="admin-wrapper">

            <!-- Left Sidebar -->
            <div class="left-sidebar">
                <ul>
                    <li><a href="/espaceetab">gerer les etablissement</a></li>
                    <li><a href="/espaceadmin">gerer les apprennat</a></li>
                    <li><a href="/espaceformateur">gerer les formateur</a></li>
                    
                </ul>
            </div>
            <!-- // Left Sidebar -->
