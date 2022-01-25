<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>authentification client pages </title>
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
          <a href="#">
            Awa Melvine
            <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
          <ul>
            <li><a href="#">Dashboard</a></li>
            <li><a href="#" class="logout">Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>



    <div class="bg-img">
      <div class="content">
        <h1 style="margin-bottom: 35px;">Login Form</h1>
        <form action="#">
          <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" required placeholder="Email or Phone">
          </div>
          <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Password">
            <span class="show">SHOW</span>
          </div>
          <div class="pass">
            <a href="#">Forgot Password?</a>
          </div>
          <div class="btn">
            <div class="inner">
</div>
<button type="submit">login</button>
          </div>
        </form>
        
        <div class="signup">Don't have account?
          <a href="/registre">Signup Now</a>
                    <a href="/espaceetab">click to etablis</a>
          
        </div>
      </div>
    </div>
    
    <script>
    const pass_field = document.querySelector('.pass-key');
    const showBtn = document.querySelector('.show');
    showBtn.addEventListener('click', function(){
     if(pass_field.type === "password"){
       pass_field.type = "text";
       showBtn.textContent = "HIDE";
       showBtn.style.color = "#3498db";
     }else{
       pass_field.type = "password";
       showBtn.textContent = "SHOW";
       showBtn.style.color = "#222";
     }
    });
    
    </script>

</body>
</html>