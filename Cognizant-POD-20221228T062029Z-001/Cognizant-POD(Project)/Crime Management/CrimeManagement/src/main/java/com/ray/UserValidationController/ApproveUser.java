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
 * Servlet implementation class ApproveUser
 */
@WebServlet("/ApproveUser")
public class ApproveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApproveUser() {
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
		//System.out.println("inside controller");
		String id = (String) request.getParameter("clickid");
		//System.out.println(id);
		JdbcConnection conn=new JdbcConnection();
		Connection connection=conn.Connect();
		PreparedStatement statement = null;

		try{ 
		statement=connection.prepareStatement("update user set status= ? where id_card_no = ?");
		statement.setString(1, "Approved");
		statement.setString(2, id);


		statement.executeUpdate();

		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		response.sendRedirect("./user-validation.jsp");
	}

}
