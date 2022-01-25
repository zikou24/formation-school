<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="styleregistre.css">

</head>
<body>







<header>
        <div class="logo">
          <h1 class="logo-text"><span>Formation</span>Ecoles</h1>
        </div>
        <i class="fa fa-bars menu-toggle"></i>
        <ul class="nav">
          <li><a href="/homepage">Home</a></li>
          <li><a href="#">Espace           <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
            <ul>
              <li><a href="#">formateur</a></li>
              <li><a href="#">Etablissement</a></li>
              <li><a href="#">apprenant</a></li>
    
            </ul>
          </li>
          <li><a href="#">Services</a></li>
          <!-- <li><a href="#">Sign Up</a></li>
          <li><a href="#">Login</a></li> -->
          
        </ul>
      </header>






    <div class="container">
        <img alt="" class="avatar" src="https://i.postimg.cc/zDyt7KCv/a1.jpg">
        <div class="header">
            <h2>inscription </h2>
        </div>
        <form action="adforma" method="POST" class="form" addAttribute="forma" id="forme">
            <div class="form-control">
                <label for="username">Nom</label>
                <input type="text" placeholder="Entrer votre nom" id="usernamee" name="nom" />
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error message</small>
            </div>
            <div class="form-control">
                <label for="username">prenom</label>
                <input type="text" placeholder="Entrer votre nom" id="name" name="prenom" />
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error message</small>
            </div>
            
            
            <div class="form-control">
            
         <label for="datemax">Enter a date before 1980-01-01:</label>
  <input type="date" max="2000-1-1"  name="date"><br><br>
  


                
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
              <small>Error message</small>
            </div>
            
            

             <div class="form-control">
                <label for="username">email</label>
                <input type="email" placeholder="Entrer votre nom" id="email" name="email" />
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error message</small>
            </div>
            

            <div class="form-control">
                <label for="username">Password</label>
                <input type="password" placeholder="Entrer votre prenom" id="password" name="password" />
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error message</small>
            </div>
            
             <div class="form-control">
                <label for="username">confirm mot de passe </label>
                <input type="password" placeholder="confirm mot de passe " id="password2"/>
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error message</small>
            </div>
           
            
            
            
           
            
            
            <div class="gender-details">
                <input type="radio"  id="dot-1" name="sex" value="male">
                <input type="radio"  id="dot-2"  name="sex" value="female">
                
                <span class="gender-title">Sex</span>
                <div class="category">
                  <label for="dot-1">
                  <span class="dot one"></span>
                  <span class="gender">Male</span>
                </label>
                <label for="dot-2">
                  <span class="dot two"></span>
                  <span class="gender">Female</span>
                </label>
              
                </div>
                
                
                
                 <div class="form-control">
                <label for="username">specialite</label>
                <input type="text" placeholder="Entrer votre nom"  name="specialite" />
                <i class="fas fa-check-circle"></i>
                <i class="fas fa-exclamation-circle"></i>
                <small>Error message</small>
            </div>
            
              </div>
          
            
            
            
            
                        
            <div class="back">
                                                         <a href="#"   onclick="checkInput()"> check information</a> 
                                 </div> 
            
            
            
            
            
            
            <div class="button">
                <input type="submit" value="enregister">
              </div>
             
            <span class="X" draggable="true" ><a href="/homepage">&times;</a> </span>

        </form>
    </div>




<script type="text/javascript">
const form = document.getElementById('forme');
const username = document.getElementById('usernamee');
const Name = document.getElementById('name');

const email = document.getElementById('email');
const password = document.getElementById('password');
const password2 = document.getElementById('password2');


function checkInput() {
	// trim to remove the whitespaces
	const usernameValue = username.value.trim();
	const nameValue = Name.value.trim();

	const emailValue = email.value.trim();
	const passwordValue = password.value.trim();
	const password2Value = password2.value.trim();
	
	if(usernameValue === '') {
		setErrorFor(username);
	} else {
		setSuccessFor(username);
	}
	if(nameValue === '') {
		setErrorFor(Name);
	} else {
		setSuccessFor(Name);
	}
	
	
	
	if(emailValue === '') {
		setErrorFor(email);
	} else if (!isEmail(emailValue)) {
		setErrorFor(email);
	} else {
		setSuccessFor(email);
	}
	
	if(passwordValue === '') {
		setErrorFor(password);
	} else {
		setSuccessFor(password);
	}
	
	if(password2Value === '') {
		setErrorFor(password2);
	} else if(passwordValue !== password2Value) {
		setErrorFor(password2);
	} else{
		setSuccessFor(password2);
	}
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}
function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}
	
function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}





</script>

</body>
</html>