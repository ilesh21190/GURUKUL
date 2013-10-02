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

<%@page contentType="text/html" pageEncoding="UTF-8"
	import="com.Hostel.*,java.sql.*,java.util.*"%>
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
<title>WELCOME TO Shree Swaminarayan Hostel</title>
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="JS/jquery.dropotron-1.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			alignment : 'center',
			mode : 'fade',
			offsetY : -13
		});
	});
</script>
<%
	String ln = request.getParameter("lan");
	String by = request.getParameter("search");
	int value = Integer.parseInt(request.getParameter("searchof"));
%>

<script type="text/javascript">
	$(document).ready(function() {
		
		jQuery("#msg").hide();
		var ln1 = "<%=ln%>";
		
		<%-- $("#language option:contains('<%=ln%>')").attr('selected', 'selected'); --%>
		$('#language').val(ln1).attr("selected", "selected");
		$( "#language").change(function() {
				 
				var ln1 = $( "select option:selected" ).val();
				
				window.location.href="/Hostel/Forward.jsp?lan="+ln1+"&search=<%=by%>&searchof=<%=value%>";
		});
});
	
</script>

<script type="text/javascript">
	$(document).ready(function() {

		jQuery("#msg").hide();
	});
</script>

<%
	Locale l = new Locale(ln);
	ResourceBundle rb = ResourceBundle.getBundle("ApplicationResource",
			l);
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
	} else {
%>
<script type="text/javascript">
	$(document).ready(function() {

		$(".I18Nmsg").addClass("myEngtext");
		$(".I18NField").removeClass("myField");
	});
</script>
<%
	}
%>

<script type="text/javascript">
	function CheckMe() {
		alert(document.searchme.searchby.value);

	}
</script>

</head>
<body>

	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header">

				<div id="logo">
					<!-- <h1>7I Svaimnaray` Skul-gurukul hoS3el</h1> -->
					<h1 class="I18Nmsg"><%=rb.getString("PageHeader.message")%></h1>
					<!--  <h1 class="I18Nmsg">sek3r-rr,ga>2Ingr</h1> -->
					<h1 class="I18Nmsg"><%=rb.getString("PageHeader.Adderess")%></h1>
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
								<center class="I18Nmsg"><%=rb.getString("PageHeader.message")%></center>
								<center>
									<label class="I18Nmsg"><%=rb.getString("PageHeader.phone")%></label><label>(079)23245821,23221765</label>
								</center>
									<fieldset>
									<legend class="I18Nmsg"><%=rb.getString("search.label")%></legend>
									<form name="searchme" action="Forward.jsp">
										<table>
											<tr>
												<td><input type="radio" name="search" value="std"
													required /><label class="I18Nmsg"><%=rb.getString("search.std")%></label> <input
													type="radio" name="search" value="year" required /><label
													class="I18Nmsg"><%=rb.getString("search.year")%></label></td>
												<td>&nbsp;&nbsp;&nbsp;</td>
												<td><input type="text" name="searchof" required /></td>
												<td><input type="submit" value="<%=rb.getString("search.button")%>" class="I18Nmsg" />
												<input type="hidden" name="lan" value="<%=ln%>"/>
												</td>
											</tr>
										</table>
									</form>
								</fieldset>

								<%
									
									System.out.println(by + ":" + value);
									String query = null;
									if (by.equals("std")) {
										query = "select stuid,MIN(name),MAX(std),MIN(dob),max(nextyear),lan from student,studentyear  where "
												+ by
												+ "="
												+ value
												+ " and status='Active' and student.stuid=studentyear.studentid group by stuid,lan";
										System.out.println(query);
									} else {
										query = "select stuid,MIN(name),MAX(std),MIN(dob),max(nextyear),lan from student s,studentyear sy where s.stuid=sy.studentid and sy.nextyear="
												+ value + " and s.status='Active' group by stuid,lan";
										System.out.println(query);
									}
									System.out.println(query);
									HostelDatabase hd = new HostelDatabase();
									ResultSet rs = hd.getQueryResult(query);
									if (rs.first()) {
								%>
								<br /> <br />
								<center>
									<label id="msg" style="color: red"></label>
								</center>
								<center>
									<label style="color: red; font-size: 20px;"><%=by%>&nbsp;&nbsp;<%=value%></label>
								</center>
								<br />
								<form name="forward" action="UpdateYear.jsp" method="post">
									`
									<table width="100%" border="1">
										<tr class="I18NHeader">
											<th></th>
											<label class="I18Nmsg"><%=rb.getString("All.name")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.std")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.std")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.year")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.date")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.view")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.edit")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.delete")%></label></th>

										</tr>
										<%
											rs.beforeFirst();
											int i=0;
												while (rs.next()) {
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
											<td><input type="checkbox" name="checkme"
												value="<%=rs.getString(1)%>" /></td>
											<td><label class="I18Nview<%=i%>"><%=rs.getString(2)%></label></td>
											<td><label><%=rs.getInt(3)%></label></td>
											<td><%=rs.getString(4)%></td>
											<td><label><%=rs.getInt(5)%></label></td>

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

										</tr>

										<%
											}
										%>
										<tr style="border: white">
											<td><label class="mytext">nvu v8R</label></td>
											<td>
												<center>
													<input type="text" name="newyear" required />
												</center>
											</td>
											<td><input type="submit" class="login_button"
												style="height: 30px; width: 80px; margin-top: 10px"
												value="update" /></td>
										</tr>
									</table>

								</form>
								<%
									} else {
								%>
								<br /> <br /> <label class="mytext" style="color: red">frI
									4I xo6o</label>
								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end #page -->
	</div>
	<!-- end #page -->
	</div>
	<div id="footer">
		<p>Copyright (c) 2012 Sitename.com. All rights reserved by Shree
			Swaminarayan Hostel.</p>
	</div>
	<!-- end #footer -->
</body>
</html>
