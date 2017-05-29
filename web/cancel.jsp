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

    <jsp:include page="includes/nav.jsp"/>

    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6">
        </div>
        <div class="col-sm-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Please confirm the fight information</p>
                    </div>

                    <div class="panel-body">
                        <div align="Left" class="tab-content" id="Flight">                                    
                            <form class="form-horizontal" role="form">

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">First name:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">Steven</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Last name:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">Job</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Departure From:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">Sydney</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName"> To:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">Hong Kong</label>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName"> Date:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">2016/07/12</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Return From:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">Hong Kong</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Return To:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">Sydney</label>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName"> Date:</label>
                                    <div class="col--4">
                                        <label class="control-label col-sm-3" for="firstName">2016/08/12</label>
                                    </div>
                                </div>

                            </form>
                            <div class="button">
                                <button type="submit" class="btn btn-default" onclick="location.href = '#'">Cancel Booking</button>
                                <button type="submit" class="btn btn-default" onclick="location.href = 'AllBooking.html'">Back</button>
                            </div>
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