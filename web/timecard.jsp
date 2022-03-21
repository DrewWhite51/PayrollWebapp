<%-- 
    Document   : timecard
    Created on : Mar 20, 2022, 8:29:33 PM
    Author     : drewm
--%>

<%@page import="data_access_layer.TimeCardDatabase"%>
<%@page import="business_layer.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timecard Page</title>
        <style>
            .btn-group button {
                background-color: #04AA6D; /* Green background */
                border: 1px solid green; /* Green border */
                color: white; /* White text */
                padding: 10px 24px; /* Some padding */
                cursor: pointer; /* Pointer/hand icon */
                width: 50%; /* Set a width if needed */
                display: block; /* Make the buttons appear below each other */
              }

             .btn-group button:not(:last-child) {
                 border-bottom: none; /* Prevent double borders */
             }

              /* Add a background color on hover */
              .btn-group button:hover {
                background-color: #3e8e41;
              }
        </style>
    </head>
    <body>
        
        <%
            HttpSession httpSession = request.getSession(false); 
            //False because we do not want it to create a new session if it does not exist.
            Employee user = null;
            if(httpSession != null){
                user = (Employee)httpSession.getAttribute("currentUser");                
            }
            if(user!=null){
                // Do stuff here
            }
            
        %>
        <h1>Displaying time cards for: </h1>
        <h1>
            <%
                out.println(user.firstName);
            %>
        </h1>
        <h2>
            <%
                int userEmpId = user.employeeId;
                out.println(TimeCardDatabase.get_timecards_by_employee_id(userEmpId));
            %>
        </h2>
        
        
         <div class="btn-group">
            <button>Add</button>
            <button>Update</button>
            <button>Delete</button>
        </div> 
    </body>
</html>
