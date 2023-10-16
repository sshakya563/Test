package com.ray.TrackComplaintController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
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
 * Servlet implementation class ComplaintView
 */
@WebServlet("/TrackComplaint")
public class TrackComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackComplaint() {
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
		
			// System.out.print("checked");
			{
				// TODO Auto-generated method stub
				PrintWriter out = response.getWriter();  
				response.setContentType("text/html");

				HttpSession session = request.getSession();
				String clickid=request.getParameter("clickid");
				System.out.print(clickid);
				int id = Integer.parseInt(clickid);
				System.out.print(id);
				//session.setAttribute("login", " ");
				
				JdbcConnection conn=new JdbcConnection();
				Connection con=conn.Connect();
				
				{
					try{
					    PreparedStatement ps1=con.prepareStatement("select * from complaints where complaintID=?");
					    ps1.setInt(1, id);
					   
					    ResultSet rs=ps1.executeQuery();
					    System.out.print("checked1");
					    if(rs.next()) {
					    	//System.out.println("Successfully Login");
					    	PreparedStatement ps2 = con.prepareStatement("select name from user where email=?");
					    	ps2.setString(1, rs.getString(8));
					    	ResultSet rs2=ps2.executeQuery();
					    	
					    	if(rs2.next()) {
					    		String name = rs2.getString(1);
					    		String time_of_occurance = rs.getString(2);
						    	String type = rs.getString(3);
						    	String address = rs.getString(4);
						    	String desc = rs.getString(5);
						    	String mobile = rs.getString(6);
						    	int complaintid = rs.getInt(9);
						    	String status = rs.getString(10);
						    	String info = rs.getString(11);
						    	
						    	session.setAttribute("complainant", name);
								session.setAttribute("date", time_of_occurance);
								session.setAttribute("type", type);
								session.setAttribute("address", address);
								session.setAttribute("desc", desc);
								session.setAttribute("mobile", mobile);
								session.setAttribute("complaintid", complaintid);
								session.setAttribute("status", status);
								session.setAttribute("info", info);
								
								response.sendRedirect("./complaint-status.jsp");
								return;
					    		
					    	}
					    	else {
					    		System.out.print("Error");
					    	}
					    	
					    }
				
					   else {
						   response.sendRedirect("./complaint-status.jsp");
							return;
						//	response.setContentType("text/html");
						//	session.setAttribute("login", "Your Email Id or password is incorrect");
						//	response.sendRedirect("/PodMock2/login2.jsp");
				}

						}catch (Exception e) {
							// TODO: handle exception
						//	session.setAttribute("login", "Your Email Id or password is incorrect");
						//	response.sendRedirect("/PodMock2/login2.jsp");					
						}
					
					}
				
		
		}

	}

}
