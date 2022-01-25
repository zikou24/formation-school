<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>espace formateur</title>
    <link rel="stylesheet" href="styleapprenant.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
</head>
<body>

    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>espace <span>formateur</span></h3>
      </div>
      <div class="right_area">
                               
      
        <a href="/athentificationformateur" class="logout_btn">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">
        <img src="up.jpg" class="mobile_profile_image" alt="">
        <i class="fa fa-bars nav_btn"></i>
      </div>
     
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
        <img src="up.jpg" class="profile_image" alt="">
        <h4>formateur profil</h4>
      </div>
      <a href="#"><span>Contact Etablissement</span></a>
      <a href="/proposerformation?id=<%=session.getAttribute("qwere")%>"><span> Proposer une formation </span></a>
      
            <a href="/listoffresfor?id=<%=session.getAttribute("qwere")%>"><span>consulter offre</span></a>

      <a href="/modifierformateur?id=<%=session.getAttribute("qwere")%>"><span>modifier info</span></a>
            
             <a href="#"><span><%=session.getAttribute("loginefromateur") %></span></a>
             
               
      
    </div>
    <!--sidebar end-->

    <div class="content">
      
    </div>


</body>
</html>