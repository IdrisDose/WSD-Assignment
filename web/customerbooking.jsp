<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <title>WSD Airline</title>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="style.css"/> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        </style>

    </head>
    <body>

        <jsp:include page="includes/nav.jsp"/>

    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6">
        </div>
        <div class="col-sm-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Click one of your booking to check</p>
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button class="btn btn-inverse pull-right" data-toggle="dropdown"><i class="glyphicon glyphicon-sort"></i></button>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">Departure Location</a>
                                    <li><a href="#">Rerurn Location</a>
                                    <li><a href="#">Departure Date</a>
                                    <li><a href="#">Return Date</a>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">          
                        <table class="table table-hover">

                            <thead>
                                <tr>
                                    <th>Departure Lacation</th>
                                    <th>Rerurn Location</th>
                                    <th>Departure Date</th>
                                    <th>Reutrn Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr onclick="document.location = '#';">
                                    <td>Sydney</td>
                                    <td>Hong Kong</td>
                                    <td>12-12-2016</td>
                                    <td>30-01-2017</td>
                                </tr>  
                            </tbody>
                        </table>
                    </div>

                </div>        
                <button type="submit" class="btn btn-inverse">Cancel membership</button>         
                <!-- Footer -->
                <footer class="footer">
                    <p>&copy; WSD.UTS 2017</p> 
                </footer>
            </div>
        </div>
    </div>




</body>



</html>