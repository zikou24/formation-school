<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html >
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700;900&display=swap" rel="stylesheet" />

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

  <!-- Glidejs StyleSheet -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css" />

  <!-- Animate CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">


  <!-- StyleSheet -->
  <link rel="stylesheet" href="styleshomepage.css" />

  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  

  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>


  <title>Ecole de formation </title>
  </head>
  <body>
<header>
    <div class="logo">
      <h1 class="logo-text"><span>Formation</span>Ecoles</h1>
    </div>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
      <li><a href="#">Home</a></li>
      <li><a href="#">Espace           <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
      </a>
        <ul>
          <li><a href="/athentificationformateur">formateur</a></li>
          <li><a href=/athentetab>Etablissement</a></li>
          <li><a href="/athentificationapprennants">apprenant</a></li>

        </ul>
      </li>
      <li><a href="/adminespa">admin</a></li>
      <!-- <li><a href="#">Sign Up</a></li>
      <li><a href="#">Login</a></li> -->
     
    </ul>
  </header>
    <!--
    
     slider-->

    <div class="img-slider">
      <div class="slide active">
        <img src="formation3.jpg" alt="">
        <div class="info">
          <h2>TechEcole.com</h2>
          <p id="text" class="neon" data-text="[Neon-Light]">Tech.com est le meilleur ecole pour etudier et progreser </p>
        </div>
      </div>
      <div class="slide">
        <img src="formation4.jpg" alt="">
        <div class="info" >
          <h2>Slide 02</h2> 
          <p id="texte" class="neon" data-text="[Neon-Light]">Lorem ...</p>
        </div>
      </div>
      <div class="slide">
        <img src="formation1.jpg" alt="">
        <div class="info" >
          <h2>Slide 03</h2>
          <p  id="textee">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
      </div>
      <div class="slide">
        <img src="formation22.png" alt="">
        <div class="info" >
          <h2>Slide 04</h2>
          <p  id="texteee">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
      </div>
      <div class="slide">
        <img src="formation13.jpg" alt="">
        <div class="info"  >
          <h2>Slide 05</h2>
          <p id="textees">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
      </div>
      <div class="navigation">
        <div class="btn active"></div>
        <div class="btn"></div>
        <div class="btn"></div>
        <div class="btn"></div>
        <div class="btn"></div>
      </div>
    </div>






    <!-- Category -->
    <section class="section  category ">
    <div class="h">
      <h2 class="title" style="font-size:50px;">les formation</h2>
      </div>
      <div class="category-center container">

        <div class="category-box">
          <img src="programming.jpg" alt="">
          <div class="content">
            <h2>formation informatique</h2>
            <a href="/informatique">Read More </a>
           

          </div>
        </div>

        <div class="category-box">
          <img src="langue.jpg" alt="">
          <div class="content">
            <h2>formation langues Etrangeres </h2>
            <a href="/indexfor"> Read More </a>
          
          </div>
        </div>

        <div class="category-box">
          <img src="for.jpg" alt="">
          <div class="content">
            <h2>comptabilite formation</h2>
            <span>155 Products</span>
            <a href="#">click</a>
          </div>
        </div>
 
      </div>
      <div style="display:flex; ">
<h2 style="text-align:left; font-size:40px; margin-left:100px;">bac+1,bac+2,bac+3</h2>

<h2 style="text-align:center; font-size:45px; margin-left:300px;">terminal</h2>
</div>



    <!-- Filtered Products -->
     <!-- 
    <section class="section sort-category">
      <div class="title-container ">
        <div class="section-titles">
          <div class="section-title active filter-btn" data-id="trend">
            <span class="dot"></span>
            <h1 class="primary-title">autres formations</h1>
          </div>
        </div>


    </section> -->

    <!-- Grid -->
    <!-- 
    <section class="gallary container">
      <figure class="gallary-item item-1">
        <img src="formation4.jpg" alt="" class="gallary-img">
        <div class="content">
          <h2>formation langues Etrangeres </h2>
          <a href="#"> espagnol</a>
          <a href="#"> englais</a>
          <a href="#"> turkiye</a>

        </div>
      </figure>

      <figure class="gallary-item item-2">
        <img src="formation4.jpg" alt="" class="gallary-img">
        <div class="content">
          <h2>formation langues Etrangeres </h2>
          <a href="#"> espagnol</a>
          <a href="#"> englais</a>

        </div>
      </figure>

      <figure class="gallary-item item-3">
        <img src="formation4.jpg" alt="" class="gallary-img">
        <div class="content">
          <h2>formation langues Etrangeres </h2>
          <a href="#"> espagnol</a>
          <a href="#"> englais</a>

        </div>
      </figure>

      <figure class="gallary-item item-4">
        <img src="formation4.jpg" alt="" class="gallary-img">
        <div class="content">
          <h2>formation langues Etrangeres </h2>
          <a href="#"> espagnol</a>
          <a href="#"> englais</a>

        </div>
      </figure>
    </section> -->
 
 
    <!-- Post Slider -->
    <!-- 
    <div class="post-slider">
      <h1 class="slider-title">offres d'omploie</h1>

      <div class="post-wrapper">

        <div class="post">
          <img src="formation13.jpg" alt="" class="slider-image">
          <div class="post-info">
            <h4><a href="single.html">One day your life will flash before your eyes</a></h4>
            <i class="far fa-user"> Awa Melvine</i>
            &nbsp;
            <i class="far fa-calendar"> Mar 8, 2019</i>
          </div>
        </div>

        <div class="post">
          <img src="formation5.jpg" alt="" class="slider-image">
          <div class="post-info">
            <h4><a href="single.html">One day your life will flash before your eyes</a></h4>
            <i class="far fa-user"> Awa Melvine</i>
            &nbsp;
            <i class="far fa-calendar"> Mar 8, 2019</i>
          </div>
        </div>

        <div class="post">
          <img src="formation9.jpg" alt="" class="slider-image">
          <div class="post-info">
            <h4><a href="#">One day your life will flash before your eyes</a></h4>
            <i class="far fa-user"> Awa Melvine</i>
            &nbsp;
            <i class="far fa-calendar"> Mar 8, 2019</i>
          </div>
        </div>

        <div class="post">
          <img src="formation7.png" alt="" class="slider-image">
          <div class="post-info">
            <h4><a href="#">One day your life will flash before your eyes</a></h4>
            <i class="far fa-user"> Awa Melvine</i>
            &nbsp;
            <i class="far fa-calendar"> Mar 8, 2019</i>
          </div>
        </div>

      


 -->
      </div>

    </div>
    <!-- // Post Slider -->











    

    <!-- footer -->
  <div class="footer" style="margin-top:100px">
    <div class="footer-content">

      <div class="footer-section about">
        <h1 class="logo-text"><span>Formation</span>Ecole</h1>
        
        <div class="contact">
          <span><i class="fas fa-phone"></i> &nbsp; 123-334-433</span>
          <span><i class="fas fa-envelope"></i> &nbsp;  zakaria.bouregbi@univ-constantine2.dz</span>
          <span><i class="fas fa-envelope"></i> &nbsp; khaled.benhafed@univ-constantine2.dz</span>
          <span><i class="fas fa-envelope"></i> &nbsp; mohamed.slimani@univ-constantine2.dz</span>

        </div>
        <div class="socials">
          <a href="https://web.facebook.com/profile.php?id=100055958776128"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>

     <!-- <div class="footer-section links">
        <h2>Quick Links</h2>
        <br>
        <ul>
          <a href="#">
            <li>Events</li>
          </a>
          <a href="#">
            <li>Team</li>
          </a>
          <a href="#">
            <li>Mentores</li>
          </a>
          <a href="#">
            <li>Gallery</li>
          </a>
          <a href="#">
            <li>Terms and Conditions</li>
          </a>
        </ul>
      </div>-->

      <div class="footer-section contact-form">
        <h2>Contact us</h2>
        <br>
        <form action="#" method="post">
          <input type="email" name="email" class="text-input contact-input" placeholder="Your email address...">
          <textarea rows="4" name="message" class="text-input contact-input" placeholder="Your message..."></textarea>
          <button type="submit" class="btn btn-big contact-btn">
            <i class="fas fa-envelope"></i>
            Send
          </button>
        </form>
      </div>

    </div>

    <div class="footer-bottom">
      &copy; PFE.com/algerian
    </div>
  </div>
  <!-- // footer -->



<script>
var slides = document.querySelectorAll('.slide');
var btns = document.querySelectorAll('.btn');
let currentSlide = 1;

// Javascript for image slider manual navigation
var manualNav = function(manual){
  slides.forEach((slide) => {
    slide.classList.remove('active');

    btns.forEach((btn) => {
      btn.classList.remove('active');
    });
  });

  slides[manual].classList.add('active');
  btns[manual].classList.add('active');
}

btns.forEach((btn, i) => {
  btn.addEventListener("click", () => {
    manualNav(i);
    currentSlide = i;
  });
});

// Javascript for image slider autoplay navigation
var repeat = function(activeClass){
  let active = document.getElementsByClassName('active');
  let i = 1;

  var repeater = () => {
    setTimeout(function(){
      [...active].forEach((activeSlide) => {
        activeSlide.classList.remove('active');
      });

    slides[i].classList.add('active');
    btns[i].classList.add('active');
    i++;

    if(slides.length == i){
      i = 0;
    }
    if(i >= slides.length){
      return;
    }
    repeater();
  }, 10000);
  }
  repeater();
}
repeat();




//
/*
 const text=document.getElementById("text");
 const prog="est le meilleur ecole pour etudier et progreser ";
 let idx=1;
 setInterval(writeText,100);
 
 function writeText(){
	 text.innerText=prog.slice(0,idx);
	 idx++;
	 
	 if(idx>prog.length){
		 idx=1;
	 }
 }

 
 
 const texte=document.getElementById("texte");
 const proge="ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut ";
 let idxx=1;
 setInterval(writeTexte,100);
 
 function writeTexte(){
	 texte.innerText=proge.slice(0,idxx);
	 idxx++;
	 
	 if(idxx>proge.length){
		 idxx=1;
	 }
 }


*/

//index.js
$(document).ready(function() {
  $(".menu-toggle").on("click", function() {
    $(".nav").toggleClass("showing");
    $(".nav ul").toggleClass("showing");
  });

  $(".post-wrapper").slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    nextArrow: $(".next"),
    prevArrow: $(".prev"),
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
});

ClassicEditor.create(document.querySelector("#body"), {
  toolbar: [
    "heading",
    "|",
    "bold",
    "italic",
    "link",
    "bulletedList",
    "numberedList",
    "blockQuote"
  ],
  heading: {
    options: [
      { model: "paragraph", title: "Paragraph", class: "ck-heading_paragraph" },
      {
        model: "heading1",
        view: "h1",
        title: "Heading 1",
        class: "ck-heading_heading1"
      },
      {
        model: "heading2",
        view: "h2",
        title: "Heading 2",
        class: "ck-heading_heading2"
      }
    ]
  }
}).catch(error => {
  console.log(error);
});


//




</script>




</body>
</html>