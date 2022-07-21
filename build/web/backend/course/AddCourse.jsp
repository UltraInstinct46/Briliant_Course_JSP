<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Add Course</h1></center>
    <form class="container" action="../../Course?proses=create" method="post">
  <div class="form-group">
    <label for="type">Type</label>
    <input type="text" class="form-control" id="type" placeholder="Type" name="type" required>
  </div>
   <div class="form-group">
    <label for="image">Image Path</label>
    <input type="text" class="form-control" id="image" placeholder="Image" name="image" required>
  </div>
  <button type="submit" class="btn btn-success">Add</button>
  <a href="DataCourse.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>
