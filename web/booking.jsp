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
                        <p class="panel-title pull-left">Please confirm the flight information</p>
                    </div>

                    <div class="panel-body">
                        <div align="Left" class="tab-content" id="Flight">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Departure From:</label>
                                    <div class="col-sm-4">
                                        <label class="control-label" for="firstName">Sydney</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName"> To:</label>
                                    <div class="col-sm-4">
                                        <label class="control-label " for="firstName">Hong Kong</label>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName"> Date:</label>
                                    <div class="col-sm-4">
                                        <label class="control-label" for="firstName">2016/07/12</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Return From:</label>
                                    <div class="col-sm-4">
                                        <label class="control-label" for="firstName">Hong Kong</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName">Return To:</label>
                                    <div class="col-sm-4">
                                        <label class="control-label " for="firstName">Sydney</label>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-5" for="firstName"> Date:</label>
                                    <div class="col-sm-4">
                                        <label class="control-label" for="firstName">2016/08/12</label>
                                    </div>
                                </div>

                            </form>
                            <div class="button">
                                <button type="submit" class="btn btn-default" onclick="location.href = 'BookingConfirm.html'">Confirm</button>
                                <button type="submit" class="btn btn-default" onclick="location.href = 'User.html'">Back</button>
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