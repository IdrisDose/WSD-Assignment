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
        <style>
        </style>

    </head>
    <body>
    <%
        String flightPath = application.getRealPath("WEB-INF/flights.xml");
        String submitted = request.getParameter("submitted");
        String fromcity = request.getParameter("fromcity");
        String tocity = request.getParameter("tocity");
        String eco = request.getParameter("eco");
        String business = request.getParameter("bus");
        String type = "nil";
        
        //Check if From City is not null, if it is, then assign it a value for searching;
        if(fromcity==null)
            fromcity = "nil";
        
        //Check if To City is not null, if it is, then assign it a nil value for searching;
        if(tocity==null)
            tocity = "nil";
        
        //Assign a value to type
        if(eco == null && business != null){
            //If Eco is empty but business value is not, assign said value to type variable.
            type = business;
        } else if(business==null && eco !=null){
            //If business is empty but eco is not, assign the value of eco to type variable.
            type = eco;
        } else {
            //In the even of both null, assign type nil;
            type = "nil";
        }
        
    %>
    
    <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
        <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
    </jsp:useBean>  
    
    <jsp:include page="nav.jsp"/>
    
    <!--table -->
    <div class="container">
        <table>
        <% if(submitted==null||submitted!="yes"){ 
            ArrayList<Flight> flights = bookApp.getFlights().getFlightsFromData(fromcity,tocity,type);
        %>
            
            <thead>
                <th>Flight No.</th>
                <th>From City</th>
                <th>To City</th>
                <th>Seats Available</th>
                <th>Status</th>
            </thead>
            <tbody>
            
            </tbody>
        <% } %>
        </table>
        <!-- Footer -->
        <footer class="footer">
            <p>&copy; WSD.UTS 2017</p> 
        </footer>
    </div>
</body>
</html>
