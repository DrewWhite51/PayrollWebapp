/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import business_layer.Employee;
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
           
             
            String url = "/timecard.jsp";
            
            getServletContext().getRequestDispatcher(url).forward(request, response);
       
       }
       

}