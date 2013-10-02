<%--
    Document   : SearchStudent
    Created on : 22 Jun, 2013, 4:46:39 PM
    Author     : Sony
--%>

<%--
	AddNewYear.jsp
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
	import="java.util.*"%>
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
					alignment: 'center',
					mode: 'fade',
					offsetY: -13
				});
			});
		</script>
<%
	String ln = request.getParameter("ln");
%>
<script type="text/javascript">
	$(document).ready(function() {

		jQuery("#msg").hide();
		var ln1 = "<%=ln%>";
		<%-- $("#language option:contains('<%=ln%>')").attr('selected', 'selected'); --%>
		$('#language').val(ln1).attr("selected", "selected");
		$( "#language").change(function() {
			 
				var ln = $( "select option:selected" ).val();
				window.location.href="/Hostel/AddNewYear.jsp?ln="+ln;
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
	ResourceBundle rb = ResourceBundle.getBundle("ApplicationResource",l);
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
                    $(document).ready(function()
                    {


                           jQuery("#msg").hide();
                    });
                    </script>
<%
	if (request.getParameter("msg") != null) {
%>
<script type="text/javascript">
  $(document).ready(function(){


   $("#msg").show();
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
									<form name="searchme" action="Forward.jsp?ln="+ln>
										<table>
											<tr>
												<td><input type="radio" name="search" value="std"
													required /><label class="I18Nmsg"><%=rb.getString("search.std")%></label> <input
													type="radio" name="search" value="year" required /><label
													class="I18Nmsg"><%=rb.getString("search.year")%></label></td>
												<td>&nbsp;&nbsp;&nbsp;</td>
												<td><input type="text" name="searchof" class="I18NField" required /></td>
												<td><input type="submit" value="<%=rb.getString("search.button")%>" class="I18Nmsg" />
												<input type="hidden" name="lan" value="<%=ln%>"/>
												</td>
											</tr>
										</table>
									</form>
								</fieldset>

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
