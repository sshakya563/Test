package com.ray.ComplaintApproval;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class complaintStatusApproval
 */
@WebServlet("/complaintStatusApproval")
public class complaintStatusApproval extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public complaintStatusApproval() {
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
		System.out.println("inside complaint status page");
		{
			// TODO Auto-generated method stub
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html");
			
			HttpSession session = request.getSession();
		//	System.out.println("inside status page1");
			int id=(Integer) session.getAttribute("complaintid");
		//	System.out.println("inside status page4");
			String status=request.getParameter("status");
			
			
			
			//System.out.println(info);
			JdbcConnection conn=new JdbcConnection();
			Connection con=conn.Connect();
		//	System.out.println("inside status page2");
			{
				try{
				//	System.out.println("inside status page3");
				    PreparedStatement ps1=con.prepareStatement("UPDATE complaints SET last_status_update_time=CURRENT_TIMESTAMP, Status=? WHERE complaintId=?");
				    System.out.println("inside try");
				    ps1.setInt(2, id);
				    ps1.setString(1, status);
				   
				    
				    ps1.executeUpdate();
				    response.sendRedirect("./complaint-validation.jsp");
					return;
				   
				    	//out.print("Updated");
				}catch (Exception e) {
						// TODO: handle exception
					request.setAttribute("result", "System Error. We are working on it..");
					RequestDispatcher rd=request.getRequestDispatcher("./complaint-validation-status.jsp");
					rd.forward(request, response);
					return;
					//	session.setAttribute("login", "Your Email Id or password is incorrect");
					//	response.sendRedirect("/PodMock2/login2.jsp");					
					}
				
				}
			
	
	}
	}



	

}
