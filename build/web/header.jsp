<%-- 
    Document   : index
    Created on : Jul 19, 2022, 9:37:00 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            html, body {
    max-width: 100%;
    overflow-x: hidden;
}
        </style>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>	
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
                                   <%
            if((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
            %>
            <a href="auth/login.jsp"><button class="btn btn-outline-success me-2 mr-3" type="button">Login</button></a>
            <a href="auth/register.jsp"><button class="btn btn-primary me-2 " type="button">Sign Up</button></a>
             <%
            }else{
             %>
               <li class="nav-item dropdown no-arrow" style="margin-right:100px;">
    <a class="nav-item dropdown no-arrow" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">
    <img
            src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img (31).webp"
            class="rounded-circle"
            height="42"
            alt="Portrait of a Woman"
            loading="lazy"
          />
    </a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href=""><%=session.getAttribute("name")%></a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Setting</a></li>
      <% if((session.getAttribute("roles").equals("admin"))) {
            %>
      <li><a class="dropdown-item" href="<% request.getContextPath();%>/Briliant/backend">Admin Page</a></li>
      <% } %>
      <li><a class="dropdown-item" href="<% request.getContextPath();%>User?action=logout">Logout</a></li>
    </ul>
  </li> 
 <% }%>
            </form>
          </nav>
        </header>
    </body>
</html>