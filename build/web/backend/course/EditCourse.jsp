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
        <title>Edit Course</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Edit Course</h1></center>
    <form class="container" action="../../Course?proses=updatecoursedata" method="post">
  <div class="form-group">
    <label for="id">ID</label>
    <input type="text" class="form-control" id="id" aria-describedby="id" placeholder="ID" readonly name="id_course" value="<%=session.getAttribute("id_course")%>">
  </div>
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" placeholder="Type" name="type_course" value="<%=session.getAttribute("type_course")%>">
  </div>
   <div class="form-group">
    <label for="email">Image Path</label>
    <input type="text" class="form-control" id="image" placeholder="Image" name="image_course" value="<%=session.getAttribute("image_course")%>">
  </div>
  <button type="submit" class="btn btn-success">Update</button>
  <a href="DataCourse.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>
