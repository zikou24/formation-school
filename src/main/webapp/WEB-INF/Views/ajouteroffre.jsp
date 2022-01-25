<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" href="styleathentification.css" >
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>

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
          <a href="/listoffres">
            back
          </a>
          <ul>
          </ul>
        </li>
      </ul>
    </header>

    <form action="addOffre" method="post" modelAttribute="offre">


    <div class="bg-img">
      <div class="content">
        <h1 style="margin-bottom: 35px;">Login Form</h1>
          
          
          
          <div class="field">
      <label for="fname">title:</label><br>       
      <input type="text" required placeholder="title" name="title">
          </div>
          <div class="field">
 <label for="fname">salaire:</label><br>       
      <input type="text" required placeholder="salaire" name="salaire">
          </div>
          
          <div class="field">
 <label for="fname">domaine_offre:</label><br>       
      <input type="text" required placeholder="domaine_offre" name="domaine_offre">
          </div>
          
          
          <div class="field space">
             <label for="fname">periode:</label><br>       
            
            <input type="text" class="pass-key" required placeholder="periode" name="periode">
            
            
            
          
</div>
<button type="submit">login</button>
          </div>
   </form>

</body>
</html>