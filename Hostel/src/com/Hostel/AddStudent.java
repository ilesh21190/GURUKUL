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
public class AddStudent extends HttpServlet {
   
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
            String name,motname,fatname,cast,subcast,region,nationality,dob,address,fatbus,motnamebus,stutel,stumonb,sturel,stureltel,sturelmob,stuschool,sturesult,stuelergy,stuextra,lan;
            int std,year;
            String next=null;
            String stuid;
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
            lan = request.getParameter("language");
           System.out.println("Lan:"+lan);
            String Path=getServletContext().getRealPath("/")+"/images/NoPhotoAvailable.jpg";
            /*String Path2=getServletContext().getRealPath("/")+"/images/blank_2.jpg";
            String Path3=getServletContext().getRealPath("/")+"/images/blank_3.jpg";*/
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
            
            stuid= name+std+dob;
               int toYear=year;
            String query="insert into student(name,stuid,std,Fromyear,toYear,mother,father,stucast,subcast,region,nationality,dob,address,fatherbus,motwork,stutel,stumob,sturel,stutele,sturelmob,stuschool,sturesult,stuelergy,stuextra,lan) values ('"+name+"','"+stuid+"',"+std+","+year+","+toYear+",'"+motname+"','"+fatname+"','"+cast+"','"+subcast+"','"+region+"','"+nationality+"','"+dob+"','"+address+"','"+fatbus+"','"+motnamebus+"','"+stutel+"','"+stumonb+"','"+sturel+"','"+stureltel+"','"+sturelmob+"','"+stuschool+"','"+sturesult+"','"+stuelergy+"','"+stuextra+"','"+lan+"')";
            String yearQuery="insert into studentyear values('"+stuid+"','"+year+"')";
            String query1="insert into StudentPhotoPath values ('"+stuid+"','"+Path+"','student')";
            String query2="insert into StudentPhotoPath values ('"+stuid+"','"+Path+"','Mother')";
            String query3="insert into StudentPhotoPath values ('"+stuid+"','"+Path+"','Father')";
            System.out.println(query);
            HostelDatabase hd=new HostelDatabase();
            int i=hd.insertStatement(query);
            int m=hd.insertStatement(yearQuery);
            int j=hd.insertStatement(query1);
            int k=hd.insertStatement(query2);
            int l=hd.insertStatement(query3);
            if(i>0)
            {
               // next="HostelHome.jsp?msg=Insert Successfully";
                next="MyGoal.jsp?id="+name+std+dob+"&lan="+lan;
            }
            else
            {
                    next="HostelHome.jsp?msg=Try Again&ln=en";
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
