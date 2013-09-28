/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Hostel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Ashwin Kumar
 * Servlet implementation class PictureCaptureServlet
 */
public class PictureCaptureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String fileStoreURL = "";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PictureCaptureServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
    @Override
	public void init(ServletConfig config) throws ServletException {
            super.init(config);
             fileStoreURL= getServletContext().getContextPath();
                //ServletContext ctx= config.getServletContext();
		//fileStoreURL = "/Webcame/uploads/";
         	//fileStoreURL = ctx.getContextPath();
     //   fileStoreURL ="images/";
        //fileStoreURL = "/Webcame/uploads";
               System.out.println("fileStoreURL"+fileStoreURL);
		try {
			File f = new File(fileStoreURL);
			if (!f.exists()) {
				f.mkdirs();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request,
		HttpServletResponse response)
	 */
    @Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,
				IOException {
		try {
                        response.setContentType("text/html");
                       fileStoreURL = getServletContext().getRealPath("/");
                      //  String path=request.getContextPath();
                        System.out.println("ContextPath:"+fileStoreURL);
			long time = new Date().getTime();
                        String stuid=request.getParameter("id");
                        String type=request.getParameter("type");
                        System.out.println("stuid:"+stuid);
                        System.out.println("type:"+type);
                        String fileStoe= fileStoreURL+"/images/"+ time+".jpg";
			FileOutputStream fileOutputStream = new FileOutputStream(fileStoe);
			int res;
			while ((res = request.getInputStream().read()) != -1) {
				fileOutputStream.write(res);
			}
			fileOutputStream.close();
			/**
			 * To make sure each url is different and
			 * not cached added time to it
			 */
                        //PrintWriter out = response.getWriter();
                        String url="",user="",password="";
             Class.forName("org.postgresql.Driver");
            url="jdbc:postgresql://localhost:5432/Hostel";
            user="postgres";
            password="ilesh";
            String DBPath=fileStoreURL+"/images/"+ time+".jpg";
            System.out.println("DBPath:"+DBPath);
            Connection con=DriverManager.getConnection(url, user, password);
            String query="update StudentPhotoPath set photo_path='"+DBPath+"' where stuid='"+stuid+"'and type='"+type+"'";
            System.out.println("Update Query:"+query);
            Statement stmt= con.createStatement();
            int i=stmt.executeUpdate(query);

		 //PrintWriter out=response.getWriter();
                  //out.println("<a href=\"/display\">Display</a>");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
	}
}