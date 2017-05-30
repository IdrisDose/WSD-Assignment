<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
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
    <% 
        String flightPath = application.getRealPath("WEB-INF/flights.xml");
    %>
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
    </jsp:useBean> 
    <jsp:include page="includes/nav.jsp"/>
    <!-- Setup for Select Input Element -->
    <% 
        Flights flights = bookApp.getFlights();
    %>
    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6 col-sm-offset-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Book a trip</p>
                    </div>

                    <div class="panel-body">
                        <div  class="tab-content">
                            <form  class="form-horizontal" role="form" method="POST" action="results.jsp">
                                <div class="form-group">
                                    <label class="control-label col-sm-4" >From:</label>
                                    <div class="col-sm-6">
                                        
                                        <!--<input type="text" name="fromcity" class="form-control" >-->
                                        
                                        <select name="fromcity" class="form-control">
                                            <option value="nil"></option>
                                            <% 
                                                for(String string:flights.getFromCities()){
                                            %>
                                            <option value="<%=string%>"><%=string%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-sm-4">To:</label>
                                    <div class="col-sm-6">          
                                        <!--
                                            Replaced by Select Element
                                            <input type="text" name="tocity" class="form-control">
                                        -->
                                        
                                        <select name="tocity" class="form-control">
                                            <option value="nil"></option>
                                            <% 
                                                for(String string:flights.getToCities()){
                                            %>
                                            <option value="<%=string%>"><%=string%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                        
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4">Departure Date:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" name="depdate" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4">Return Date:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" name="retdate" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-sm-7 col-sm-offset-5">
                                        <label class="radio-inline"><input type="radio" name="type" value="economy" checked> Economy</label>
                                        <label class="radio-inline"><input type="radio" name="type" value="business"> Business</label>
                                    </div>
                                </div>
                                
                                <div class="button">
                                    <button type="submit" class="btn btn-default">Search</button>
                                    <input type="hidden" name="submitted" value="yes"/>
                                </div>
                                
                            </form>
                        </div>
                    </div>         
                </div>   
            </div>

            <!-- Footer -->
            <footer class="footer">
                <p>&copy; WSD.UTS 2017 <br> Background image from <a href="http://indonesiaexpat.biz/wp-content/uploads/2016/01/Airplane-flying-desktop-picture.jpg">here</a>.</p> 
            </footer>
        </div>
    </div>
</body>
</html>