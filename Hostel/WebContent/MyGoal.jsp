<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*" contentType="text/HTML"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title></title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="webcam.js"></script>
        <script type="text/javascript" src="jquery.js"></script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="CSS/login.css" rel="stylesheet" type="text/css" media="screen" />
        <%
            String stuid = request.getParameter("id");
        %>
        <script type="text/javascript">
            var phototype;
            $(document).ready(function() {
                $("#MyGoal").hide();
                //  $("#showAll").click().show();
            });
            function showWebcame(type)
            {
                $("#MyGoal").show();
                // alert("Inside");
                //alert(type);
                phototype=type;
                webcam.set_api_url( 'PictureCaptureServlet?id=<%=stuid%>&type='+type);
                webcam.set_quality( 90 ); // JPEG quality (1 - 100)
                webcam.set_shutter_sound( true ); // play shutter click sound
                document.write( webcam.get_html(320, 240) );
                webcam.set_hook( 'onComplete', 'my_completion_handler' );
                //document.open("Display.html");
            }
            function take_snapshot() {
                // take snapshot and upload to server
                //document.getElementById('upload_results').innerHTML =
                //	'<h1>Uploading...</h1>';
                // document.write("Uper");
                webcam.snap();
                //     alert("Fix");
                // document.write("Below");
                //document.open("Display.html");
                //window.open("Di    splay.jsp","_parent");
            
               

            }

            function my_completion_handler(msg) {
                // extract URL out of PHP output
                /* if (msg.match(/(http\:\/\/\S+)/)) {
                    var image_url = RegExp.$1;
                    // show JPEG image in page
                    document.getElementById('upload_results').innerHTML =
                        '<h1>Upload Successful!</h1>' +
                        '<h3>JPEG URL: ' + image_url + '</h3>' +
                        '<img src="' + image_url + '">';

                    // reset camera for another shot
                    webcam.reset();
                }
                else alert("Java Error: " + msg);
            }*/
                window.open("MyGoal.jsp?id=<%=stuid%>",'_top');
            }
        </script>
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
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="login-page-content">
                            <div id="login-content">
                                <div id="login">
                                    <div id="MyGoal">
                                    </div>

                                    <table cellspacing="20px">
                                        <tr>
                                            <td align="center">
                                                <input type="button" id="ShowAll" value="Student" onclick="showWebcame('student')" class="login_button"/>
                                            </td>
                                            <td align="center">
                                                <input type="button" id="ShowMother" value="Mother" onclick="showWebcame('Mother')" class="login_button"/>
                                            </td>
                                            <td align="center">
                                                <input type="button" id="ShowFather" value="Father" onclick="showWebcame('Father')"class="login_button"/>
                                            </td>

                                            
                                        </tr>
                
                
                                       
                                        <tr>
                                            <td>
                                                <img src="/Hostel/ViewPhoto?id=<%=stuid%>&type=student" height="200" width="200" id="student" alt="No Photo Available"/>
                                            </td>
                
                                        <td>
                                            <img src="/Hostel/ViewPhoto?id=<%=stuid%>&type=Mother" height="200" width="200" id="mother" alt="No Photo Available"/>
                                        </td>
                
                                        <td>
                                            <img src="/Hostel/ViewPhoto?id=<%=stuid%>&type=Father" height="200" width="200" id="father" alt="No Photo Available"/>
                                        </td>
                                       </tr>
    
    
										<tr>
											<td>
											</td>
											<td></td>
											<td><a href="ViewStudent.jsp?id=<%=stuid%>"><input type="button" Value="Finish" class="login_button"/></a></div></td>
										</tr>
                                    </table>
                                                                    <!-- end #content -->
                                <!-- end #sidebar -->
                            </div>
                            <div style="clear: both;">&nbsp;</div>
                           
                        </div>
                        
                    </div>
                    
                </div>
                <!-- end #page -->
            </div>
            
        </div>
        <div id="footer">
        </div>
    </body>
</html>
