<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" href="styleathentification.css" >

    <style type="text/css">



    body{
    background: url("p.jpg");
  height: 100vh;
  background-size: cover;
  background-position: center;

}



table{
    width: 400px;
    margin-bottom: 20%;
    margin-left: 50px;
    text-align: center;
    table-layout: fixed;
}
table, tr, th, td{
    padding: 20px;
    color: white;
    border: 1px solid #080808;
    border-collapse: collapse;
    font-size: 18px;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(top, #F0E1B9FF 0%,#222222 100%);
    background:-webkit-linear-gradient(top,  #F0E1B9FF 0%,#222222 100%) ;
    
}
td{
width:30px;
} 
.btn{
    margin-top: 75%;
    position: relative;
    text-align: center;
    width: 150px;
    height: 60px;
    font-size: 25px;
    color: #3C1874;
    font-family: poppins;
    font-weight: 400;
    border: 5px solid #15f4ee;
    text-transform: uppercase;
    letter-spacing:2px ;
    cursor: pointer;
    border-radius: 100px;
    transition: 0.5s;


}
.btn:hover{
    background:#4D774E;
}
    .h{
       margin-bottom: 10px;;
       margin-top:20px;
       font-size:60px;
    }
   
    
    </style>
    
    

</head>
<body>




    <header>
      <div class="logo">
        <h1 class="logo-text"><span>Formation</span>Ecoles</h1>
      </div>
      <i class="fa fa-bars menu-toggle"></i>
      <ul class="nav">
        <li><a href="/homepage">Home</a></li>
       
        <li><a href="#">admin</a></li>
        <!-- <li><a href="#">Sign Up</a></li>
        <li><a href="#">Login</a></li> -->
        <li>
          <a href="#">
            back
          </a>
          <ul>
          </ul>
        </li>
      </ul>
    </header>











 <div align="center">
        <h1 class="h">modifier etab info </h1>
        <form:form action="modetab" method="post" modelAttribute="etab">
        <table>
          
            <form:hidden path="id_etab"/>
             
            <tr>
                <td>ID etab :</td>
                <td><form:input path="id_etab" /></td>
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
           
                <td colspan="2" align="center">     <div class="container">
                <input type="submit" value="Save" class="btn"> </div></td>
               
            </tr>
            
        </table>
            </form:form>
           
    </div>







</body>
</html>