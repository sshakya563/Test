package com.ray.PoliceController;

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
@WebServlet("/ComplaintStatus")
public class ComplaintStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintStatus() {
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
		
		System.out.println("inside status page");
			{
				// TODO Auto-generated method stub
				PrintWriter out = response.getWriter();  
				response.setContentType("text/html");
				
				HttpSession session = request.getSession();
			//	System.out.println("inside status page1");
				int id=(Integer) session.getAttribute("complaintid");
			//	System.out.println("inside status page4");
				String status=request.getParameter("status");
				int val=4;
			    if(status.contains("0")) {
			    	val=0;
			    }
			    else if(status.contains("1")) {
			        val=1;	
			    }
			    else if(status.contains("2")) {
			    	val=2;
			    }
			    else {
			    	val=3;
			    }
				String info=request.getParameter("info");
				//System.out.println(info);
				JdbcConnection conn=new JdbcConnection();
				Connection con=conn.Connect();
			//	System.out.println("inside status page2");
				{
					try{
					//	System.out.println("inside status page3");
					    PreparedStatement ps1=con.prepareStatement("UPDATE complaints SET last_status_update_time=CURRENT_TIMESTAMP, status_of_complaint = ?, additional_information= ? WHERE complaintId=?");
					    ps1.setInt(3, id);
					    ps1.setInt(1, val);
					    ps1.setString(2, info);
					    
					    ps1.executeUpdate();
					    request.setAttribute("result", "Updated");
				    	
					    PreparedStatement ps2=con.prepareStatement("select * from complaints where complaintID=?");
					    ps2.setInt(1, id);
					   
					    ResultSet rs=ps2.executeQuery();
					    System.out.print("checked1");
					    if(rs.next()) {
					    	//System.out.println("Successfully Login");
					    	
					    	PreparedStatement ps3 = con.prepareStatement("select name from user where email=?");
					    	ps3.setString(1, rs.getString(8));
					    	ResultSet rs3=ps3.executeQuery();
					    	
					    	if(rs3.next()) {
					    		String name = rs3.getString(1);
					    		String time_of_occurance = rs.getString(2);
						    	String type = rs.getString(3);
						    	String address = rs.getString(4);
						    	String desc = rs.getString(5);
						    	String mobile = rs.getString(6);
						    	int complaintid = rs.getInt(9);
						    	//String status = rs.getString(10);
						    	String information = rs.getString(11);
						    	
						    	session.setAttribute("complainant", name);
								session.setAttribute("date", time_of_occurance);
								session.setAttribute("type", type);
								session.setAttribute("address", address);
								session.setAttribute("desc", desc);
								session.setAttribute("mobile", mobile);
								session.setAttribute("complaintid", complaintid);
								//session.setAttribute("status", status);
								session.setAttribute("info", information);
								
								
								
					    
				    	RequestDispatcher rd=request.getRequestDispatcher("./complaint-status.jsp");
						rd.forward(request, response);
						return;
					    	}
					    }
					    	//out.print("Updated");
					}catch (Exception e) {
							// TODO: handle exception
						System.out.println(e.getMessage());
						request.setAttribute("result", "System Error. We are working on it..");
						RequestDispatcher rd=request.getRequestDispatcher("./complaint-status.jsp");
						rd.forward(request, response);
						return;
						//	session.setAttribute("login", "Your Email Id or password is incorrect");
						//	response.sendRedirect("/PodMock2/login2.jsp");					
						}
					
					}
				
		
		}

	}

}
