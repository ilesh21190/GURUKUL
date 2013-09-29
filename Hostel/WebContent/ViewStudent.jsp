<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
	import="com.Hostel.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


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
					<h1 class="mytext">sek3r-rr,ga>2Ingr</h1>
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
								<center class="mytext">7I Svaimnaray` Skul-gurukul
									hoS3el</center>
								<center>
									<label class="mytext">sek3r-rr,ga>2Ingr fon:</label><label>(079)23245821,23221765</label>
								</center>

								<br /> <br />
								<center>
									<p id="msg" style="color: red; font-size: 20px">Insert
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
                                	<table align="right" cellspacing="20px" >
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
										<td width="500px"><label class="mytext">&#xc9;.iv&#xb7;a4IRnu>
												pu&#xbd; nam::</label></td>
										<td><bold> <label name="stuname" class="mytext"><%=rs.getString("name")%></label></bold>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xca;. 2or`:</label></td>
										<td><label><%=rs.getInt("std")%></label>

											&nbsp;&nbsp;&nbsp; <label class="mytext">&#x76;&#x38;&#x52;:</label>
										
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
										<td><label class="mytext">&#xcb;. matanu nam:</label></td>
										<td><label class="mytext" name="stumother"><%=rs.getString("mother")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xcc;. iptanu nam</label></td>
										<td><label class="myField" name="stufather" size="70"><%=rs.getString("father")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xcd;. &#x29;atI</label></td>
										<td><label class="myField" name="stucast"><%=rs.getString("stucast")%></label>
											<label class="mytext">&#xce;. pe3a &#x29;atI</label> <label
											class="myField" name="stusubcast"><%=rs.getString("subcast")%></label>
										</td>

									</tr>
									<tr>
										<td><label class="mytext">&#xcd;. 2mR</label></td>
										<td><label class="myField" name="sturegion"><%=rs.getString("region")%></label>


											<label class="mytext">&#xcf;. rai*&#xa7;yta</label> <label
											class="myField" name="stunationality"><%=rs.getString("nationality")%></label>
										</td>

									</tr>
									<tr>
										<td><label class="mytext">&#xd0;. jNm tarIq</label></td>
										<td><label name="studob"><%=rs.getString("dob")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xd1;. srnamu></label></td>
										<td><textarea class="myField" name="stuadd" cols="50"
												rows="5" disabled><%=rs.getString("address")%></textarea></td>
									</tr>
									<tr>
										<td><label class="mytext">&#xd1;. iptano Vvsay</label></td>
										<td><label name="stufatbus" class="myField" size="70"><%=rs.getString("fatherbus")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xd2;. matanu
												kam</label></td>
										<td><label name="stumotbus" class="myField" size="70"><%=rs.getString("motwork")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xc9;. 3elIfon
												n>br&#xdc; koD sa4e&#xdd;</label></td>
										<td><label  name="stutele" size="25"><%=rs.getString("stutel")%></label>
											<label class="mytext">&#xc9;&#xca;.&#xdc;mo&#xdd;</label> <label
											 name="stumo" size="25"><%=rs.getString("stumob")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xcb;. S4aink
												s>b>2Inu> nam Ane s>b>2</label></td>
										<td><label class="myField" size="70" name="sturel"><%=rs.getString("sturel")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xcc;. 3elIfon
												n>br&#xdc; koD sa4e&#xdd;</label></td>
										<td><label name="stureltel" size="25"><%=rs.getString("stutele")%></label>
											<label class="mytext">&#xc9;&#xcd;.&#xdc;mo&#xdd;</label> <label
											name="sturelmo" size="25"><%=rs.getString("sturelmob")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xcf;. 0eLle k[
												xa%aa ma AWyas kyoR</label></td>
										<td><label class="myField" size="70" name="stuschool"><%=rs.getString("stuschool")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xd0;. gya
												v*aRnI prI(aanu prI`am</label></td>
										<td><label name="stuResult"><%=rs.getString("sturesult")%></label>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xc9;&#xd1;. ba%ak ne
												ko[p` p/kar nI ibmarI ke Ael+R 0e. hoy to ivgt Aapo.</label></td>
										<td><textarea name="stuelergy" class="myField" rows="3"
												cols="50" disabled><%=rs.getString("stuelergy")%></textarea>
										</td>
									</tr>
									<tr>
										<td><label class="mytext">&#xca;&#xd2;. ivxe8
												p/v&lt;it</label></td>
										<td><textarea name="stuExtra" class="myField" rows="3"
												cols="50" disabled><%=rs.getString("stuextra")%></textarea>
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
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
	<div id="footer">
		<p>Copyright (c) 2012 Sitename.com. All rights reserved by Shree
			Swaminarayan Hostel.</p>
	</div>
	<!-- end #footer -->
</body>
</html>
