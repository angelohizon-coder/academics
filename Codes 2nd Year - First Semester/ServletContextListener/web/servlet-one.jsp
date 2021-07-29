<!-- servlet-one.jsp -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ServletContextListener</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="main">
            <div class="logo_bar">
                <div class="logo">
                     <a href="#">
                         <strong>
                             <!-- takes the value from the parameter name of header and display it to JSP -->
                             <header><% out.print(getServletContext().getInitParameter("HEADER")); %></header>
                         </strong>
                     </a>
                </div>
            </div>
                         
            <div class="message">
                <h2>
                    <br/>
                    The username is: 
                    <% String username = (String)request.getAttribute("username"); %>
                    <%= username %>
                    <br/>
                    The password is:
                    <% String password = (String)request.getAttribute("password"); %>
                    <%= password %>
                    <br/><br/>
                    My message: <% out.println(getServletContext().getInitParameter("myMessage")); %>
                    <br/>
                    My email: <% out.println(getServletContext().getInitParameter("myEmail")); %>
                    <br/>
                </h2>
                <a href="index.jsp"><input type="button" value="Return" class="btn"></a>
            </div>
        </div>
    </body>
</html>
