<%@ page import="java.util.ArrayList,models.Users" %>

<!doctype html>
<html lang="en">
 <head>
  <title>:: Login Page ::</title>
 </head>
 <body>
  <% ArrayList<Users> users = (ArrayList)request.getAttribute("users"); %>
  
  <table border="1" width="90%" align="center">
  <% for(Users user :users){ %>
	<tr>
		<td><%= user.getUser_Id() %></td>
		<td><%= user.getName() %></td>
		<td><%= user.geteMail() %></td>
		<td><%= user.getPassword() %></td>
		<td><%= user.getPhone() %></td>
		<td><%= user.getAddress_Id() %></td>
		<td><%= user.getUser_Type_Id() %></td>
		<td><%= user.getService() %></td>
	</tr>
  <% } %>
  </table>
 </body>
</html>
