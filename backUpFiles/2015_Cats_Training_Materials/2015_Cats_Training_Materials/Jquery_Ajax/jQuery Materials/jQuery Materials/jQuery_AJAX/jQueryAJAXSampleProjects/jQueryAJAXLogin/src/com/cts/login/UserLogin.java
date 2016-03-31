package com.cts.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        //declare the username
        String uname = request.getParameter("username").trim();
        //declare the password
        String pwd = request.getParameter("password").trim();
        //declare message to diplay the login details 
        String message = null;

        if (uname != null && !uname.equals("") && uname.equals("admin")) {
            if (pwd != null && !pwd.equals("") && pwd.equals("admin")) {

                message = "You have successfully logged in as ADMIN";
            }else{
            	message = "Please enter correct UserName";
            }            	
        } else {
            message = "Please enter correct UserName";
        }

        displayUsername(response, message);

    }

    void displayUsername(HttpServletResponse response, String uname) throws IOException {
        PrintWriter out = response.getWriter();
        out.println(uname);
        out.close();

    }
}
