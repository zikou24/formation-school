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
                          <%=session.getAttribute("loginadmin") %>  
                        <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
                    </a>
                    <ul>
                        <li><a href="/Espaceathentif" class="logout">Logout</a></li>
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


            <!-- Admin Content -->
            <div class="admin-content">
                <div class="button-group">
                    <a href="/addapprennat" class="btn btn-big">modifierunapprennat</a>
                    <a href="/espaceadmin" class="btn btn-big">gerer les apprenant</a>
                </div>


                <div class="content">

                    <h2 class="page-title">gerer les apprennat</h2>

                    <table>
                        <thead>
                            <th>name</th>
                            <th>username</th>
                            <th>emailadress</th>
                            <th >sexe</th>
                             <th>phone number</th>
                            <th>motdepasse</th>
                            <th>adresse</th>
                            <th >age</th>
                             <th>diplome</th>
                            <th colspan="2">Action</th>
                             
                            
                            
                        </thead>
                        <tbody>
                            <tr>
                                <td>bouregbi</td>
                                <td>zaki</td>
                                <td>zikoubouregbi@gmail.co m</td>
                                
                                <td>man</td>
                                <td>032355135135</td>
                                <td>zikou1999</td>
                                  <td>guelma</td>
                                   <td>21</td>
                                <td>bac+2</td>
                                 
                                  
                                  
                               
                                <td><a href="#" class="edit">supprimer</a></td>
                                <td><a href="#" class="delete">delete</a></td>
                            </tr>
                            
                        </tbody>
                    </table>

                </div>

            </div>
            <!-- // Admin Content -->

        </div>
        <!-- // Page Wrapper -->



        <!-- JQuery -->
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Custom Script -->
        <script src="../../js/scripts.js"></script>


</body>
</html>