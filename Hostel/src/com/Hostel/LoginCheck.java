/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Hostel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sony
 */
public class LoginCheck extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int count=0;
        String next="";
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginCheck</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginCheck at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            String username=request.getParameter("uid");
            String password=request.getParameter("pid");
            String query="select username,UserType from HostelLogin where password='"+password+"'";
            System.out.println(query);
            HostelDatabase hd=new HostelDatabase();
            ResultSet rs=hd.getQueryResult(query);
            while(rs.next())
            {
                   count++;
                   String user=rs.getString(1);
                String type=rs.getString(2);
                HttpSession session=request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("type", type);

            }

            if(count>0)
            {
                next="HostelHome.jsp";
            }
            else
            {
                next="Login.jsp?error=true";
            }
            response.sendRedirect(next);

        } catch(Exception e)
        {
            e.printStackTrace();
        }finally {
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
