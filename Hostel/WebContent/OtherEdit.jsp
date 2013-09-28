<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
                                                    <form name="registration" action="OtherEdit" method="post">
                                                        <br/>
                                                        <br/>
                                                        <center><p id="msg" style="color:red;font-size:20px"><%=request.getParameter("msg") %></p></center>
                                                        <table width="100%">
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">Vyikt ivxe8:</label>
                                                                </td>
                                                                <td>
                                                                    <select name="OtherType" class="mytext"  required>
                                                                        <option value="s>t">s>t</option>
                                                                        <option value="hirwkt">hirwkt</option>
                                                                        <option value="ANy">ANy</option>
                                                                        
                                                                    </select>
                                                                    &nbsp;&nbsp;&nbsp;
                                                                    
                                                                </td>
                                                                
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td width="300px">
                                                                    <label class="mytext"> nam::</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="Othername" class="myField" size="50" required/>
                                                                </td>
                                                            </tr>
                                                                                                           <tr>
                                                                <td>
                                                                    <label class="mytext">srnamu></label>
                                                                </td>
                                                                <td>
                                                                    <textarea class="myField" name="Otheradd" cols="55" rows="5" required></textarea>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">Fon N>br</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="OtherMob"  size="70" required/>
                                                                </td>
                                                            </tr>
                                                           
             
                                                            <tr>
                                                                <td>
                                                                    
                                                                </td>
                                                                <td>
                                                                    <input type="submit" value="Register" class="login_button"/>
                                                                    <input type="Reset" value="Reset" class="login_button"/>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </form>
                                                    
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
