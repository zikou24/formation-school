<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>etablissement espace</title>
    <link rel="stylesheet" href="styleetab.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
</head>
<%if (session.getAttribute("loginadmin")== null) {response.sendRedirect("athentetab");} %>

<body>

    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>espace <span>Etablissement</span></h3>
      </div>
            <div class="right_area">
        <a href="/athentetab" class="logout_btn">Logout</a>
        
      </div>
      
        
      </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">
        <img src="n.jpg" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
      </div>
     
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
        <img src="up.jpg" class="profile_image" alt="">
        <h4>Etablissement profil</h4>
      </div>
      <a href="#"><span> Contacter les apprenants</span></a>
      <a href="#"><span>  Contacter les formateurs. </span></a>
        <a href="/listoffres"><span>  liste des offres  </span></a>
           <a href="/listformations"><span>  liste formation </span></a>
           
                      <a href="/formationfor"><span> liste  proposer formation par formateur </span></a>
           
   
      <a href="/modifieretab?id=<%=session.getAttribute("etabl")%>"><span>modifier info</span></a>
              <a href="#" class="#"><p> <%=session.getAttribute("loginadmin") %></p></a>
              
      
    </div>
    <!--sidebar end-->

    <div class="content">
      
    </div>


</body>
</html>