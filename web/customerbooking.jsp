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
                    <li><a href="register.html"><span class="glyphicon glyphicon-search"></span>New booking</a></li>
                    <li><a href="index.html"><span class="glyphicon glyphicon-log-in"  ></span>Log out</a></li>
                </ul>
            </div>
        </nav>
        <!--table -->
        <div class="container col-sm-9">
            <div style="margin: 0 0 0 35%">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix">
                            <p class="panel-title pull-left" style="padding-top: 7.5px;">Click one of your booking to check</p>
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
                    <footer align="center" style="margin-top :20px; margin-bottom:5px">
                        <p>&copy; WSD.UTS 2017</p>
                    </footer>
                </div>
            </div>
        </div>
    </body>
</html>
