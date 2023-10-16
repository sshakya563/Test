package com.ray.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * Servlet implementation class updateDetails
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
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
		//System.out.println(id);
		String stationid = request.getParameter("stationId");
		String add = request.getParameter("stationAddress");
		String pincode= request.getParameter("pinCode");
		String sho = request.getParameter("shoName");
		JdbcConnection conn=new JdbcConnection();
		Connection connection=conn.Connect();
		HttpSession session = request.getSession();
		PreparedStatement statement = null;
		

		try{ 
		
		statement=connection.prepareStatement("update police set address=?, pincode=?, sho_name=? where station_id=?");
		statement.setString(1, add);
		statement.setString(2, pincode);
		statement.setString(3, sho);
		statement.setString(4, stationid);
		statement.executeUpdate();
		connection.close();
		response.sendRedirect("./police-details.jsp");
		}
		catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("result", "Something went wrong..");
		RequestDispatcher rd=request.getRequestDispatcher("./update-details.jsp");
		}
		
	}



	}


