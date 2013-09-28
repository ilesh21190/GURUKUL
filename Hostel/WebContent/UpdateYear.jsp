<%-- 
    Document   : UpdateYear
    Created on : 23 Jun, 2013, 4:02:51 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Hostel.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
        String updateid[]=new String[200];
        int nextyear=Integer.parseInt(request.getParameter("newyear"));
        System.out.println(nextyear);
        String id[]=request.getParameterValues("checkme");
        String next=null;
        int i1=0,i2=0,j1=0;
        for(int i=0;i<id.length;i++)
         {
                updateid[i]=id[i];
                String query1="update student set toyear="+nextyear+" where stuid='"+updateid[i]+"'";
                String query3="update student set std=std+1 where stuid='"+updateid[i]+"'";
                System.out.println(query1);
                String query2="insert into studentyear values('"+updateid[i]+"',"+nextyear+")";
                HostelDatabase hd=new HostelDatabase();
                 i1=hd.insertStatement(query1);
                 i2=hd.insertStatement(query3);
                 j1=hd.insertStatement(query2);
                               
        }
        if(i1>0&j1>0)
        {
            next="AddNewYear.jsp";
        }
        else
            {
                next="AddNewYear.jsp?update=false";
            }

         response.sendRedirect(next);
        
%>