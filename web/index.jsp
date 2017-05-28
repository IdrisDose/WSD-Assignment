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

        <!--menu bar-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-send"></span>   WSD Airline</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>  Sign up </a></li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"  ></span> Login</a></li>
            </ul>
        </div>
    </nav>

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
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" >
                                    </div>
                                </div>    
                                <div class="form-group">
                                    <label class="control-label col-sm-4">To:</label>
                                    <div class="col-sm-8">          
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4">Departure Date:</label>
                                    <div class="col-sm-8">          
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4">Return Date:</label>
                                    <div class="col-sm-8">          
                                        <input type="text" class="form-control">
                                    </div>
                                </div>            
                            </form>

                            <div class="button">
                                <label class="demo--label" >
                                    <input class="demo--radio" type="radio" name="demo-radio" checked>
                                    <span class="demo--radioInput"></span>Economy
                                </label>

                                <label class="demo--label label2">
                                    <input class="demo--radio" type="radio" name="demo-radio">
                                    <span class="demo--radioInput"></span>Business
                                </label>
                            </div>

                            <div class="button">
                                <button  type="submit" class="btn btn-default">Search</button>
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