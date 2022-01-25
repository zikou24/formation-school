<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>authentification etablissement pages </title>
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
        
      </ul>
    </header>



    <div class="bg-img">
      <div class="content">
        <h1 style="margin-bottom: 35px;">Login Form</h1>
        <form action="etablogin" method="POST" modelAttribute='athentetab'>
          <div class="field">
            <span class="fa fa-user"></span>
            <input name='nom' type="text" required placeholder="Email or Phone">
          </div>
          <div class="field space">
            <span class="fa fa-lock"></span>
            <input name='password' type="password" class="pass-key" required placeholder="Password">
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
          <a href="/Signup">Signup Now</a>
          
                 <!--    <a href="/espaceetab">click to etablis</a> -->
          
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