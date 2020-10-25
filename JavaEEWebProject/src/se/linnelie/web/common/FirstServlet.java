package se.linnelie.web.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("fname");
		String lastName = req.getParameter("lname");
		String fullName = firstName + " " + lastName;
		PrintWriter writer = resp.getWriter();
		writer.println("<html><body><h1>Ditt namn " + fullName + " skrivs här ut som titel.</html></body></h1>");
		writer.println("Utan formatering ser det ut såhär: " + fullName);
	}

}
