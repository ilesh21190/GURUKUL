/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Hostel;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sony
 */
public class UpdateStudent extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String name,motname,fatname,cast,subcast,region,nationality,dob,address,fatbus,motnamebus,stutel,stumonb,sturel,stureltel,sturelmob,stuschool,sturesult,stuelergy,stuextra;
            int std,year;
            String next=null;
            String stuid=request.getParameter("id");
            name=request.getParameter("stuname");
            std=Integer.parseInt(request.getParameter("stustd"));
            year=Integer.parseInt(request.getParameter("stuyear"));
            motname=request.getParameter("stumother");
            fatname=request.getParameter("stufather");
            cast=request.getParameter("stucast");
            subcast=request.getParameter("stusubcast");
            region=request.getParameter("sturegion");
            nationality=request.getParameter("stunationality");
            dob=request.getParameter("studob");
            address=request.getParameter("stuadd");
            fatbus=request.getParameter("stufatbus");
            motnamebus=request.getParameter("stumotbus");
            stutel=request.getParameter("stutele");
            stumonb=request.getParameter("stumo");
            sturel=request.getParameter("sturel");
            stureltel=request.getParameter("stureltel");
            sturelmob=request.getParameter("sturelmo");
            stuschool=request.getParameter("stuschool");
            sturesult=request.getParameter("stuResult");
            stuelergy=request.getParameter("stuelergy");
            stuextra=request.getParameter("stuExtra");
           // String Path=getServletContext().getRealPath("/");
           // Path=Path+"/images/blank.jpg";
            if(motname.equals(""))
            {
            	motname="-";
            }
            if(fatname.equals(""))
            {
            	fatname="-";
            }
            if(cast.equalsIgnoreCase(""))
            {
            	cast="-";
            }
            if(subcast.equals(""))
            {
            	subcast="-";
            }
            if(region.equals(""))
            {
            	region="-";
            }
            if(nationality.equals(""))
            {
            	nationality="-";
            }
            if(dob.equals(""))
            {
            	dob="-";
            }
            if(address.equals(""))
            {
            	address="-";
            }
            if(fatbus.equals(""))
            {
            	fatbus="-";
            }
            if(motnamebus.equals(null))
            {
            	motnamebus="-";
            }
            if(stutel.equals(""))
            {
            	stutel="-";
            }
            if(stureltel.equals(""))
            {
            	stureltel="-";
            }
            if(stumonb.equals(""))
            {
            	stumonb="-";
            }
            if(sturel.equals(""))
            {
            	sturel ="-";
            }
            if(sturelmob==null)
            {
            	sturelmob="-";
            }
            if(stuschool.equals(""))
            {
            	stuschool="-";
            }
            if(sturesult.equals(""))
            {
            	sturesult="-";
            }
            if(stuelergy.equals(""))
            {
            	stuelergy="-";
            }
            if(stuextra.equals(""))
            {
            	stuextra="-";
            }
            
           
               int toYear=year;
            String query="update student set name='"+name+"',std="+std+",toYear="+year+",mother='"+motname+"',father='"+fatname+"',stucast='"+cast+"',subcast='"+subcast+"',region='"+region+"',nationality='"+nationality+"',dob='"+dob+"',address='"+address+"',fatherbus='"+fatbus+"',motwork='"+motnamebus+"',stutel='"+sturelmob+"',stumob='"+stumonb+"',sturel='"+sturel+"',stutele='"+stureltel+"',sturelmob='"+sturelmob+"',stuschool='"+stuschool+"',sturesult='"+sturesult+"',stuelergy='"+stuelergy+"',stuextra='"+stuextra+"' where stuid='"+stuid+"'";
            String query2="update studentyear set nextyear="+year+" where studentid='"+stuid+"'";
            //String query1="insert into StudentPhotoPath values ('"+stuid+"','"+Path+"','student')";
            //String query2="insert into StudentPhotoPath values ('"+stuid+"','"+Path+"','Mother')";
            //String query3="insert into StudentPhotoPath values ('"+stuid+"','"+Path+"','Father')";
            System.out.println(query);
            HostelDatabase hd=new HostelDatabase();
            int i=hd.insertStatement(query);
            int j=hd.insertStatement(query2);
            //int k=hd.insertStatement(query2);
            //int l=hd.insertStatement(query3);
            if(i>0)
            {
               // next="HostelHome.jsp?msg=Insert Successfully";
                next="AllStudent.jsp?id="+stuid;
            }
            else
            {
                    next="AllStudent.jsp?msg=Try Again";
            }
            response.sendRedirect(next);

        } finally { 
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AddStudent.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(AddStudent.class.getName()).log(Level.SEVERE, null, ex);
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
