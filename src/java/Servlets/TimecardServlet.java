/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import data_access_layer.EmployeeDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimecardServlet extends HttpServlet {
    
       protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
           
           String userID = request.getParameter("userID");
           String password = request.getParameter("password");
           
            PrintWriter out = response.getWriter();
             
            String successUrl = "/succesful_login_jsp.jsp";
            String unsuccesfulUrl = "/unsuccesful_login_jsp.jsp";
            
            
            boolean found = false;
            for (int i = 1; i <= EmployeeDatabase.get_employees().size(); i++){
                 if (userID.equals(EmployeeDatabase.get_employee_by_id(i).userID) && password.equals(EmployeeDatabase.get_employee_by_id(i).password)) {
                     found = true;
                     getServletContext().getRequestDispatcher(successUrl).forward(request, response);
                     break;
                 }
            }
            if (!found) {
                out.println("Unsuccesful login, try again...");
                getServletContext().getRequestDispatcher(unsuccesfulUrl).forward(request, response);
            }
            




           

       }
}