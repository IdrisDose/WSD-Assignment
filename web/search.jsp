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
        <link rel="stylesheet" href="style.css" /> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        </style>

    </head>
    <body>
    <jsp:include page="nav.jsp"/>
    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6 col-sm-offset-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Book a trip</p>
                    </div>

                    <div class="panel-body">
                        <div  class="tab-content" id="Flight">
                            <form  class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="control-label col-sm-4" >Form:</label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" >
                                    </div>
                                </div>    
                                <div class="form-group">
                                    <label class="control-label col-sm-4">To:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4">Departure Date:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4">Return Date:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-sm-7 col-sm-offset-5">
                                        <label class="radio-inline"><input type="radio" name="eco" value="eco"> Economy</label>
                                        <label class="radio-inline"><input type="radio" name="bus" value="bus"> Business</label>
                                    </div>
                                </div>
                                
                                <div class="button">
                                    <button type="submit" class="btn btn-default">Search</button>
                                </div>
                                
                            </form>
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