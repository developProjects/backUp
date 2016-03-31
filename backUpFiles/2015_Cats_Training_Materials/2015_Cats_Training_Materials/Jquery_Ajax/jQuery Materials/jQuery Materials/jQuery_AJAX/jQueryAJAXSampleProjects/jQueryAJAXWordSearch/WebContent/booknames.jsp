<%-- 
    Document   : Words
    Created on : Feb 24, 2009, 7:54:28 PM
    Author     : 161124
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
    <HEAD>

        <TITLE>Page1.jsp</TITLE>
    </HEAD>
    <BODY>
        <%
            String suggetsword = request.getParameter("suggestword").toLowerCase();

            String[] mySuggests = new String[]{"Ajax", "Head_First_Java", "Head_First_Servlet_and_JSP", "Ajax_in_Action", "Ajax_with_PHP", "Ajax_Bible", "Professional_Ajax ", "DotNet_Complete_Reference", "Cobal", "DB2" };

            out.println("<table width='100%' border='0' cellpadding='0' cellspacing='0'>");

            for (int i = 0; i < mySuggests.length; i++) {
                if (mySuggests[i].toLowerCase().startsWith((suggetsword.substring(0)))) {
                    out.print("<tr><td id= " + mySuggests[i] + " onmousedown='display(this)' >" + mySuggests[i] + "</td></tr>");


                }
            }

            out.println("</table>");
        %>


    </BODY>
</HTML>
