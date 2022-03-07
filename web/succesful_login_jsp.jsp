<%-- 
    Document   : newjsp
    Created on : Mar 6, 2022, 10:47:01 AM
    Author     : drewm
--%>



<%@page import="data_access_layer.EmployeeDatabase"%>
<%@page import="business_layer.Employee"%>
<%@page import="business_layer.HourlyEmployee"%>
<html>
<head>
    <meta charset="utf-8">
    <title>CIS640 Assignment 1</title>
    <link rel="stylesheet" href="css/jsp_styles.css" type="text/css"/>    
</head>
<body>

        <h1>
        <%
            String userID = request.getParameter("userID");
            String password = request.getParameter("password");

            for (int i = 1; i <= EmployeeDatabase.get_employees().size(); i++) {
                if (userID.equals(EmployeeDatabase.get_employee_by_id(i).userID) && password.equals(EmployeeDatabase.get_employee_by_id(i).password)){
                    out.println(EmployeeDatabase.get_employee_by_id(i).toString());
                    break;
                }
            }
        %>
        </h1>
        


</body>
</html>