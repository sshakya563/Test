package com.ray.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class deletePolice
 */
@WebServlet("/deletePolice")
public class deletePolice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletePolice() {
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
		//System.out.println(id);
		JdbcConnection conn=new JdbcConnection();
		Connection connection=conn.Connect();
		PreparedStatement statement = null;

		try{ 
		
		statement=connection.prepareStatement("delete from police where station_id=?");
		statement.setString(1, id);


		statement.executeUpdate();

		connection.close();
		response.sendRedirect("./police-details.jsp");
		} catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("result", "Something went wrong..");
		RequestDispatcher rd=request.getRequestDispatcher("./police-details.jsp");
		}
		
	
	}



	}


