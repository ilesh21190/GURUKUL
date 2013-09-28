<%-- 
    Document   : Tester
    Created on : May 29, 2013, 9:42:16 AM
    Author     : Ilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        	<style type="text/css">
		@font-face {
		font-family: 'saral';
		font-weight: normal;
		font-style: normal;
		src: url('g-saral1.ttf');
}
h1 {
    font-family: 'saral', serif;
}
.mytext
{
	font-family: 'saral', serif;
}
	</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1 class="mytext"><%=request.getParameter("tf1")%></h1>

    </body>
</html>
