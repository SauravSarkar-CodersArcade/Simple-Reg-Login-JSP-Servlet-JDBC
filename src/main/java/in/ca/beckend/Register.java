package in.ca.beckend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/regForm")
public class Register extends HttpServlet{
	private final String url = "jdbc:mysql://localhost:3306/register_user";
	private final String username = "root";
	private final String password = "1234";
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		String gender = req.getParameter("gender");
		String currentCity = req.getParameter("city"); 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, username, password);
			
			PreparedStatement ps = connection.prepareStatement("InSERT INTO register VALUES (?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, currentCity);
			
			int count = ps.executeUpdate();
			if(count > 0) {
				resp.setContentType("text/html");
				out.print("<h3 style='color:green; background-color:white; text-align:center;' > User Registered Successfully...!!!!</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
				
			}else {
				resp.setContentType("text/html");
				out.print("<h3 style='color:red; background-color:white; text-align:center;'> User Not Registered due to some error...!!!!</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red; background-color:white; text-align:center;'>"+e.getMessage()+"</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
		}
	}
}
