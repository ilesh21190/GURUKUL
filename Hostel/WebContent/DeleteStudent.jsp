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

<title>WELCOME TO Shree Swaminarayan Gurukul</title>
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="JS/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="JS/jquery.dropotron-1.0.js"></script>
<script type="text/javascript">
var i=0;
function SelectAll()
{
	
	if(i==1)
		{
			//alert("Hello");
				i=0;
				$(".select").removeAttr("checked");
		}
	else
		{
			i=1;
			$(".select").attr("checked","checked");
		}
}

	$(function() {
		$('#menu > ul').dropotron({
			alignment : 'center',
			mode : 'fade',
			offsetY : -13
		});
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
				window.location.href="/Hostel/DeleteStudent.jsp?ln="+lan;
				
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


<script type="text/javascript">
	$(document).ready(function() {

		jQuery("#delete").hide();
	});
</script>
<%
	if (request.getParameter("delete") != null) {
%>
<script type="text/javascript">
	$(document).ready(function() {

		$("#delete").show();
		
	});
</script>
<%
	}
%>


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
							<%int i = 0; %>
								<center>
									<p id="delete" style="color: red; font-size: 20px">Delete
										Successfully...</p>
								</center>
								<form action="/Hostel/DeleteSelected" method="post">
									<table width="100%" border="1">
										<tr class="I18NHeader">
											<th align="left"><label><input type="checkbox" name="selectAll" id="main" onChange="SelectAll()" id="c1"/></label></th>
											<th><label class="I18Nmsg"><%=rb.getString("All.name")%></label></th>
											
																<th><label class="I18Nmsg"><%=rb.getString("All.std")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.year")%></label></th>
																<th><label class="I18Nmsg"><%=rb.getString("All.address")%></label></th>
																
																
										</tr>
										
										<%
											HostelDatabase hd = new HostelDatabase();
											String query = "select id,name,std,Fromyear,address,stuid,lan from student where status='Active' order by std ";
											
											ResultSet rs = hd.getQueryResult(query);
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
											<td><input type="checkbox" name="delete"
												value="<%=rs.getString("stuid") %>"  class="select"/></td>
											<td><label class="I18Nview<%=i%>"><%=rs.getString(2)%></label></td>
											<td><label><%=rs.getInt(3)%></label></td>
											<td><%=rs.getInt(4)%></td>
											<td><label class="I18Nview<%=i%>"> <%=rs.getString(5)%></label>
											</td>

										</tr>

										<%
											}
										%>
									</table>
									<table border="0">
										<tr>
											<td></td>
											<td></td>
											<td>
												<input type="hidden" name="delete" value="###"/>
											</td>
											<td><input type="submit" value="DeleteStudent"
												class="login_button" style="height: 40px; width: 110px" /></td>
											<td></td>
										</tr>
										
									</table>
								</form>
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
		<p>Copyright (c) 2012 Sitename.com. All rights reserved Shree
			Swaminarayan Hostel</p>
	</div>
	<!-- end #footer -->
</body>
</html>
