package com.ray.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class editDetails
 */
@WebServlet("/editDetails")
public class editDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editDetails() {
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
		HttpSession session = request.getSession();
		PreparedStatement statement = null;

		try{ 
		
		statement=connection.prepareStatement("select*from police where station_id=?");
		statement.setString(1, id);
		ResultSet rs = statement.executeQuery();
		if(rs.next()) {
			session.setAttribute("police-stationId",rs.getString(1));
			session.setAttribute("police-stationAddress",rs.getString(2));
			session.setAttribute("police-pincode",rs.getInt(3));
			session.setAttribute("police-sho",rs.getString(4));
			connection.close();
			response.sendRedirect("./update-details.jsp");
		} 
		else {
			request.setAttribute("result", "Something went wrong..");
			RequestDispatcher rd=request.getRequestDispatcher("./police-details.jsp");
		}
		}
		catch (Exception e) {
		e.printStackTrace();
		}
		
	}



	
	}


