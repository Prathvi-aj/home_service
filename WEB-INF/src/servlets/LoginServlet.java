package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.util.regex.*;

import models.*;

public class LoginServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();
		String nextPage = "login.jsp";	
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		//validation
		boolean flag = true;
		String errMsg = "";

		
		
		String eml = email.trim();
		Pattern p = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$");
		Matcher m = p.matcher(eml);
		if(!m.matches()){
			flag = false;
			errMsg = errMsg + "Invalid Email<br />";
		}
		int len = password.trim().length();
		if(len<6||len>12){
			flag = false;
			errMsg = errMsg + "Incorrect Password<br />";
		}


		if(flag){
			Users user = new Users(email,password);	
			if(user.loginUser()){
				nextPage = "profile.jsp";	
				session.setAttribute("user",user);
			}else{
				request.setAttribute("errmsg","Invalid Email or Password...");
			}
		}else{
			request.setAttribute("errmsg",errMsg);
		}		

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}