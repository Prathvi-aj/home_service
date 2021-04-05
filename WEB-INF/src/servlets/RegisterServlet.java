package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import models.*;
import java.util.regex.*;

public class RegisterServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();

		String nextPage = "index.jsp";
		String name = request.getParameter("Username");
		String email = request.getParameter("Email");
        String phone =request.getParameter("Phone");
        String address = request.getParameter("Address");
        String city = request.getParameter("city");
        String area = request.getParameter("area");
		String password = request.getParameter("Password");
		String rePassword = request.getParameter("rePassword");
        String usertype = request.getParameter("usertype");
        String service = request.getParameter("profession");
        
		boolean flag = true;
		String errMsg = "";

		if(name.trim().equals("")){
			flag = false;
			errMsg = errMsg + "Name Required<br />";
		}
		
		String eml = email.trim();
		Pattern p = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$");
		Matcher m = p.matcher(eml);
        String regex="[0-9]+";
        if(!phone.matches(regex)){
			flag = false;
			errMsg = errMsg + "Invalid Mobile Number<br />";
		}
        
		if(!m.matches()){
			flag = false;
			errMsg = errMsg + "Invalid Email<br />";
		}

		int len = password.trim().length();
		if(len<6||len>12){
			flag = false;
			errMsg = errMsg + "Incorrect Password<br />";
		}
		
		if(!password.equals(rePassword)){
			flag = false;
			errMsg = errMsg + "Password and RePassword must match<br />";
		}

		if(flag){
			Users user = new Users(name,email,phone,password,address,city,area,usertype,service);	
            if(user.registerUser()){
				nextPage = "contact.html";
			}	
		}else{
			request.setAttribute("errmsg",errMsg);
		}		

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}