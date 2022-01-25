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
























<h1 style="color:red;">id_formation : <%=session.getAttribute("id_formation")%></h1>
    <div>
      <table border="1"  class="content-table">
      <thead>
        <tr>
          <th>id_apprennant</th>
          <th>Nom</th>
          <th>Prenom</th>
          <th>Supprimer</th>  
          <th>Modifier</th>  
        </tr>
         </thead>
          <tbody>
        <c:forEach  items="${list}" var ="demandef">
        <tr class="active-row">
          <td>${demandef.id_apprennant}</td>
          <td>${demandef.nom}</td>
          <td>${demandef.prenom}</td>
                    <td>${demandef.email}</td>
          
          
          <td><a href="/supprimerdemandef?id1=${demandef.id_apprennant}&id2=<%=session.getAttribute("id_formation")%>">Supprimer</a></td>
          <td><a href="/testformation?id1=${demandef.id_apprennant}&id2=<%=session.getAttribute("id_formation")%>">accepter</a></td>
        </tr>
        </c:forEach>
         <tbody>
      </table>
    </div>

</body>
</html>