<%-- 
    Document   : Courses
    Created on : Jul 19, 2022, 9:45:49 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Brilian</title>
        <link rel="icon" type="image/x-icon" href="assets/img/B.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
  
    ul{
    margin-right: 20px;
  }
    .footer-content i{
    background-color: transparent;
    padding: 0rem;
  }
  .footer-content .button{
    background-color: #548CFF;
    width: 300px;
  }
  .footer-content h3,p{
    font-family: "Montserrat", sans-serif;
  }
  .footer-content h3{
    font-size: 40px;
    margin-bottom: 30px;
  }
  .footer-content p{
    margin-top: 30px;
    font-size: 20px;
  }
    .body{
    font-family: 'comic sans ms';
    }
    .card{
    width: 350px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    margin-top: 15px;
    padding: 1.5%;
    box-sizing: border-box;
    gap: 1rem;
    flex: 1 1;
    margin-bottom: 10px;
    }
    .card:hover{
     transform: scale(1.05);
     box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
   }
    .card-img-top{
    display: block;
    width: 55%;
    height: 55%;
    background: #E6E7ED;
    text-align: center;
    align-content: center;
    align-items: center;
    border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    }
    .nav-link{
  font-size: 25px;
}
html{
  scroll-behavior: smooth;
}

</style>
    </head>
<body style="background-color:#F2F3F5;">
    <!-- navbar -->
    <header class="header">
        <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-lg">
          <div class="container">
            <a class="navbar-brand" href="http://127.0.0.1:5500/index.html">
              <img src="assets/img/B.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
              Brilian
            </a>
          </div>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            </div>
            <form class="container-fluid justify-content-end">
              <ul class="navbar-nav justify-content-end">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="Courses.html">Courses</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Profile.html">About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="team.html">Team</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Contact.html">Contact</a>
                </li>
              </ul>
              <a href="auth/login.html"><button class="btn-lg btn-outline-success me-2 mr-3" type="button">Login</button></a>
              <a href="auth/register.html"><button class="btn-lg btn-primary me-2 " type="button">Sign Up</button></a>
            </form>
          </nav>
        </header>
    <div class="container my-5">
    <div class="h1 text-center">What would you like to learn?</div>
    <hr>
    <div class="row">
        <div class="col-md-4">
          <div class="card mb-2 shadow">
            <img class="card-img-top mx-auto mt-4" src="assets/img/java.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Java</h4>
            </div>
          </div>
        </div>

        <div class="col-md-4 clearfix d-none d-md-block">
          <div class="card mb-2">
            <img class="card-img-top mx-auto mt-4" src="assets/img/javascript.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Javascript</h4>

            </div>
          </div>
        </div>

        <div class="col-md-4 clearfix d-none d-md-block">
          <div class="card mb-2">
            <img class="card-img-top mx-auto mt-4" src="assets/img/mysql.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Mysql</h4>


            </div>
          </div>
        </div>
      </div>

      <div class="row mt-4">
        <div class="col-md-4">
          <div class="card mb-2 shadow">
            <img class="card-img-top mx-auto mt-4" src="assets/img/android.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Android</h4>
            </div>
          </div>
        </div>

        <div class="col-md-4 clearfix d-none d-md-block">
          <div class="card mb-2">
            <img class="card-img-top mx-auto mt-4" src="assets/img/codeigniter.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Codeigniter</h4>

            </div>
          </div>
        </div>

        <div class="col-md-4 clearfix d-none d-md-block">
          <div class="card mb-2">
            <img class="card-img-top mx-auto mt-4" src="assets/img/git.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Git</h4>


            </div>
          </div>
        </div>
      </div>

      
      <div class="row mt-4">
        <div class="col-md-4">
          <div class="card mb-2 shadow">
            <img class="card-img-top mx-auto mt-4" src="assets/img/typescript.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Typescript</h4>
            </div>
          </div>
        </div>

        <div class="col-md-4 clearfix d-none d-md-block">
          <div class="card mb-2">
            <img class="card-img-top mx-auto mt-4" src="assets/img/html5.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">HTML 5</h4>

            </div>
          </div>
        </div>

        <div class="col-md-4 clearfix d-none d-md-block">
          <div class="card mb-2">
            <img class="card-img-top mx-auto mt-4" src="assets/img/angularjs.png"
                 alt="Card image cap">
            <div class="card-body">
              <h4 class="card-title text-center">Angular JS</h4>


            </div>
          </div>
        </div>
      </div>

      </div>
      

      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>