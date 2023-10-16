package com.ray.LoginPageContoller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class verify_page
 */
@WebServlet("/verify_page")
public class verify_page extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verify_page() {
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
				String number=request.getParameter("mobilenumber");
				System.out.print("check");
				 System.out.print(number);
				JdbcConnection conn=new JdbcConnection();
				Connection con=conn.Connect();
				HttpSession session = request.getSession();
				String mail = (String) session.getAttribute("mail");
						
				int count=0;
				
				try{
					System.out.print("check1");
				    PreparedStatement ps1=con.prepareStatement("select * from user where mobile=? and email=?");
				    ps1.setString(1, number);
				    ps1.setString(2, mail);
				    System.out.print("check2");
				    ResultSet rs=ps1.executeQuery();
				    System.out.print("check4");
				    if(rs.next()) {
				    	System.out.print("check3");
				    	String name = rs.getString(1);
				    	String email = rs.getString(2);
				    	System.out.println("Successfully Login");
				    	
				    	System.out.println("logged in");
				    	
				    	PreparedStatement ps3=con.prepareStatement("select count from login where email=?");
					    ps3.setString(1, email);
					    ResultSet rs3=ps3.executeQuery();
					    if(rs3.next()) {
					    	 System.out.print("updated1");
					    	count=rs3.getInt(1);
					    	count=count+1;
					    	request.setAttribute("login","Successfully logged in");
					    	PreparedStatement ps2=con.prepareStatement("UPDATE login SET last_login_time=CURRENT_TIMESTAMP, count = " + count + " WHERE email=?");
						    ps2.setString(1, email);
						    ps2.executeUpdate();
						    System.out.print("updated");
						    Thread.sleep(3000);   //delay
						    //request.setAttribute("name",name);
						    //request.setAttribute("email",email);
							
							
							//session.setAttribute("login", "Successfully logged in");
							session.setAttribute("complaint-name", name);
							session.setAttribute("complaint-email", email);
							session.setAttribute("complaint-mobile", number);
							response.sendRedirect("./complaint.jsp");
							return;
						//	RequestDispatcher rd=request.getRequestDispatcher("/complaint.jsp");
						//	rd.forward(request, response);
					    }
					    
					    
				    	
				    }
				    else {
				    	
				    	request.setAttribute("login", "Error.");
				    	RequestDispatcher rd=request.getRequestDispatcher("./verify.jsp");
						rd.forward(request, response);
					//	session.setAttribute("login", "Error");
					//	response.sendRedirect("/PodMock2/verify.jsp");
						return;
						
			}

					}catch (Exception e) {
						request.setAttribute("login", "System Error. We are working on it..");
						RequestDispatcher rd=request.getRequestDispatcher("./verify.jsp");
						rd.forward(request, response);
						return;
						// TODO: handle exception
						
					}
			//	session.setAttribute("login","");
				}
			

}
