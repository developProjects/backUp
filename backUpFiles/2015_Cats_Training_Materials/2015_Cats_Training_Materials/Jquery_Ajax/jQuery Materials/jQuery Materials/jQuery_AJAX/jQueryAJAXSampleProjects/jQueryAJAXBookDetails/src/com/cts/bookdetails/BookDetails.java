/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cts.bookdetails;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BookDetails extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException,
            IOException {

        String bookName = null;
        String BookPrice = null;
        String AuthorName = null;
        String Technology = null;


        bookName = request.getParameter("bookname");

        response.setContentType("text/xml");
        if (bookName.equals("Ajax Bible")) {
            BookPrice = "500.00";
            AuthorName = "Steven Holzner";
            Technology = "Ajax";


        } else {
            if (bookName.equals("Head First Java")) {
                BookPrice = "600.00";
                AuthorName = "Kathy Sierra";
                Technology = "Java";
            } else {
                BookPrice = "NOT FOUND";
                AuthorName = "NOT FOUND";
                Technology = "NOT FOUND";

            }
        }

        PrintWriter out = response.getWriter();
        response.setContentType("text/xml");
        out.println("<bookdetails>");
        out.println("<bookprice>" + BookPrice + "</bookprice>");
        out.println("<authorname>" + AuthorName + "</authorname>");
        out.println("<technology>" + Technology + "</technology>");
        out.println("</bookdetails>");
        out.close();

    }
}
