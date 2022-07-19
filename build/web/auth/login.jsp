<%-- 
    Document   : login
    Created on : Jul 19, 2022, 9:52:58 AM
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
    </head>
    <body>
      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
          <a class="navbar-brand" href="../../Briliant/index.jsp">
            <img src="../assets/img/B.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            Brilian
          </a>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav justify-content-end">
          </div>
          <form class="container-fluid justify-content-end">
            <a href="login.jsp"><button class="btn btn-outline-success me-2 mr-3" type="button">Login</button></a>
            <a href="register.jsp"><button class="btn btn-primary me-2 " type="button">Sign Up</button></a>  
          </form>
        </nav>
        <form method="post" action="../Login?proses=login">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                  <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <form class="row g-3 needs-validation" novalidate>  
                    <div class="card-body p-5 text-center">
          
                      <h3 class="mb-5">Sign in</h3>
          
                      <div class="form-group">
                        <input type="email" id="email" class="form-control" placeholder="Email" required name="email"/>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">
                          Please provide a valid Email.
                        </div>
                      </div>
                      <div class="form-group">
                        <input type="password" id="password" class="form-control" placeholder="Password" required name="password"/>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">
                          Please provide a valid Password.
                        </div>
                      </div>
          
                      <!-- Checkbox -->
                      <div class="form-check d-flex justify-content-start mb-4">
                        <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                        <label class="form-check-label" for="form1Example3"> Remember password </label>
                      </div>
          
                      <button class="btn btn-primary btn-lg btn-block" type="submit" id="login">Login</button>
                      <div id="liveAlertPlaceholder"></div>
                      <hr class="text-danger border-2 opacity-50">
                      <p class="text-center">New to Brilian? <a href="register.jsp" class="link-primary">Create an account</a></p>
                    
                    </div>
                  </form>
                  </div>
                </div>
              </div>
            </div>
            </form>
            <script>
(() => {
  'use strict';
  const alertPlaceholder = document.getElementById('liveAlertPlaceholder')
  const forms = document.querySelectorAll('.needs-validation');

  const alert = (message, type) => {
  const wrapper = document.createElement('div')
  wrapper.innerHTML = [
    `<div class="alert alert-${type} alert-dismissible" role="alert">`,
    `   <div>${message}</div>`,
    '   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
    '</div>'
  ].join('')

  alertPlaceholder.append(wrapper)
}

const alertTrigger = document.getElementById('login')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms).forEach((form) => {
    form.addEventListener('submit', (event) => {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }
      else if(form.checkValidity()){
        alertTrigger.addEventListener('click', () => {
        alert('Login Successfully!', 'success')
  });
      }
      form.classList.add('was-validated');
    }, false);
  });
})();

            </script>
    </body>
</html>