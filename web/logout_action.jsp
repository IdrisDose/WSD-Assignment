<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            session.invalidate(); 
            response.sendRedirect("index.jsp");
        %>
        <div class="container col-sm-8">
        <div class="col-sm-6 col-sm-offset-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Logged Out</p>
                    </div>

                    <div class="panel-body">
                        <div  class="tab-content">
                            <p><a href="index.jsp">Click here</a> to return home.</p>
                            
                        </div>
                    </div>         
                </div>   
            </div>

            <!-- Footer -->
            <footer class="footer">
                <p>&copy; WSD.UTS 2017 <br> Background image from <a href="http://indonesiaexpat.biz/wp-content/uploads/2016/01/Airplane-flying-desktop-picture.jpg">here</a>.</p> 
            </footer>
        </div>
    </div>
    </body>
</html>
