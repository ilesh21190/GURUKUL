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

	printDivCSS = new String ('<link href="CSS/style.css" rel="stylesheet" type="text/css" />')
	function printDiv(divId) {
    window.frames["print_frame"].document.body.innerHTML=printDivCSS + document.getElementById(divId).innerHTML
    window.frames["print_frame"].window.focus()
    window.frames["print_frame"].window.print()
}
</script>

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

<% String ln = request.getParameter("lan"); %>
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
							<div class="post">
											<center class="I18Nmsg"><%=rb.getString("PageHeader.message") %></center>
								<center>
									<label class="I18Nmsg"><%=rb.getString("PageHeader.phone") %></label><label>(079)23245821,23221765</label>
								</center>
					
								<br /> <br />
								<center>
									<p id="msg" style="color: red; font-size: 10px">Insert
										Successfully...</p>
								</center>
								

								<%
                                                        String id=request.getParameter("id");
                                                        HostelDatabase hd=new HostelDatabase();
                                                        ResultSet rs=hd.getQueryResult("select * from student where stuid='"+id+"'");
                                %>
                                <%
                                					ResultSet rs2= hd.getQueryResult("select * from student where stuid='"+id+"'");
                                					while(rs2.next())
                                					{
                                %>
                                	<table align="right" cellspacing="10px" >
                						  <tr>
                                            <td>
                                              <a href="MyGoal.jsp?id=<%=id%>" > <img src="/Hostel/ViewPhoto?id=<%=id%>&type=student" height="100" width="100" id="student" border="1" alt="No Photo Available"/></a>
                                            </td>
                
                                        <td>
                                          <a href="MyGoal.jsp?id=<%=id%>" >  <img src="/Hostel/ViewPhoto?id=<%=id%>&type=Mother" height="100" width="100" id="mother"border="1" alt="No Photo Available" style="background-color: gray;"/></a>
                                        </td>
                
                                        <td>
                                           <a href="MyGoal.jsp?id=<%=id%>" > <img src="/Hostel/ViewPhoto?id=<%=id%>&type=Father" height="100" width="100" id="father"border="1" alt="No Photo Available"/></a>
                                        </td>
                                       </tr>
    
                                	</table>
                                <%} %>
                                <%                         
                                                        while(rs.next())
                                                        {
                                                    %>
								<table width="100%">

									<tr>
										<td width="500px"><label class="I18Nmsg"><%=rb.getString("Student.name") %></label></td>
										<td><bold> <label name="stuname" class="I18Nmsg"><%=rs.getString("name")%></label></bold>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("Student.std") %></label></td>
										<td><label><b><%=rs.getInt("std")%></b></label>

											&nbsp;&nbsp;&nbsp; <label class="I18Nmsg"><%=rb.getString("stu.year")%></label>
										
											<% String query2="select (nextyear) from studentyear where studentid='"+id+"'";
												System.out.println(query2);
												ResultSet rsyear= hd.getQueryResult(query2);
												while(rsyear.next()){%>
										<b>	<label name="stuyear">
											<%=rsyear.getInt(1) %>
											<%}%>
											
										<%-- 		<% for(int i=rs.getInt("Fromyear");i<=rs.getInt("toYear");i++){%><%=i%>
												<%}%>
										 --%></label></td>

									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.mother") %></label></td>
										<td><label class="I18Nmsg" name="stumother"><%=rs.getString("mother")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.father") %></label></td>
										<td><label class="I18Nmsg" name="stufather" size="70"><%=rs.getString("father")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.cast") %></label></td>
										<td><label class="I18Nmsg" name="stucast"><%=rs.getString("stucast")%></label>
											<label class="I18Nmsg"><%=rb.getString("stu.subcast") %></label> <label
											class="I18Nmsg" name="stusubcast"><%=rs.getString("subcast")%></label>
										</td>

									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.region") %></label></td>
										<td><label class="I18Nmsg" name="sturegion"><%=rs.getString("region")%></label>


											<label class="I18Nmsg"><%=rb.getString("stu.nationality") %></label>
											 <label
											class="I18Nmsg" name="stunationality"><%=rs.getString("nationality")%></label>
										</td>

									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.birthday") %></label></td>
										<td><label name="studob"><%=rs.getString("dob")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.address") %></label></td>
										<td><textarea class="I18Nmsg" name="stuadd" cols="50"
												rows="5" disabled><%=rs.getString("address")%></textarea></td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.fatherbusiness") %></label></td>
										<td><label name="stufatbus" class="I18Nmsg" size="70"><%=rs.getString("fatherbus")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.motherbusiness") %></label></td>
										<td><label name="stumotbus" class="I18Nmsg" size="70"><%=rs.getString("motwork")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.phone") %></label></td>
										<td><label  name="stutele" size="25"><%=rs.getString("stutel")%></label>
											<label
												class="I18Nmsg"><%=rb.getString("stu.mo") %></label>  <label
											 name="stumo" size="25"><%=rs.getString("stumob")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.relative") %></label></td>
										<td><label class="I18Nmsg" size="70" name="sturel"><%=rs.getString("sturel")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.relativephone") %></label></td>
										<td><label name="stureltel" size="25"><%=rs.getString("stutele")%></label>
											<label class="I18Nmsg"><%=rb.getString("stu.relativemo") %></label> <label
											name="sturelmo" size="25"><%=rs.getString("sturelmob")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.lastschool") %></label></td>
										<td><label class="I18Nmsg" size="70" name="stuschool"><%=rs.getString("stuschool")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.lastresult") %></label></td>
										<td><label name="stuResult"><%=rs.getString("sturesult")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.elergy") %></label></td>
										<td><textarea name="stuelergy" class="I18Nmsg" rows="3"
												cols="50" disabled><%=rs.getString("stuelergy")%></textarea>
										</td>
									</tr>
									<tr>
										<td><label class="I18Nmsg"><%=rb.getString("stu.activity") %> </label></td>
										<td><textarea name="stuExtra" class="I18Nmsg" rows="3"
												cols="50" disabled><%=rs.getString("stuextra")%></textarea>
										</td>
									</tr>
									<tr>
									    <td><iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe></td>td>
									</tr>
										<td></td>
										<td><input type = "button" class="login_button" value="print" onClick = "printDiv('page')"/></td>
									</tr>
								</table>
								<%}%>

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
	
	<!-- end #footer -->
</body>
</html>
