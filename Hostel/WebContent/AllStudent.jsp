<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Hostel.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>WELCOME TO Shree Swaminarayan Gurukul </title>
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
       <% if (request.getParameter("delete")!=null && !request.getParameter("delete").equals("select")){%>
<script type="text/javascript">
  $(document).ready(function(){


   $("#delete").show();
   });
   </script>
<%} else {%>
<script type="text/javascript">
$(document).ready(function(){
	$("#deletecon").show();
  });
   </script>

  <%}%>
                   <script type="text/javascript">
                    $(document).ready(function()
                    {

                          	jQuery("#deletecon").hide();
                           jQuery("#delete").hide();
                    });
                    </script>
                
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
                                                    <center><p id="delete" style="color:red;font-size:20px">Delete Successfully...</p></center>
                                                    <center><p id="deletecon" style="color:red;font-size:20px">Select for Delete...</p></center>
                                                    <table width="100%" border="1">
                                                        <tr class="myheader">
                                                            <th><label>iv&#xb7;a4IRnu> pu&#xbd; nam</label></th>
                                                            <th><label > 2or`</label></th>
                                                            <th><label >v&#x38;&#x52;</label></th>
                                                              <th><label>S3e3s</label></th>
                                                            <th><label>jovo</label></th>
                                                            <th><label>su2aro</label></th>
                                                            <th><label>DIlI3</label></th>
                                                            
                                                        </tr>
                                                    
                                                    <%
                                                        HostelDatabase hd=new HostelDatabase();
                                                        String query="select id,name,std,Fromyear,status,stuid from student  order by status,std ";
                                                        int i=3;
                                                        ResultSet rs=hd.getQueryResult(query);
                                                            while(rs.next())
                                                                {
                                                                  System.out.println("i:"+i);
                                                                %>
                                                        
                                                          <tr>
                                                            <td>
                                                                <label class="mytext"><%=rs.getString(2)%></label>
                                                            </td>
                                                            <td>
                                                                <label><%=rs.getInt(3)%></label>
                                                            </td>
                                                            <% String query2="select MAX(nextyear) from studentyear where studentid='"+rs.getString(6)+"' group by studentid ";
												System.out.println(query2);
												ResultSet rsyear= hd.getQueryResult(query2);
												while(rsyear.next()){%>
										                    
                                                            <td>
                                                                <%=rsyear.getInt(1)%>
                                                            </td>
                                                            <%}%>
                                                            <td>
                                                                <%=rs.getString(5)%>
                                                            </td>

                                                            <td>
                                                                <a href="ViewStudent.jsp?id=<%=rs.getString(6)%>" target="_new">View</a>
                                                            </td>
                                                            <td>
                                                                <a href="EditStudent.jsp?id=<%=rs.getString(6)%>">Edit</a>
                                                            </td>
                                                            <td>
                                                                <a href="DeleteStudent?id=<%=rs.getString(6)%>">Delete</a>
                                                            </td>
                                                        </tr>
                                                    
                                                            <%
                                                            
                                                            }
                                                            %>
                                                    </table>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>	<!-- end #page -->
</div>	<!-- end #page -->
</div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved Shree Swaminarayan Hostel</p>
</div>
<!-- end #footer -->
</body>
</html>
