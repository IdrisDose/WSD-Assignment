<%@page import="uts.wsd.dataLayer.*"%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String flightPath = application.getRealPath("WEB-INF/flights.xml");
        %>
    
        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
            <jsp:setProperty name="bookApp" property="flightPath" value="<%=flightPath%>"/>
        </jsp:useBean>
        <h1>Hello World!</h1>
        
        <%
            
            Flights flights = bookApp.getFlights();
            
            Flight flight = flights.getFirstFlight();
            
            String flightID = flight.getId();
            
            out.print(bookApp.getFlights().getList().size());
            out.println(flightID);
        %>
        
        
    </body>
</html>
