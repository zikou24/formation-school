<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<title>Employeur Action</title>
</head>
<body>
    <div align="center">
        <form:form>
        <table>
            <form:hidden path="id_formateur"/>
            <tr>
                <td>Nom :</td>
                <td><form:input path="nom" /></td>
            </tr>
            <tr>
                <td>Prenom :</td>
                <td><form:input path="prenom" /></td>
            </tr>
            <tr>
                <td>Email :</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>PassWord :</td>
                <td><form:input path="pass" type="password" /></td>
            </tr>
            <tr>
                <td>Phone :</td>
                <td><form:input path="phone" /></td>
            </tr>
            <tr>
                <td>Address :</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Entreprise :</td>
                <td><form:input path="entreprise" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>
    <div class="sidebar">

      <a href="/Logoute"><span>Logout</span></a>
      <a href="/consulteroffree"><span>Offres</span></a>
      <button onclick="javascript:history.go(-1)"><span>Back</span></button>
 </div>
</body>
</html>