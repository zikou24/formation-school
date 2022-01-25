<%@page import="Metier.offress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Offres</title>
</head>
<%if (session.getAttribute("loginadmin")== null) {response.sendRedirect("admin");} %>
<body>
<h1>id_offre : <%=session.getAttribute("id_offre")%></h1>
    <div>
      <table border="1">
        <tr>
          <th>id_chercheur</th>
          <th>Nom</th>
          <th>Prenom</th>
          <th>Supprimer</th>  
          <th>Modifier</th>  
        </tr>
        <c:forEach  items="${list}" var ="demande">
        <tr>
          <td>${demande.id_chercheur}</td>
          <td>${demande.nom}</td>
          <td>${demande.prenom}</td>
          
          <td><a href="/supprimerdemande?id1=${demande.id_apprennant}&id2=<%=session.getAttribute("id_offre")%>">Supprimer</a></td>
          <td><a href="/modifierdemande?id1=${demande.id_apprennant}&id2=<%=session.getAttribute("id_offre")%>">Modifier</a></td>
        </tr>
        </c:forEach>
      </table>
    </div>

</body>
</html>