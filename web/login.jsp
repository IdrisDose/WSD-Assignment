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
                    <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-send"></span>   WSD Airline</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.html"><span class="glyphicon glyphicon-user"></span>  Sign up </a></li>
                </ul>
            </div>
        </nav>
        <!--table -->
        <div class="container col-sm-9">
            <div style="margin: 0 0 0 35%">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix">
                            <p class="panel-title pull-left" style="padding-top: 7.5px;">Please enter your registed account</p>
                        </div>
                        <div class="panel-body">
                            <div align="Left" class="tab-content" id="Flight">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="email">Email:</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="email" placeholder="Enter email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                                        <div class="col-sm-4">          
                                            <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                                        </div>
                                    </div>
                                </form>
                                <div align="center">
                                    <button type="submit" class="btn btn-default" onclick="location.href='#'">Login</button>
                                    <button type="submit" class="btn btn-default" onclick="location.href='index.html'">Back</button>
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
