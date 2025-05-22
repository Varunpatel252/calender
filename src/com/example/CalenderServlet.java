package com.example;

import java.io.*;
import java.util.Calendar;
import javax.servlet.*;
import javax.servlet.http.*;

public class CalendarServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Calendar calendar = Calendar.getInstance();
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Current Date and Time:</h1>");
        out.println("<p>" + calendar.getTime().toString() + "</p>");
    }
}

