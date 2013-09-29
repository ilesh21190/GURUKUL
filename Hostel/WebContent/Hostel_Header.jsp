<%--
    Document   : Faculty_Header
    Created on : Apr 1, 2013, 3:12:50 PM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<div id="menu-wrapper">

                <div id="menu">
				<ul>
					<li class="first">
						<a href="HostelHome.jsp?ln=en">Home</a>
                                        </li>

                                         <li class="first" id="HOD">
						<a href="SearchStudent.jsp">Search Student</a>
						
					</li>
              <!--=====================================================================================-->
                                              <li class="first">
						Manage Student
                                                <span class="down-arrow"></span>
                                                    <ul>
                                                    		<li><a href="EditStudent.jsp">Edit student</a></li>
                                                                <li><a href="DeleteStudent.jsp">Delete Student</a></li>
                                                                <li><a href="AddNewYear.jsp">Add new Year</a></li>

                                                    </ul>
                                                
					</li>
              <!--=====================================================================================-->
              <!--=====================================================================================-->
                                             <li class="first">
						Other Record
                                                <span class="down-arrow"></span>
                                                    <ul>
                                                    		<li><a href="OtherEdit.jsp">Edit Record</a></li>
                                                                <li><a href="OtherSearch.jsp">Search Record</a></li>
                                                                <li><a href="OtherAll.jsp">All Record</a></li>

                                                    </ul>

					</li>
              <!--=====================================================================================-->
              <!--=====================================================================================-->
                                              <li class="first">
						ViewBy <span class="down-arrow"></span>
						<ul>
                                                        <li>
                                                            <a href="AllStudent.jsp">
								All
                                                            </a>
							</li>

                                                        
							<li><a href="SearchByName.jsp">By Year</a></li>
							<li><a href="ViewByAddress.jsp">By Address</a></li>

						</ul>
					</li>
              <!--=====================================================================================-->


					<li><a href="Logout.jsp">Logout</a></li>

				</ul>
			</div>

	</div>
	