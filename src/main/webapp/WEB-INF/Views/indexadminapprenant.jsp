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
        <link rel="stylesheet" href="khati.css">
        


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



<div class="tab1">

      <table>
      
      <thead>
        <tr>
          <th>id_apprennat</th>
          <th >nom</th>
          <th >prenom</th>
          <th >date</th>
                    <th >email</th>
                    <th >niveux</th>
                     <th >sex</th>
                    
          
          
          <th >Supprimer</th>  
          <th>Modifier</th> 
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${list}" var ="appr">
        
        <tr class="active-row">
          <td >${appr.id_apprennant}</td>
          <td  >${appr.nom}</td>
          <td  >${appr.prenom}</td>
           <td  >${appr.date}</td>
           <td>${appr.email}</td> 
          <td>${appr.niveux}</td>
          <td>${appr.sex}</td>
          
          
                    
          
          <td width=1px ><a href="/supprimerappr?id=${appr.id_apprennant}">Supprimer</a></td>
          <td width=1px><a href="/modifierappr?id=${appr.id_apprennant}">Modifier</a></td>
           
          <td width=1px> <a href="/test?id=${appr.id_apprennant}">accepter </a></td>
           
        </tr>
        </c:forEach>
        </tbody>
        </table>
               
 </div>
      
     </div> 
    </div>



                

            
            <!-- // Admin Content -->

        <!-- // Page Wrapper -->



        <!-- JQuery -->
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Custom Script -->
        <script src="../../js/scripts.js"></script>


</body>
</html>