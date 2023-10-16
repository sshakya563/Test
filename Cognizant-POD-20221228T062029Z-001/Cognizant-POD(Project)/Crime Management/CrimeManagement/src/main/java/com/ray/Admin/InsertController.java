package com.ray.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class addNew
 */
@WebServlet("/InsertController")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
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
		String stationid = request.getParameter("station-Id");
		String add = request.getParameter("station-address");
		String pincode= request.getParameter("station-pinCode");
		String sho = request.getParameter("station-shoName");
		JdbcConnection conn=new JdbcConnection();
		Connection connection=conn.Connect();
		HttpSession session = request.getSession();
		PreparedStatement statement = null;
		

		try{ 
		
		statement=connection.prepareStatement("insert into police(station_id,address, pincode, sho_name, password) values(?,?,?,?,md5(?))");
		statement.setString(1, stationid);
		statement.setString(2, add);
		statement.setString(3, pincode);
		statement.setString(4, sho);
		statement.setString(5, stationid);
		statement.executeUpdate();
		connection.close();
		response.sendRedirect("./police-details.jsp");
		}
		catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("result", "Something went wrong..");
		RequestDispatcher rd=request.getRequestDispatcher("./add-police.jsp");
		}
		
	}



	
	}


