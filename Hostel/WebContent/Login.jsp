<%--
    Document   : Faculty_Home
    Created on : Apr 1, 2013, 3:38:03 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : ElegantBlue
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120108

-->
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>WELCOME TO Shree Swaminarayan Gurukul</title>
        <link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type="text/css"/>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="CSS/login.css" rel="stylesheet" type="text/css" media="screen" />
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


    </head>
    <body>
        <script type="text/javascript">
            $(document).ready(function()
            {
                

                jQuery("#invalid").hide();
            });
        </script>
        <% if (request.getParameter("error") != null) {%>
        <script type="text/javascript">
            $(document).ready(function(){
 

                $("#invalid").show();
            });
        </script>
        <%}%>
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

            <!-- end #menu -->
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="login-page-content">
                            <div id="login-content">
                                <center>
                                    <p style="font-size:20px; font-weight:bold;margin-left:10px; color:#2483A6;">

                                        <br>Login Below to access


                                    </p>
                                    <p id="invalid" style="color: red;margin-left: 10px;">Invalid UserName or Password</p>
                                    <div id="login">
                                        <form name="login" action="LoginCheck" method="post">
                                            <table>
                                                <tr>
                                                    <td class="login_font"> username:</td>
                                                    <td><input type="text" id="username" name="uid" height="40" width="30" maxlength="25" class="login_texfield" required /></td>
                                                </tr>
                                                <tr>
                                                    <td class="login_font">password:</td>
                                                    <td><input type="password" id="password"name="pid" maxlength="25" class="login_texfield" required />
                                                    </td>
                                                </tr>
                                                <tr><td></td><td><input name="submit" type="submit" value="submit" class="login_button" ></a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </form>

                                    </div>
                                </center>
                                <div style="clear: both;">&nbsp;</div>
                            </div>
                            <!-- end #content -->
                            <!-- end #sidebar -->
                        </div>
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                </div>
            </div>
            <!-- end #page -->
        </div>
        <div id="footer">
        </div>
        <!-- end #footer -->
    </body>
</html>
