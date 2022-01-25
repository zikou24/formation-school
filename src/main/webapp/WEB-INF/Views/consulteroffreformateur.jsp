<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Offres</title>
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
          <th>id_offre</th>
          <th>title</th>
          <th>salaire</th>
          <th>domaine_offre</th>
          <th>periode</th>
          <th>Supprimer</th>  
          <th>Modifier</th>
            <th>Ajoute Demande</th>
            
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${list}" var ="offre">
        
        <tr class="active-row">
          <td>${offre.id_offre}</td>
          <td>${offre.title}</td>
          <td>${offre.salaire}</td>
          <td>${offre.domaine_offre}</td>
          <td>${offre.periode}</td>
          
                     <td> <a href="addRequest?id=${offre.id_offre}&id2=<%=session.getAttribute("qwere")%>">
                     
       ajouter demande
  </a></td>
          
        </tr>
        
      
        </c:forEach>
        <tbody>
      </table>


</body>
</html>