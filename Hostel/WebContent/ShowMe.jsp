<%--
    Document   : SearchStudent
    Created on : 22 Jun, 2013, 4:46:39 PM
    Author     : Sony
--%>

<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Hostel.*,java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8"  />
<title>WELCOME TO Shree Swaminarayan Hostel </title>
<link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type="text/css"/>
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="JS/jquery.dropotron-1.0.js"></script>
		<script type="text/javascript">
			$(function() {
				$('#menu > ul').dropotron({
					alignment: 'center',
					mode: 'fade',
					offsetY: -13
				});
			});
		</script>
                 <script type="text/javascript">
                    $(document).ready(function()
                    {


                           jQuery("#msg").hide();
                    });
                    </script>
       <% if (request.getParameter("msg")!=null){%>
<script type="text/javascript">
  $(document).ready(function(){


   $("#msg").show();
   });
   </script>
<%}%>

</head>
<body>

<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">


                            <div id="logo">
				<h1>7I Svaimnaray` Skul-gurukul hoS3el</h1>
                                <h1 class="mytext">sek3r-rr,ga>2Ingr </h1>
			</div>


		</div>
	</div>



	<!-- end #header -->
        <jsp:include page="Hostel_Header.jsp"></jsp:include>
	<!-- end #menu -->
<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="page-content">
					<div id="content">
						<div class="post">
                                                    <center class="mytext"> 7I Svaimnaray` Skul-gurukul hoS3el</center>
                                                    <center><label class="mytext">sek3r-rr,ga>2Ingr fon:</label><label>(079)23245821,23221765</label></center>
                                                    <fieldset>
                                                        <legend class="mytext">xo2o</legend>
                                                        <form name="searchme" action="ShowMe.jsp">
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <input type="radio" name="search" value="name"/><label class="mytext">nam</label>
                                                                    <input type="radio" name="search" value="address"/><label class="mytext">srnamu</label>
                                                                    
                                                                </td>
                                                                <td>
                                                                    &nbsp;&nbsp;&nbsp;
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="mytext" name="searchof"/>
                                                                </td>
                                                                <td>
                                                                    <input type="submit" value="xo2o" class="mytext"/>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        </form>
                                                    </fieldset>
                                                     <%
                                                        String by=request.getParameter("search");
                                                        String value=request.getParameter("searchof");
                                                        System.out.println(by+":"+value);
                                                        String query="select id,name,std,Fromyear,stuid from student where "+by+" like '%"+value+"%' and status='Active'";
                                                        System.out.println(query);
                                                        HostelDatabase hd=new HostelDatabase();
                                                        ResultSet rs=hd.getQueryResult(query);
                                                        if(rs.first())
                                                            {
                                                     %>
                                                     <table width="100%" border="1">
                                                        <tr class="myheader">
                                                            <th><label>iv&#xb7;a4IRnu> pu&#xbd; nam</label></th>
                                                            <th><label > 2or`</label></th>
                                                            <th><label >v&#x38;&#x52;</label></th>
                                                            <th><label>juAo</label></th>
                                                            <th><label>su2aro</label></th>
                                                            <th><label>DIlI3</label></th>

                                                        </tr>
                                                        <%
                                                            rs.beforeFirst();
                                                               while(rs.next())
                                                                   {
                                                            System.out.println("Inside if");
                                                                                    %>
                                                                         <tr>
                                                            <td>
                                                                <label class="mytext"><%=rs.getString(2)%></label>
                                                            </td>
                                                            <td>
                                                                <label><%=rs.getInt(3)%></label>
                                                            </td>
                                                            <td>
                                                                <%=rs.getInt(4)%>
                                                            </td>
                                                            <td>
                                                                <a href="ViewStudent.jsp?id=<%=rs.getString(5)%>">View</a>
                                                            </td>
                                                            <td>
                                                                <a href="EditStudent.jsp?id=<%=rs.getString(5)%>">Edit</a>
                                                            </td>
                                                            <td>
                                                                <a href="DeleteStudent?id=<%=rs.getString(5)%>">Delete</a>
                                                            </td>
                                                        </tr>
                                                    
                                                                   <% } %>
                                                        
                                                     </table>

                                                     <%}
                                                        else
                                                        {%>
                                                        <br/>
                                                        <br/>
                                                        <label class="mytext" style="color:red">frI 4I xo6o</label>
                                                        <%}%>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>	<!-- end #page -->
</div>	<!-- end #page -->
</div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved by Shree Swaminarayan Hostel.</p>
</div>
<!-- end #footer -->
</body>
</html>
