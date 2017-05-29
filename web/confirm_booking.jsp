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
    <% 
        String flightID = request.getParameter("flightid");
        String flightPath = application.getRealPath("WEB-INF/flights.xml");
    %>
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
    </jsp:useBean> 
    
    <jsp:include page="includes/nav.jsp"/>
    <% 
        Flight flight = bookApp.getFlights().getFlightFromID(flightID);
        User user = (User) session.getAttribute("user");
        String pageTitle = "Booking Confirmation";
    %>
    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6">
        </div>
        <div class="col-sm-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left" ><%=pageTitle%></p>
                    </div>
                    <div class="panel-body">
                        <div align="Left" class="tab-content" id="Flight">
                            <% 
                                if(user!=null){
                                pageTitle = "Thank you for your booking";
                            %>
                            <table class="table table-hover">
                                <thead class="center-text">
                                    <th>Flight No.</th>
                                    <th>From City</th>
                                    <th>To City</th>
                                    <th>Seats</th>
                                    <th>Price</th>
                                </thead>
                                <tbody>
                                    <td><%=flight.getId()%></td>
                                    <td><%=flight.getFromCity()%></td>
                                    <td><%=flight.getToCity()%></td>
                                    <td><%=flight.getNumSeats()%></td>
                                    <td><%=flight.getPrice()%></td>
                                </tbody>
                            </table>    
                            <div class="button">
                                <button type="submit" class="btn btn-default" onclick="location.href = 'customer_bookings.jsp'">Back</button>
                            </div>
                            <% } else { %>
                            <p class="center-text">You have not logged in, please login to book a flight.</p>
                            <div class="button">
                                <a href ="index.jsp" class="btn btn-default">Home</a>
                                <a href ="login.jsp" class="btn btn-default">Login</a>
                                <a href ="register.jsp" class="btn btn-default">Register</a>
                            </div>
                            <% } %>
                        </div>  
                    </div>    
                </div>
                <!-- Footer -->
            <footer class="footer">
                <p>&copy; WSD.UTS 2017 <br> Background image from <a href="http://indonesiaexpat.biz/wp-content/uploads/2016/01/Airplane-flying-desktop-picture.jpg">here</a>.</p> 
            </footer>
            </div>
        </div>
    </div>

</body>
</html>