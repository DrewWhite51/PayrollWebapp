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
    <style>
        body {background-color: #f1faee;}
        h1   {text-align: center; margin-left:5rem; margin-right:5rem;}
        table{border-collapse:collapse;border:1px solid #FF0000;}
    </style>
</head>
<body>

        <h1>
        <%
            String userID = request.getParameter("userID");
            String password = request.getParameter("password");

            for (int i = 1; i <= EmployeeDatabase.get_employees().size(); i++) {
                if (userID.equals(EmployeeDatabase.get_employee_by_id(i).userID) && password.equals(EmployeeDatabase.get_employee_by_id(i).password)){
//                    out.println(EmployeeDatabase.get_employee_by_id(i).toString());
                    out.println("Login was succesful!!");
                    out.println("<br/>");
                    out.println("Name: ");
                    out.println(EmployeeDatabase.get_employee_by_id(i).firstName);
                    out.println(EmployeeDatabase.get_employee_by_id(i).lastName);
                    out.println("<br/>");
                    out.println("Employee ID: ");
                    out.println(EmployeeDatabase.get_employee_by_id(i).employeeId);
                    out.println("<br/>");
                    out.println("Employee SSN: ");
                    out.println(EmployeeDatabase.get_employee_by_id(i).socialSecurityNumber);
                    break;
                }
            }
        %>
        </h1>
        
        
        <table>
            <td>
                <tr>
                    <%
                    out.println(userID);
                    %>
                </tr>
                
                <tr>
                    <%
                    out.println(password);
                    %>
                </tr>
            </td>
        </table>
        
        
        

        


</body>
</html>