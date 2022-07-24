<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CourseModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Video</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Edit Video</h1></center>
    <form class="container" action="../../Video?proses=updatevideodata" method="post">
  <div class="form-group">
    <label for="id">ID</label>
    <input type="text" class="form-control" id="id" aria-describedby="id" placeholder="ID" readonly name="id_video" value="<%=session.getAttribute("id_video")%>">
  </div>
  <div class="form-group">
    <label for="type">Type</label>
    <select class="form-control" aria-label="Default select example" name="type_video">
      <% 
      int i = 0;
      CourseModel cm = new CourseModel();
      List<CourseModel> list = new ArrayList<CourseModel>();
      list = cm.DataCourse();
      while(i<list.size()){
      %>
      <option value="<%= list.get(i).getType()%>" <% if(session.getAttribute("type_video").equals(list.get(i).getType())){%>selected<%}%>><%= list.get(i).getType()%></option>
     <% i++;}%>
    </select>
  </div>
   <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" placeholder="Title" name="title_video" value="<%=session.getAttribute("title_video")%>">
  </div>
  <div class="form-group">
    <label for="code">Code</label>
    <input type="text" class="form-control" id="code" placeholder="Code" name="code_video" value="<%=session.getAttribute("code_video")%>">
  </div>
  <button type="submit" class="btn btn-success">Update</button>
  <a href="DataVideo.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>
