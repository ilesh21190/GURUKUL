<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Hostel.*,java.sql.*,java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<% if(session.getAttribute("login")==null)
{
		response.sendRedirect("Login.jsp");
}
	%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>WELCOME TO Shree Swaminarayan Gurukul </title>
<link href="CSS/style.css" rel="stylesheet" type="text/css"  />
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


                           jQuery("#delete").hide();
                    });
                    </script>
                    <%String ln = request.getParameter("ln"); %>
<script type="text/javascript">
	$(document).ready(function() {

		jQuery("#msg").hide();
		var ln1 = "<%=ln%>";
		<%-- $("#language option:contains('<%=ln%>')").attr('selected', 'selected'); --%>
		$('#language').val(ln1).attr("selected", "selected");
		$( "#language").change(function() {
			 
				var lan = $( "select option:selected" ).val();
				window.location.href="/Hostel/AllStudent.jsp?ln="+lan;
				
		});
});
	
</script>

<% 
Locale l = new Locale(ln);
ResourceBundle rb = ResourceBundle.getBundle("ApplicationResource", l);
%>
<%
	if (ln.equals("guj")) {
%>
<script type="text/javascript">
	$(document).ready(function() {
		
		$(".I18Nmsg").addClass("mytext");
		$(".I18NField").addClass("myField");
	});
</script>
<%
	}
	else
	{
%>
<script type="text/javascript">
	$(document).ready(function() {
		
		$(".I18Nmsg").addClass("myEngtext");
		$(".I18NField").removeClass("myField");
	});
</script>
<%} %>
                    
       <% if (request.getParameter("delete")!=null){%>
<script type="text/javascript">
  $(document).ready(function(){


   $("#delete").show();
   });
   </script>
<%}%>


</head>
<body>

<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1 class="I18Nmsg"><%=rb.getString("PageHeader.message") %></h1>
					<!--  <h1 class="I18Nmsg">sek3r-rr,ga>2Ingr</h1> --> 
					<h1 class="I18Nmsg"><%=rb.getString("PageHeader.Adderess") %></h1>

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
					<select name="lan" id="language">
								<option value="en">English</option>
								<option value="guj">Gujarati</option>
							</select>
					
						<div class="post">
                                                    <center><p id="delete" style="color:red;font-size:20px">Delete Successfully...</p></center>
                                                    <table width="100%" border="1">
                                                        <tr class="I18NHeader">
                                                        	<th><label class="I18Nmsg"><%=rb.getString("All.name")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.std")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.year")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.address")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.view")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.edit")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.delete")%></label></th>
                                                            
                                                        </tr>

                                                    <%
                                                        HostelDatabase hd=new HostelDatabase();
                                                        String query="select stuid,name,std,Fromyear,address,lan from student where status='Active' order by std ";
                                                        int i=3;
                                                        ResultSet rs=hd.getQueryResult(query);
                                                            while(rs.next())
                                                                {
                                                                i++;
                                                                if(rs.getString("lan").equals("guj"))
                                                                {
                                                              %>
																		<script type="text/javascript">
																				$(document).ready(function() {
																					
																					$(".I18Nview<%=i%>").addClass("mytext");
																					
																				});
																			</script>
																		<% }
																				else
																				{
																			%>
																		<script type="text/javascript">
																				$(document).ready(function() {
																					
																					$(".I18Nview<%=i%>").addClass("myEngtext");
																					
																				});
																			</script>

																				<%} %>

                                                               

                                                          <tr>
                                                            <td>
                                                                <label class="I18Nview<%=i%>"><%=rs.getString(2)%></label>
                                                            </td>
                                                            <td>
                                                                <label><%=rs.getInt(3)%></label>
                                                            </td>
                                                            <td>
                                                                <%=rs.getInt(4)%>
                                                            </td>
                                                            <td>
                                                                <label class="I18Nview<%=i%>">  <%=rs.getString(5)%></label>
                                                            </td>
                                                            <td><a
											href="ViewStudent.jsp?id=<%=rs.getString(1)%>&lan=<%=rs.getString("lan")%>">View</a>
										</td>
										<td><a
											href="EditStudent.jsp?id=<%=rs.getString(1)%>&lan=<%=rs.getString("lan")%>">Edit</a>
										</td>
										<td><a
											href="DeleteStudent?id=<%=rs.getString(1)%>&lan=<%=rs.getString("lan")%>">Delete</a>
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
