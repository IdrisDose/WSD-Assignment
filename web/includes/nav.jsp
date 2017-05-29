<%-- 
    Document   : nav.jsp
    Created on : 29/05/2017, 12:42:08 PM
    Author     : nzdos_000
--%>
<%@page import="uts.wsd.businessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
        User user = (User) session.getAttribute("user");
%>
    <!--menu bar-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-send"></span> WSD Airline</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="search.jsp">Search</a></li>
                <% if(user!=null){ %>
                    <li><a href="user_dashboard.jsp">View Bookings</a></li>
                    
                     <% if(user.isStaff().equals("true")){ %>
                        <li><a href="admin_dashboard.jsp">Admin Dashboard</a></li> 
                    <% } //End of staff check%>                   
                <% } %>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <% if(user!=null){ %>
                    <li><a href="user_dashboard.jsp"><span class="glyphicon glyphicon-user"></span> <%=user.toString()%></a></li>
                    <li><a href="logout_action.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                <%} else {%>
                    <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign up </a></li>
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"  ></span> Login</a></li>
                <%}%>
                
            </ul>
        </div>
    </nav>
