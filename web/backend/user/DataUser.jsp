<%-- 
    Document   : DataUser
    Created on : Jul 20, 2022, 4:48:22 PM
    Author     : killua
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.UserModel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="header.jsp"%>
    <center><h1>Data User</h1></center>
        <div class="container-md">
            <form method="post" action="../User?proses=deleteuser">
        <table class="table table-dark table-striped gap-3">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Roles</th>
      <th scope=""col">Action</th>
    </tr>
  </thead>
  <tbody>
      <% 
      int i = 0;
      UserModel um = new UserModel();
      List<UserModel> list = new ArrayList<UserModel>();
      list = um.DataUser();
      while(i<list.size()){
      %>
    <tr>
        <th scope="row"><%= list.get(i).getId() %></th>
      <td><%= list.get(i).getName() %></td>
      <td><%= list.get(i).getEmail() %></td>
      <td><%= list.get(i).getPassword() %></td>
      <td><%= list.get(i).getRoles() %></td>
      <td>
          <a href="edit.jsp?id=<%= list.get(i).getId()%>" class="text-light"><button type="button" class="btn btn-warning px-2">Edit</button></a>
          <a class="text-light"><button type="submit" class="btn btn-danger px-2" name="id" value="<%= list.get(i).getId() %>">Delete</button></a></td>
    </tr>
    <% i++;} %>
  </tbody>
</table>
            </form>
        </div>
    </body>
</html>
