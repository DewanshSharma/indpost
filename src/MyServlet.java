package com.post;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dev
 */
public class MyServlet extends HttpServlet{
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String fname= request.getParameter("fname");
        String lname= request.getParameter("lname");
        String email= request.getParameter("email");   
        String cno= request.getParameter("cno");        
        String haddr= request.getParameter("haddr");       
        String date= request.getParameter("date");        
        String pacwt= request.getParameter("pacwt");  
        
        request.setAttribute(fname, fname);
        request.setAttribute(lname, lname);
        request.setAttribute(email, email);
        request.setAttribute(cno, cno);
        request.setAttribute(pacwt, pacwt);
        request.setAttribute(date, date);
        request.setAttribute(pacwt, pacwt);
        
        
        RequestDispatcher rd= request.getRequestDispatcher("success.jsp");
        rd.forward(request, response);
        
    }
}
