<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>WSD Airline</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
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
                    <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-send"></span>WSD Airline</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.jsp"><span class="glyphicon glyphicon-search"></span>View booking</a></li>
                    <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"  ></span>Log out</a></li>
                </ul>
            </div>
        </nav>
        <!--table -->
        <div class="container col-sm-9">
            <div style="margin: 0 0 0 35%">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix">
                            <p class="panel-title pull-left" style="padding-top: 7.5px;">Book a trip</p>
                        </div>
                        <div align="center" class="panel-body">
                            <div  class="tab-content" id="Flight">
                                
                                <form  class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" >Form:</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2">To:</label>
                                        <div class="col-sm-4">          
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2">Departure Date:</label>
                                        <div class="col-sm-4">          
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2">Return Date:</label>
                                        <div class="col-sm-4">          
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </form>
                                
                                <div align="center">
                                    <label class="demo--label" >
                                    <input class="demo--radio" type="radio" name="demo-radio" checked>
                                    <span class="demo--radioInput"></span>Economy
                                    </label>
                                    <label class="demo--label">
                                    <input style="margin-left:10px" class="demo--radio" type="radio" name="demo-radio">
                                    <span class="demo--radioInput"></span>Business
                                    </label>
                                </div>
                                <div align="center">
                                    <button  type="submit" class="btn btn-default">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <!-- Footer -->
                    <footer align="center" style="margin-top :20px; margin-bottom:5px">
                        <p>&copy; WSD.UTS 2017</p>
                    </footer>
                </div>
            </div>
        </div>
    </body>
</html>
