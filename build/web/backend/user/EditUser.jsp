<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
    </head>
    <body>
        <%@ include file="../header/header.jsp"%>
    <center><h1>Edit User</h1></center>
    <form class="container" action="../../User?proses=updateuserdata" method="post">
  <div class="form-group">
    <label for="id">ID</label>
    <input type="text" class="form-control" id="id" aria-describedby="id" placeholder="ID" readonly name="id" value="<%=session.getAttribute("id")%>">
  </div>
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" placeholder="Name" name="name" value="<%=session.getAttribute("name")%>">
  </div>
   <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" placeholder="Email" name="email" value="<%=session.getAttribute("email")%>">
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Password" name="password" value="<%=session.getAttribute("password")%>">
  </div>
  <div class="form-group">
    <label for="roles">Roles</label>
    <input type="text" class="form-control" id="roles" placeholder="Roles" name="roles" value="<%=session.getAttribute("roles")%>">
  </div>
  <button type="submit" class="btn btn-success">Update</button>
  <a href="DataUser.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>
