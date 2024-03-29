<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CourseModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Video</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Add Video</h1></center>
    <form class="container" action="../../Video?proses=add" method="post">
  <div class="form-group">
    <label for="type">Type</label>
    <select class="form-control" aria-label="Default select example" name="type">
      <% 
      int i = 0;
      CourseModel cm = new CourseModel();
      List<CourseModel> list = new ArrayList<CourseModel>();
      list = cm.DataCourse();
      while(i<list.size()){
      %>
  <option value="<%= list.get(i).getType()%>"><%= list.get(i).getType()%></option>
     <% i++;}%>
</select>
  </div>
   <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" placeholder="Title" name="title" required>
  </div>
  <div class="form-group">
    <label for="code">Code</label>
    <input type="text" class="form-control" id="code" placeholder="Code" name="code" required>
  </div>
  <button type="submit" class="btn btn-success">Add</button>
  <a href="DataVideo.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>
