<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <title>admin</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- Font Awesome -->
        <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
            integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
            crossorigin="anonymous">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Candal|Lora"
            rel="stylesheet">

        <!-- Custom Styling -->
        <link rel="stylesheet" href="styleadmin.css">

        <!-- Admin Styling -->
        <link rel="stylesheet" href="admin.css">

        <title>Admin Section - Add Topic</title>
    </head>

    <body>
        <header>
            <div class="logo">
                <h1 class="logo-text"><span>Ecole</span>Formation</h1>
            </div>
            <i class="fa fa-bars menu-toggle"></i>
                                   <%=session.getAttribute("loginadmin") %>  
            
            <ul class="nav">
                <li>
                    <a href="#">
                        <i class="fa fa-user"></i>
                           <%=session.getAttribute("loginadmin") %>  
                        
                        
                        <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
                    </a>
                    <ul>
                        <li><a href="/Espaceathentif" class="logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </header>

        <!-- Admin Page Wrapper -->
        <div class="admin-wrapper">

            <!-- Left Sidebar -->
            <div class="left-sidebar">
                <ul>
                   <li><a href="../posts/index.html">gerer les formation</a></li>
                <li><a href="/espaceadmin">gerer les apprennat</a></li>
                <li><a href="/espaceformateur">gerer les formateur</a></li>
                
                </ul>
            </div>
            <!-- // Left Sidebar -->


            <!-- Admin Content -->
            <div class="admin-content">
                <div class="button-group">
                    <a href="/modifierformateur" class="btn btn-big">modifier formateur</a>
                    <a href="/espaceformateur" class="btn btn-big">gerer les formateur</a>
                </div>


                <div class="content">

                    <h2 class="page-title">Modifier formateur</h2>

                    <form action="create.html" method="post">
                        <div>
                            <label>Username</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        <div>
                            <label>name</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        <div>
                            <label>Age</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        <div>
                            <label>Adress</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        <div>
                            <label>Adresse</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        <div>
                            <label>sexe</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        <div>
                            <label>diplome</label>
                            <input type="text" name="username"
                                class="text-input">
                        </div>
                        
                        <div>
                            <label>email</label>
                            <input type="email" name="email" class="text-input">
                        </div>
                        <div>
                            <label>Password</label>
                            <input type="password" name="password"
                                class="text-input">
                        </div>
                        <div>
                            <label>Password Confirmation</label>
                            <input type="password" name="passwordConf"
                                class="text-input">
                        </div>
                        

                        <div>
                            <button type="submit" class="btn btn-big">save</button>
                        </div>
                    </form>

                </div>
            </div>
            <!-- // Admin Content -->

        </div>
        <!-- // Page Wrapper -->



        <!-- JQuery -->
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Ckeditor -->
        <script
            src="https://cdn.ckeditor.com/ckeditor5/12.2.0/classic/ckeditor.js"></script>
        <!-- Custom Script -->
        <script src="../../js/scripts.js"></script>

    </body>

</html>

</body>
</html>