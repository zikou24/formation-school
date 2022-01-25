<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
        <h1>Offre Action</h1>
        <form:form action="modoffre" method="post" modelAttribute="offre">
        <table>
            <form:hidden path="id_offre"/>
            <tr>
                <td>ID offre :</td>
                <td><form:input path="id_offre" /></td>
            </tr>
            <tr>
                <td>Title :</td>
                <td><form:input path="title" /></td>
            </tr>
            <tr>
                <td>Periode :</td>
                <td><form:input path="periode" /></td>
            </tr>
            <tr>
                <td>Domaine Offre :</td>
                <td><form:input path="domaine_offre" /></td>
            </tr>
            <tr>
                <td>Salaire :</td>
                <td><form:input path="salaire" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
                
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>