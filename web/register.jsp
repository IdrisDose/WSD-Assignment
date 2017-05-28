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

    <!--menu bar-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-send"></span>WSD Airline</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span>Log in </a></li>
            </ul>
        </div>
    </nav>

    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6">
        </div>
        <div class="col-sm-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Please fill in following information</p>
                    </div>

                    <div class="panel-body">
                        <div align="Left" class="tab-content" id="Flight">
                            <form class="form-horizontal" role="form" action="register_action.jsp" method="POST">
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="firstname">First name:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter your First name">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="lastname">Last name:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter your Last name">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="email">Email:</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="email" name="email" placeholder="Enter email">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="pwd">Password:</label>
                                    <div class="col-sm-8">          
                                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="dob">Date of Birth:</label>
                                    <div class="col-sm-8">          
                                        <input type="text" class="form-control" id="dob" name="dob" placeholder="Enter your birth date">
                                    </div>
                                </div>
                                
                                <div class="button">
                                    <button type="submit" class="btn btn-default">Submit</button>
                                    <a href class="btn btn-default" url="index.jsp">Back</a>
                                </div>
                            </form>

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