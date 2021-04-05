package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.util.ArrayList;

import models.*;

public class FServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();
        String service = "Painter";
		String nextPage = "painter.jsp";
        Users user=new Users(service);
		ArrayList<Users> users = user.collectWorkers();
		
		request.setAttribute("users",users);

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}