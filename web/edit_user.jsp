<%@page import="uts.wsd.businessLayer.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            String userPath = application.getRealPath("WEB-INF/users.xml");
        %> 

        <jsp:useBean id="bookApp" class="uts.wsd.BookingApplication" scope="application">
            <jsp:setProperty name="bookApp" property="userPath" value="<%=userPath%>"/>
        </jsp:useBean>
        <jsp:include page="includes/nav.jsp"/>
        <%
            String id = request.getParameter("userid");
            String submitted = request.getParameter("submitted");
            User user = null;

            if (submitted != null && submitted.equals("yes")) {
                user = bookApp.getUsers().getUserFromId(Integer.parseInt(id));
            }
        %>
        <!-- Container -->
        <div class="container">
            <div class="panel-group">
                <div class="panel panel-default">

                    <div class="panel-heading clearfix"> 
                        <p class="panel-title pull-left">Edit User</p>
                    </div>

                    <div class="panel-body">
                        <% if (user != null) {%>
                        <form class="form-horizontal" role="form" action="edit_user_action.jsp" method="POST">
                            <div class="row">
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="name">Name:</label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" id="username" name="name" value="<%=user.getFullname()%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="email">Email:</label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" id="email" name="email" placeholder="Enter email" value="<%=user.getEmail()%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="pwd">Password:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" class="form-control" id="pwd" name="pwd" value="<%=user.getPassword()%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="dob">Date of Birth:</label>
                                    <div class="col-sm-6">          
                                        <input type="text" class="form-control" id="dob" name="dob" value="<%=user.getDob()%>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="staff">Is Staff (yes/no):</label>
                                    <div class="col-sm-6">          
                                        <input type="text" class="form-control" id="staff" name="staff" value="<%=user.isStaff()%>">
                                    </div>
                                </div
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="staff">Membership Status:</label>
                                    <div class="col-sm-6">          
                                        <p><%=user.getStatus()%></p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6 col-sm-offset-4">
                                        <button type="submit" class="btn btn-default">Submit</button>
                                        <a href="index.jsp" class="btn btn-default" >Back</a>
                                    </div>
                                </div>
                            
                        </form>
                        <form method="POST" action="change_membership.jsp" class="col-sm-2 col-sm-offset-10">
                            <% 
                                boolean isMember = user.getStatus().equals("member");
                                String status = isMember?"no":"yes";
                            %>
                            <button type="submit" class="btn btn-default">Change Membership</button>
                            <input type="hidden" name="status" value="<%= status%>"/>
                            <input type="hidden" name="userid" value="<%=user.getId()%>"/>
                            <input type="hidden" name="referer" value="admin_dashboard"/>
                        </form>
                            
                        <form method="POST" action="change_user_type.jsp" class="col-sm-2 col-sm-offset-10">
                            <% 
                                boolean isStaff = user.isStaff().equals("yes");
                                String staff = isStaff?"no":"yes";
                            %>
                            <button type="submit" class="btn btn-default">Change User Type</button>
                            <input type="hidden" name="staff" value="<%= staff%>"/>
                            <input type="hidden" name="userid" value="<%=user.getId()%>"/>
                        </form>
                        
                        <% } else {%>
                            <p>An error occured, pelase try again.</p>
                        <% }%>  
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
