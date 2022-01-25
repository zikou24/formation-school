
<%@page import="Metier.formation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" href="styleathentification.css" >
    <link rel="stylesheet" href="listoffre.css">
</head>
<body>


    <header>
      <div class="logo">
        <h1 class="logo-text"><span>Formation</span>Ecoles</h1>
      </div>
      <i class="fa fa-bars menu-toggle"></i>
      <ul class="nav">
        <li><a href="/homepage">Home</a></li>
      
        <li>
          <li><a href="#">back</a>   <i class="fa fa-chevron-down" style="font-size: .8em;"></i></li>
            
         
      </ul>
    </header>




















    <div>
      <table border="1" class="content-table">
      <thead>
        <tr>
          <th>id_formation</th>
                    <th>nom</th>
          
          
          <th>domaine</th>
          <th>niveux_formation</th>
          <th>niveux_etude</th>
          
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${list}" var ="formation1">
        
        <tr class="active-row">
          <td>${formation1.id_formation}</td>
          <td>${formation1.nom}</td>
          
          <td>${formation1.domaine}</td>
          <td>${formation1.niveux_formation}</td>
          <td>${formation1.niveux_etude}</td>
           <td><a href="/supprimerfomation?id=${formation1.id_formation}">Supprimer</a></td>
          <td><a href="/modifierformation?id=${formation1.id_formation}">Modifier</a></td>
          
                     <td> <a href="/ajouterformation?id=${formation1.id_formation}">ajouter </a></td>
          
           <td><a href="/listedemandesfomation?id=${formation1.id_formation}">La liste demande</a></td>
          
          
        </tr>
        </c:forEach>
        </tbody>
        </table>
        </div>
        

</body>
</html>