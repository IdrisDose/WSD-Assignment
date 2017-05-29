<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <title>WSD Airline</title>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" href="style.css"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        </style>

    </head>
    <body>

    <jsp:include page="nav.jsp"/>

    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6">
        </div>
        <div class="col-sm-6">
            <h2>Booking List</h2>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Click one of Flight to check</p>	
                    </div>

                    <div class="panel-body">          
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>First name</th>
                                    <th>Last name</th>
                                    <th>Departure Lacation</th>
                                    <th>Rerurn Location</th>
                                    <th>Departure Date</th>
                                    <th>Reutrn Date</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr onclick="document.location = '#';">
                                    <td>Steven</td>
                                    <td>Job</td>
                                    <td>Sydney</td>
                                    <td>Hong Kong</td>
                                    <td>12-12-2016</td>
                                    <td>30-01-2017</td>    
                                </tr>

                                <tr onclick="document.location = '#';">
                                    <td>Mary</td>
                                    <td>Linda</td>
                                    <td>Sydney</td>
                                    <td>Paris</td>
                                    <td>25-12-2016</td>
                                    <td>30-03-2017</td>    
                                </tr>
                            </tbody>
                        </table>

                        <div class="button">
                            <button type="submit" class="btn btn-default" onclick="location.href = 'admin.html'">Back</button>

                        </div>
                    </div>
                </div>               
                <!-- Footer -->
                <footer class="footer">
                    <p>&copy; WSD.UTS 2017</p> 
                </footer>
            </div>
        </div>
    </div>
</body>
</html>