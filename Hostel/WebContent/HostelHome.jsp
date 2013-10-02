<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page import="java.util.ResourceBundle,java.util.*"%>
<%@page import="java.util.Locale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<%String ln = request.getParameter("ln"); %>
<script type="text/javascript">
	$(document).ready(function() {

		jQuery("#msg").hide();
		var ln1 = "<%=ln%>";
		<%-- $("#language option:contains('<%=ln%>')").attr('selected', 'selected'); --%>
		$('#language').val(ln1).attr("selected", "selected");
		$( "#language").change(function() {
			 
				var lan = $( "select option:selected" ).val();
				window.location.href="/Hostel/HostelHome.jsp?ln="+lan;
				
		});
});
	
</script>
<%
	if (request.getParameter("msg") != null) {
%>
<script type="text/javascript">
	$(document).ready(function() {

		$("#msg").show();
		
	});
	
	</script>
<%
	}
%>

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

</head>
<body>

	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header">


				<div id="logo">
				<!-- <h1>7I Svaimnaray` Skul-gurukul hoS3el</h1> -->
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
							<select name= "lan" id="language">
								<option value="en">English</option>
								<option value="guj">Gujarati</option>
							</select>
							<div class="post">
								<center class="I18Nmsg"><%=rb.getString("PageHeader.message") %></center>
								<center>
									<label class="I18Nmsg"><%=rb.getString("PageHeader.phone") %></label><label>(079)23245821,23221765</label>
								</center>
								<form name="registration" action="AddStudent" method="post">
									<br /> <br />
									<center>
										<p id="msg" style="color: red; font-size: 20px">Insert
											Successfully...</p>
									</center>
									<table width="100%">
											
										<tr>
											<td width="500px"><label class="I18Nmsg"><%=rb.getString("Student.name") %></label></td>
											<td><input type="text" name="stuname" class="I18NField"
												size="70" required /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("Student.std") %></label></td>
											<td><select name="stustd" class="I18Nmsg" required>
													<option value="1"><%=rb.getString("std.first") %></option>
													<option value="2"><%=rb.getString("std.second") %></option>
													<option value="3"><%=rb.getString("std.third") %></option>
													<option value="4"><%=rb.getString("std.four") %></option>
													<option value="5"><%=rb.getString("std.five") %></option>
													<option value="6"><%=rb.getString("std.six") %></option>
													<option value="7"><%=rb.getString("std.seven") %></option>
													<option value="8"><%=rb.getString("std.eight") %></option>
													<option value="9"><%=rb.getString("std.nine") %></option>
													<option value="10"><%=rb.getString("std.ten") %></option>
													<option value="11"><%=rb.getString("std.eleven") %></option>
													<option value="12"><%=rb.getString("std.twelve") %></option>
											</select> &nbsp;&nbsp;&nbsp; <label class="I18Nmsg"><%=rb.getString("stu.year")%></label>
												<input type="text" name="stuyear" class="" required /></td>

										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.mother") %></label></td>
											<td><input type="text" class="I18NField" name="stumother"
												size="70" required></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.father") %></label></td>
											<td><input type="text" class="I18NField" name="stufather"
												size="70" required /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.cast") %></label></td>
											<td><input type="text" class="I18NField" name="stucast" />
												<label class="I18Nmsg"><%=rb.getString("stu.subcast") %></label> <input
												type="text" class="I18NField" name="stusubcast" /></td>

										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.region") %></label></td>
											<td><input type="text" class="I18NField" name="sturegion" />


												<label class="I18Nmsg"><%=rb.getString("stu.nationality") %></label> <input
												type="text" class="I18NField" name="stunationality" /></td>

										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.birthday") %></label></td>
											<td><input type="date" name="studob" required /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.address") %></label></td>
											<td><textarea class="I18NField" name="stuadd" cols="50"
													rows="5"></textarea></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.fatherbusiness") %></label></td>
											<td><input type="text" name="stufatbus" class="I18NField"
												size="70" /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.motherbusiness") %></label></td>
											<td><input type="text" name="stumotbus" class="I18NField"
												size="70" /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.phone") %></label></td>
											<td><input type="text" name="stutele" size="25" /> <label
												class="I18Nmsg"><%=rb.getString("stu.mo") %></label> <input
												type="text" name="stumo" size="20" required /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.relative") %></label></td>
											<td><input type="text" class="I18NField" size="70"
												name="sturel" /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.relativephone") %></label></td>
											<td><input type="text" name="stureltel" size="25" /> <label
												class="I18Nmsg"><%=rb.getString("stu.relativemo") %></label> 
												<input type="text" name="sturelmo" size="20" /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.lastschool") %></label></td>
											<td><input type="text" class="I18NField" size="70"
												name="stuschool" /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.lastresult") %></label></td>
											<td><input type="text" name="stuResult" /></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.elergy") %></label></td>
											<td><textarea name="stuelergy" class="I18NField" rows="3"
													cols="50"></textarea></td>
										</tr>
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.activity") %> </label></td>
											<td><textarea name="stuExtra" class="I18NField" rows="3"
													cols="50"></textarea></td>
										</tr>
										<tr>
											<td>
											<input type="hidden" value="<%=ln%>" name = "language"/>
											</td>
										</tr>
	
										<tr>
											<td></td>
										</tr>
	
										<tr>
											<td><label class="I18Nmsg"><%=rb.getString("stu.sign") %> </label>........................</td>
											<%Date d= new Date(); %>
											<td><label class="I18Nmsg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rb.getString("reg.date") %></label><%=d.toLocaleString()%></td>
										</tr>	
										<tr>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td><input type="submit" value="Register"
												class="login_button" /> <input type="Reset" value="Reset"
												class="login_button" /></td>
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
		<p>Copyright (c) 2012 Sitename.com. All rights reserved by Shree
			Swaminarayan Hostel.</p>
	</div>
	<!-- end #footer -->
</body>
</html>
