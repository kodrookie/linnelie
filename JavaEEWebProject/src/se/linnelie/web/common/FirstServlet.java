package se.linnelie.web.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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
		
		//name = en sträng (en key, men unikt namn), fullName är ett objekt
		//Detta objekt vill vi sedan accessa i jsp-filen där det ska skrivas ut
		req.setAttribute("name", fullName);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/output.jsp");
		dispatcher.forward(req, resp);
	}

}
