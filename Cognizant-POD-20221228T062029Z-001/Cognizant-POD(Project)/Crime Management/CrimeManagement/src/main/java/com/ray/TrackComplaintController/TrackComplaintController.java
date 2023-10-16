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
@WebServlet("/TrackComplaintController")
public class TrackComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackComplaintController() {
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
		PrintWriter out = response.getWriter();  
		response.setContentType("text/html");
		HttpSession session = request.getSession(false);
		 if(session!=null){
			 {
					// TODO Auto-generated method stub
					String complaintId=request.getParameter("complaintId");
					//HttpSession session = request.getSession();
					String mail = (String) session.getAttribute("complaint-email");
					int id = Integer.parseInt(complaintId);
					System.out.print(id);
					
					
					JdbcConnection conn=new JdbcConnection();
					Connection con=conn.Connect();
					
					{
						try{
						    PreparedStatement ps1=con.prepareStatement("select * from complaints join complaintstatus on complaints.status_of_complaint=complaintstatus.key where complaints.complaintID=? and complaints.email = ?");
						    PreparedStatement ps2=con.prepareStatement("select name from user where email = ?");
						    ps1.setInt(1, id);
						    ps1.setString(2, mail);
						    ps2.setString(1, mail);
						   
						    ResultSet rs=ps1.executeQuery();
						    ResultSet rs2=ps2.executeQuery();
						   // System.out.print("checked1");
						    if(rs.next()) {
						    	System.out.println("Successfully Login");
						    	System.out.println(rs.getString("status"));
									
									if(rs2.next()) {
										if(rs.getString("status").equalsIgnoreCase("Pending") || rs.getString("status").equalsIgnoreCase("Approve")) {
										session.setAttribute("cID",id);
										session.setAttribute("nam",rs2.getString(1));
										session.setAttribute("time_of_registeration",rs.getString(1));
										session.setAttribute("type_of_complaint",rs.getString(3));
										session.setAttribute("place_of_occurance",rs.getString(4));
										session.setAttribute("description",rs.getString(5));
										session.setAttribute("contact",rs.getString(6));
										session.setAttribute("status_of_complaint",rs.getString("value"));
										session.setAttribute("additionalInfo",rs.getString(11));
										session.setAttribute("last_update_time",rs.getString(12));
										response.sendRedirect("./view-status.jsp");
										return;
									}
										else {
											session.setAttribute("cID",id);
											session.setAttribute("nam",rs2.getString(1));
											session.setAttribute("time_of_registeration",rs.getString(1));
											session.setAttribute("type_of_complaint",rs.getString(3));
											session.setAttribute("place_of_occurance",rs.getString(4));
											session.setAttribute("description",rs.getString(5));
											session.setAttribute("contact",rs.getString(6));
											session.setAttribute("status_of_complaint","Rejected");
											session.setAttribute("additionalInfo","Complaint Rejected.");
											session.setAttribute("last_update_time",rs.getString(12));
											response.sendRedirect("./view-status.jsp");
											return;
										}
									}
									else {
										System.out.println("Error");
									}
									
						    		
						    	}
						    	else {
						    		request.setAttribute("track", "Wrong Id");
						    		RequestDispatcher rd=request.getRequestDispatcher("/track-complaint.jsp");
									rd.forward(request, response);
									return;
						    	}
					
							}catch (Exception e) {
								// TODO: handle exception
								request.setAttribute("track", "System Error. We are working on it.");
					    		RequestDispatcher rd=request.getRequestDispatcher("/track-complaint.jsp");
								rd.forward(request, response);
								return;
							//	session.setAttribute("login", "Your Email Id or password is incorrect");
							//	response.sendRedirect("/PodMock2/login2.jsp");					
							}
						
						}
					
			
			}

			}
		 else
		 {
			 request.setAttribute("Login", "Session expired. Please login again.");
 		     RequestDispatcher rd=request.getRequestDispatcher("./login.jsp");
			rd.forward(request, response);
			return;
		 }

	}

}
