<%-- 
    Document   : index
    Created on : Jul 19, 2022, 9:37:00 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    </head>
    <body>


      <!--Navbar-->
      <header class="header">
        <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-lg">
          <div class="container">
            <a class="navbar-brand" href="index.jsp">
              <img src="assets/img/B.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
              Brilian
            </a>
          </div>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            </div>
            <form class="container-fluid justify-content-end">
              <ul class="navbar-nav justify-content-end">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Courses.jsp">Courses</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Profile.jsp">About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="team.jsp">Team</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Contact.jsp">Contact</a>
                </li>
              </ul>
              <a href="auth/login.jsp"><button class="btn btn-outline-success me-2 mr-3" type="button">Login</button></a>
              <a href="auth/register.jsp"><button class="btn btn-primary me-2 " type="button">Sign Up</button></a>
            </form>
          </nav>
        </header>
    </body>
</html>