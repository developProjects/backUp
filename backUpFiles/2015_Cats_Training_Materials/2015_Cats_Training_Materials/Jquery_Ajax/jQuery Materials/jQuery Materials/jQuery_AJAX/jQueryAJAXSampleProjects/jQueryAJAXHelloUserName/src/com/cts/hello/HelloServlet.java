package com.cts.hello;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = null;
        response.setContentType("text/html");
        uname = request.getParameter("username");

        if (uname != null && !uname.equals(" ")) {
            displayUsername(response, uname);
        }


    }

    void displayUsername(HttpServletResponse response, String uname) throws IOException {
        PrintWriter out = response.getWriter();
        Date d = new Date();
        out.println("Hello " + uname);
        out.println("<br><br><br> Current Date and Time  : " + d);
        out.close();

    }
}