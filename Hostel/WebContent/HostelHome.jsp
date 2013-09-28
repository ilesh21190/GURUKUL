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
                                                    <form name="registration" action="AddStudent" method="post">
                                                        <br/>
                                                        <br/>
                                                        <center><p id="msg" style="color:red;font-size:20px">Insert Successfully...</p></center>
                                                        <table width="100%">
                                                            
                                                            <tr>
                                                                <td width="500px">
                                                                    <label class="mytext">&#xc9;.iv&#xb7;a4IRnu> pu&#xbd; nam::</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="stuname" class="myField" size="70" required/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xca;. 2or`:</label>
                                                                </td>
                                                                <td>
                                                                    <select name="stustd" class="mytext"  required>
                                                                        <option value="1">&#xc9;</option>
                                                                        <option value="2">&#xca;</option>
                                                                        <option value="3">&#xcb;</option>
                                                                        <option value="4">&#xcc;</option>
                                                                        <option value="5">&#xcd;</option>
                                                                        <option value="6">&#xce;</option>
                                                                        <option value="7">&#xcf;</option>
                                                                        <option value="8">&#xd0;</option>
                                                                        <option value="9">&#xd1;</option>
                                                                        <option value="10">&#xc9;&#xc8;</option>
                                                                        <option value="11">&#xc9;&#xc9;</option>
                                                                        <option value="12">&#xc9;&#xca;</option>
                                                                    </select>
                                                                    &nbsp;&nbsp;&nbsp;
                                                                    <label class="mytext">&#x76;&#x38;&#x52;:</label>
                                                                    <input type="text" name="stuyear" class=""  required/>
                                                                </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xcb;. matanu nam:</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="myField" name="stumother" size="70"  required>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xcc;. iptanu nam</label>

                                                                </td>
                                                                <td>
                                                                    <input type="text" class="myField" name="stufather" size="70"  required/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xcd;. &#x29;atI</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="myField" name="stucast"/>
                                                                    <label class="mytext">&#xce;. pe3a &#x29;atI</label>
                                                                    <input type="text" class="myField" name="stusubcast"/>
                                                                </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xcd;. 2mR</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="myField" name="sturegion"/>
                                                                
                                                                
                                                                    <label class="mytext">&#xcf;. rai*&#xa7;yta</label>
                                                                    <input type="text" class="myField" name="stunationality"/>
                                                                </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xd0;. jNm tarIq</label>
                                                                </td>
                                                                <td>
                                                                    <input type="date" name="studob"  required/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xd1;. srnamu></label>
                                                                </td>
                                                                <td>
                                                                    <textarea class="myField" name="stuadd" cols="50" rows="5"></textarea>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xd1;. iptano Vvsay</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="stufatbus" class="myField" size="70"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xd2;. matanu kam</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="stumotbus" class="myField" size="70"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xc9;.  3elIfon n>br&#xdc; koD sa4e&#xdd;</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="stutele" size="25" />
                                                                    <label class="mytext".>&#xc9;&#xca;.&#xdc;mo&#xdd;</label>
                                                                    <input type="text"  name="stumo" size="25"  required/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xcb;. S4aink s>b>2Inu> nam Ane s>b>2</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="myField" size="70" name="sturel"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xcc;.  3elIfon n>br&#xdc; koD sa4e&#xdd;</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="stureltel" size="25" />
                                                                    <label class="mytext">&#xc9;&#xcd;.&#xdc;mo&#xdd;</label>
                                                                    <input type="text"  name="sturelmo" size="25"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xcf;. 0eLle k[ xa%aa ma AWyas kyoR</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text" class="myField" size="70" name="stuschool"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xd0;. gya v*aRnI prI(aanu prI`am</label>
                                                                </td>
                                                                <td>
                                                                    <input type="text"  name="stuResult"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xc9;&#xd1;. ba%ak ne ko[p` p/kar nI ibmarI ke Ael+R 0e. hoy to ivgt Aapo.</label>
                                                                </td>
                                                                <td>
                                                                    <textarea name="stuelergy" class="myField" rows="3" cols="50"></textarea>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="mytext">&#xca;&#xd2;. ivxe8 p/v&lt;it</label>
                                                                </td>
                                                                <td>
                                                                    <textarea name="stuExtra" class="myField" rows="3" cols="50"></textarea>
                                                                </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td>

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
