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
        <form:form action="modappr" method="post" modelAttribute="appr">
        <table>
            <form:hidden path="id_apprennant"/>
            <tr>
                <td>ID apprennat :</td>
                <td><form:input path="id_apprennant" /></td>
            </tr>
            <tr>
                <td>nom :</td>
                <td><form:input path="nom" /></td>
            </tr>
            <tr>
                <td>Prenom :</td>
                <td><form:input path="prenom" /></td>
            </tr>
            <tr>
                <td>Date:</td>
                <td><form:input path="date" /></td>
            </tr>
            <tr>
                <td>password :</td>
                <td><form:input path="password" /></td>
            </tr>
            <tr>
                <td>email :</td>
                <td><form:input path="email" /></td>
            </tr>
            
            <tr>
                <td>niveux :</td>
                <td><form:input path="niveux" /></td>
            </tr>
            
            <tr>
                <td>sex :</td>
                <td><form:input path="sex" /></td>
            </tr>
            
            
            
            
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
                
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>