package com.ray.UserValidationController;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class RejectUser
 */
@WebServlet("/RejectUser")
public class RejectUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RejectUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = (String) request.getParameter("clickid");
		JdbcConnection conn=new JdbcConnection();
		Connection connection=conn.Connect();
		PreparedStatement statement = null;

		try{ 

		statement=connection.prepareStatement("update user set status= ? where id_card_no = ?");
		statement.setString(1, "Rejected");
		statement.setString(2, id);


		statement.executeUpdate();

		connection.close();
		response.sendRedirect("./user-validation.jsp");
		return;
		} catch (Exception e) {
		e.printStackTrace();
		}
		response.sendRedirect("./user-validation.jsp");
		return;
	
	}

}
