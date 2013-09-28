/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Hostel;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.print.DocFlavor.INPUT_STREAM;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sony
 */
public class ViewPhoto extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("image/jpg");
         final int DEFAULT_BUFFER_SIZE = 1024; // 10KB.
         BufferedInputStream input = null;
        //PrintWriter out = response.getWriter();
        try {
            String stuid = request.getParameter("id");
            String type=request.getParameter("type");
            String url = "", user = "", password = "";
            Class.forName("org.postgresql.Driver");
            url = "jdbc:postgresql://localhost:5432/Hostel";
            user = "postgres";
            password = "ilesh";
            Connection con = DriverManager.getConnection(url, user, password);
            Statement stmt = con.createStatement();
            String query = "select * from StudentPhotoPath where stuid ='"+stuid+"' and type='"+type+"'";
            System.out.println("Photo Query"+query);
            ResultSet rs = stmt.executeQuery(query);
            String Path=null;
         
            while (rs.next())
            {
                Path=rs.getString("photo_path");
                System.out.println("Path:"+Path);
//                if(Path.indexOf("blank.jpg")>0)
//                {
//                	System.out.println("inside Blank");
//                	Path="images/blank.jpg";
//                }
                File f=new File(Path);
                //FileInputStream fin =new FileInputStream(f);
               
                BufferedOutputStream output = null;
                int photosize=(int)f.length();
                System.out.println("Photo Size:"+photosize);
                //input = new BufferedInputStream(new FileInputStream(Path), DEFAULT_BUFFER_SIZE);
                input = new BufferedInputStream(new FileInputStream(f),photosize );
                output = new BufferedOutputStream(response.getOutputStream(), DEFAULT_BUFFER_SIZE);
                //byte[] buffer = new byte[DEFAULT_BUFFER_SIZE];
                byte[] buffer = new byte[photosize];
                int length;
                while ((length = input.read(buffer)) > 0) {
                    output.write(buffer, 0, length);
                }
            }
        } finally { 
            //out.close();
        	input.close();
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ViewPhoto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ViewPhoto.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ViewPhoto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ViewPhoto.class.getName()).log(Level.SEVERE, null, ex);
        }
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
