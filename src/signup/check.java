package signup;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class check
 */
@WebServlet(description = "to check database", urlPatterns = { "/check" })
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String userid=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String merchant=request.getParameter("merchant");
		String gender=request.getParameter("gender");
		int mobile=Integer.parseInt(request.getParameter("mobile"));
		int k=0;
		Connection conn=null;
		String id="SHAHARYARSHAMSHI";
		String passcode="shahbazshamshi";
		String url="jdbc:mysql://localhost/cookbook?useSSL=false";
		String redirect;
		ServletContext sc=this.getServletContext();
		try
		{

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn=DriverManager.getConnection(url, id, passcode);
			System.out.println("connected");
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		try
		{
			PreparedStatement s;
			s=conn.prepareStatement("select * from user where username =?");
			s.setString(1, userid);
			ResultSet rs=s.executeQuery();
			if(!rs.next())
			{
				k=0;
			}
			else
			{
				k++;
			}
			System.out.println(k);
			s.close();
			rs.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		if(k==0)
		{

			try {
				int zero=0;
				int z=988;
				PreparedStatement p;
				p=conn.prepareStatement("INSERT INTO user(name,username,password,merchant,gender,emailid,mobile,balance)values(?,?,?,?,?,?,?,?)");
				p.setString(1, name);
				p.setString(2, userid);
				p.setString(3,password);
				p.setString(4, merchant);
				p.setString(5, gender);
				p.setString(6,email);
				p.setInt(7, z);
				p.setInt(8,zero);
				p.executeUpdate();

				p.close();
				redirect="/signupsuccess.jsp";
				RequestDispatcher dispatcher=sc.getRequestDispatcher(redirect);
			}

			catch (SQLException e)
			{
				System.out.println("error");
			}
		}
		else
		{
			request.setAttribute("name", name);
			request.setAttribute("userid",userid);
			request.setAttribute("password", password);
			request.setAttribute("merchant", merchant);
			request.setAttribute("gender", gender);
			request.setAttribute("email", email);
			request.setAttribute("mobile",mobile);
			redirect="/confirm.jsp";
			RequestDispatcher dispatcher=sc.getRequestDispatcher(redirect);
			dispatcher.forward(request, response);

		}
		if(conn!=null)
		{
			try
			{
				conn.close();
			}
			catch(Exception e)
			{
				System.out.println("close");
			}
		}

	}

}
