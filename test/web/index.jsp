<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session = request.getSession();
//  if(session.isNew()){
    System.out.println("---index.jsp---");
    System.out.println(">>"+session.getAttribute("user"));
      if(session.getAttribute("user") == null){
          response.sendRedirect("login.html");
      }
      else{
%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    </head>
    <body>
        <button onclick="LOCKER()" id = "l">START</button>
        <div id="res"></div>
        <form name="fileinfo" id="form_1" method = "post" enctype = "multipart/form-data">
            <input type = "file" name = "file" size = "50" />
            <br />
            <input type = "submit" value = "Upload File" />
        </form>
        <button onclick="AJAX_BOOM()">getCurrentFiles</button>
        <script type="text/javascript" src ="./js/main.js"></script>
    </body>
</html>
<% } %>