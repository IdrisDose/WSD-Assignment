<%-- 
    Document   : results
    Created on : 29/05/2017, 1:40:00 PM
    Author     : nzdos_000
--%>

<%@page import="java.util.ArrayList"%>
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

    </head>
    <body>
    <%
        String flightPath = application.getRealPath("WEB-INF/flights.xml");
        String submitted = request.getParameter("submitted");
        String fromcity = request.getParameter("fromcity");
        String tocity = request.getParameter("tocity");
        String type = request.getParameter("type");;
        
        //Check if From City is not null, if it is, then assign it a value for searching;
        if(fromcity==null||fromcity.isEmpty())
            fromcity = "nil";
        
        //Check if To City is not null, if it is, then assign it a nil value for searching;
        if(tocity==null||tocity.isEmpty())
            tocity = "nil";
        
        if(type==null||type.isEmpty())
            type = "nil";
    %>
    
    <jsp:useBean id="bookApp" class="BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
    </jsp:useBean> 
    
    <jsp:include page="includes/nav.jsp"/>
    
    <!--table -->
    <div class="container col-sm-8">
        <div class="col-sm-6 col-sm-offset-6">
            
            <% if(submitted==null||submitted!="yes"){ 
                ArrayList<Flight> flights = bookApp.getFlights().getFlightsFromData(fromcity,tocity,type);
                if(flights.isEmpty()){
            %>
            <div class="row">
                <p class="col-sm-6 col-sm-offset-2">Sorry there are no available flights</p>
                <div class="col-sm-8 col-sm-offset-2">
                     <a href="index.jsp" class="btn btn-default">Back</a>
                </div>
            </div>
            <%
                }else {
            %>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Search Results</p>	
                    </div>

                    <div class="panel-body">
                        <form  class="form-horizontal" role="form" method="POST" action="confirm_booking.jsp">
                            <table class="table table-hover">
                                <thead class="center-text">
                                    <th>Flight No.</th>
                                    <th>From City</th>
                                    <th>To City</th>
                                    <th>Seats</th>
                                    <th>Status</th>
                                    <th>Price</th>
                                </thead>
                                <tbody>
                                    <%
                                        for(Flight flight : flights){

                                    %>
                                    <tr>
                                        <td><input type="radio" name="flightid" value="<%=flight.getId()%>"/> <%=flight.getId()%></td>
                                        <td><%=flight.getFromCity()%></td>
                                        <td><%=flight.getToCity()%></td>
                                        <td><%=flight.getNumSeats()%></td>
                                        <td><%=flight.getStatus()%></td>
                                        <td>$<%=flight.getPrice()%>0</td>
                                    </tr>
                                    <%
                                        } //End of For Each loop
                                    %>
                                </tbody>
                            </table>
                            <div class="button">
                                <button type="submit" class="btn btn-default">Submit</button>
                                <a href class="btn btn-default" url="index.jsp">Back</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <%      }//End if Empty List Check
                } // End of Submit Check
            %>
            
            <!-- Footer -->
            <footer class="footer">
                <p>&copy; WSD.UTS 2017 <br> Background image from <a href="http://indonesiaexpat.biz/wp-content/uploads/2016/01/Airplane-flying-desktop-picture.jpg">here</a>.</p> 
            </footer>
        </div>
    </div>
</body>
</html>
