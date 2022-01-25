<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" href="styleform.css" >
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <form action="addformation" method="post" modelAttribute="formation">



      <div class="content">
          
          
          
          <div class="field">
      <label for="fname">NOM:</label><br>       
      <input type="text" required placeholder="nom" name="nom">
          </div>
          <div class="field">
 <label for="fname">domaine:</label><br>       
      <input type="text" required placeholder="domaine" name="domaine">
          </div>
          
          <div class="field">
 <label for="fname">niveux_formation:</label><br>       
      <input type="text" required placeholder="niveux_formation" name="niveux_formation">
          </div>
          
          
          <div class="field space">
             <label for="fname">niveux_etude:</label><br>       
            
            <input type="text" class="pass-key" required placeholder="niveux_etude" name="niveux_etude">
            
            
            
          
</div>
<button type="submit">login</button>
          </div>
   </form>


</body>
</html>