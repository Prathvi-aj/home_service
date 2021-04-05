package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.util.ArrayList;

import models.*;

public class SearchServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();
        String city=request.getParameter("city");
        String area=request.getParameter("area");
        String service = request.getParameter("profession");
		String nextPage = "records.jsp";
        Users user=new Users(service,city,area);
		ArrayList<Users> users = user.collectUsers();
		
		request.setAttribute("users",users);

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}