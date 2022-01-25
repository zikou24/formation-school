<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
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
                    <li><a href="/espaceadmin">gerer les apprennant</a></li>
                    <li><a href="/espaceformateur">gerer les formateur</a></li>
                </ul>
            </div>
            <!-- // Left Sidebar -->
            


            <!-- Admin Content -->
           <!--  <div class="admin-content">
                <div class="button-group">
                    <a href="/modifierappr?id=${appr.id_apprennant}" class="btn btn-big">modifierunapprennat</a>
                    <a href="/espaceadmin" class="btn btn-big">gerer les apprenant</a>
                </div> -->



                <div class="content">

                    <h2 class="page-title">gerer les apprennat</h2>






    <div>
      <table border="1" class="content-table">
      <thead>
        <tr>
          <th>id_formateur</th>
          <th>nom</th>
          <th>prenom</th>
          <th>date</th>
          <th>email</th>
          <th>password</th>
                    <th>sex</th>
                              <th>specilite</th>
                    
          
          
          <th>Supprimer</th>  
          <th>Modifier</th>  
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${list}" var ="formation">
        
        <tr class="active-row">
          <td>${formation.id_formateur}</td>
          <td>${formation.nom}</td>
          <td>${formation.prenom}</td>
                    <td>${formation.date}</td>
          
          <td>${formation.email}</td>
          <td>${formation.sex}</td>
          <td>${formation.specialite}</td>
                    
          
          <td><a href="/supprimerformateur?id=${formation.id_formateur}">Supprimer</a></td>
          <td><a href="/modifierformateur?id=${formation.id_formateur}">Modifier</a></td>
          
                     <td> <a href="/testformateur?id=${formation.id_formateur}">ajouter </a></td>
           
        </tr>
        </c:forEach>
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