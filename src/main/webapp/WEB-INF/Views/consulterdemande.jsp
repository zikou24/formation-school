<%@page import="Metier.offress"%>

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
























<h1 style="color:red;">id_offre : <%=session.getAttribute("id_offre")%></h1>
    <div>
      <table border="1"  class="content-table">
      <thead>
        <tr>
          <th>id_formateur</th>
          <th>Nom</th>
          <th>Prenom</th>
          <th>Supprimer</th>  
          <th>Modifier</th>  
        </tr>
         </thead>
          <tbody>
        <c:forEach  items="${list}" var ="demande">
        <tr class="active-row">
          <td>${demande.id_formateur}</td>
          <td>${demande.nom}</td>
          <td>${demande.prenom}</td>
          
          <td><a href="/supprimerdemande?id1=${demande.id_formateur}&id2=<%=session.getAttribute("id_offre")%>">Supprimer</a></td>
          <td><a href="/acceptedemande?id1=${demande.id_formateur}&id2=<%=session.getAttribute("id_offre")%>">accepter</a></td>
        </tr>
        </c:forEach>
         <tbody>
      </table>
    </div>


</body>
</html>