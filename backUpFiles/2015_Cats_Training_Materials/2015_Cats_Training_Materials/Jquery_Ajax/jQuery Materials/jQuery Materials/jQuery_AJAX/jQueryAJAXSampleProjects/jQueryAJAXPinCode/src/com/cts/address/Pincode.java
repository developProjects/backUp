package com.cts.address;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Pincode extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException,
            IOException {


        String address = null;
        String pincode = request.getParameter("pincode");

        response.setContentType("text/xml");
        if (pincode.equals("1000")) {
            address = "Street # 103 ,WhiteField , NY, US ";


        } else if (pincode.equals("2000")) {
            address = "Street # 103 , RedField, DC, US";
        } else {
            address = "No matching Data found. Please enter the correct pin code value";

        }

        PrintWriter out = response.getWriter();

        response.setContentType("html/text");

        out.println(address);



    }
}
