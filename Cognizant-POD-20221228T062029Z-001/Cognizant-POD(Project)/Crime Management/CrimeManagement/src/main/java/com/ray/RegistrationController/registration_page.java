package com.ray.RegistrationController;

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
 * Servlet implementation class registration_page
 */
@WebServlet("/registration_page")
public class registration_page extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration_page() {
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
		String fullname=request.getParameter("fullname");
		String email=request.getParameter("emailid");
		String type_of_card=request.getParameter("cardtype");
		String password=request.getParameter("password");
		String mobile="+91"+request.getParameter("mobilenumber");
		String idno=request.getParameter("idno");

		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		
		HttpSession session = request.getSession();
		session.setAttribute("username", email);
		
		
		
		try{
			 
		    PreparedStatement ps1=con.prepareStatement("select * from user where email=?");
		    ps1.setString(1, email);
		    ResultSet rs=ps1.executeQuery();
		    
		    PreparedStatement ps2 = con.prepareStatement("select * from user where id_card_no=?");		    
		    ps2.setString(1, idno);
		    ResultSet rs2 = ps2.executeQuery();
		    
		    PreparedStatement ps4 = con.prepareStatement("select * from user where id_card_no=? and email=? ");		    
		    ps4.setString(1, idno);
		   // ps4.setString(2, mobile);
		    ps4.setString(2, email);
		    ResultSet rs4 = ps4.executeQuery();
		
		    if(rs.next()) {
		    	request.setAttribute("Registration", "Email already exist");
		    	//session.setAttribute("Registration", "Account already exist");
				//response.sendRedirect("/PodMock2/register.jsp");
				//return;
				
		    }
		    
		    else if(rs2.next()) {
		    	request.setAttribute("Registration", "Id card number already in use");				
		    }
		    
		    else if(rs4.next()) {
		    	request.setAttribute("Registration", "Account already exist");				
		    }
		    
		    else {
		    PreparedStatement ps = con.prepareStatement("insert into user(name,email, password, mobile,type_of_card,id_card_no) values(?,?,md5(?),?,?,?);");
		    ps.setString(1,fullname);
		    ps.setString(2,email);
		    ps.setString(3,password);
		    ps.setString(4,mobile);
		    ps.setString(5,type_of_card);
		    ps.setString(6,idno);
		    System.out.print("connected");
		    int x = ps.executeUpdate();
		    System.out.print("connected1");
		    session.setAttribute("username", email);
			if(x>0){
				request.setAttribute("Registration", "Successfully Registered. Redirecting to complaint page in 5 secs..");
			//	session.setAttribute("Registration", "Successfully Registered. Redirecting to login in 5 seconds.");
				
				
				
				PreparedStatement ps3 = con.prepareStatement("insert into login(email,count) values(?,0);");
			    ps3.setString(1,email);
			    ps3.executeUpdate();
				String to=request.getParameter("emailid");
				RMail mail=new RMail();
				mail.SendMail(to);
			    session.setAttribute("complaint-name", fullname);
			    session.setAttribute("complaint-email", email);
			    session.setAttribute("complaint-mobile", mobile);
				response.setHeader("Refresh", "5; URL=./complaint.jsp");
				
				}else{
					//session.setAttribute("Registration", "Registration Failed.");
					request.setAttribute("Registration", "Registration Failed");
					
			 
		}
		    }
		}catch(Exception e){
			request.setAttribute("Registration", "System Error. We are working on it.");
		}
		//session.setAttribute("Registration", empty);
		//response.sendRedirect("/register.jsp");
		
		RequestDispatcher rd=request.getRequestDispatcher("./register.jsp");
		rd.forward(request, response);
		return;
		
	

	}
}


