package com.ray.ComplaintController;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ray.Connection.JdbcConnection;


public class Mail {
	int complaintid;
	String complaintType;
	String desc;
	String mno;
	String address;
	String station_id;
	String station_address;
	public boolean SendMail(String to,String pin) throws SQLException {
		int pincod = Integer.parseInt(pin);
		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		PreparedStatement ps1=con.prepareStatement("select complaintID,type_of_complaint,place_of_occurance,description,mobileNo from complaints where complaintID = (SELECT max(ComplaintID) FROM crimemanagement.complaints where email=?);");
	    ps1.setString(1, to);  
	    ResultSet rs=ps1.executeQuery();
	    if(rs.next()) {
	    	complaintid=rs.getInt(1);
	    	complaintType=rs.getString(2);
	    	address=rs.getString(3);
	    	desc=rs.getString(4);
	    	mno=rs.getString(5);
	    }
	    PreparedStatement ps2=con.prepareStatement("select station_id,address from police,complaints where police.pincode=? && police.pincode=complaints.PinCode && complaints.complaintID=?;");
	    ps2.setInt(1, pincod);  
	    ps2.setInt(2,complaintid);
	    ResultSet rs2=ps2.executeQuery();
	    if(rs2.next()) {
	    	station_id=rs2.getString(1);
	    	station_address=rs2.getString(2);
	    }
		String from="podcognizant@gmail.com";
		String pass="Password@12345";
		String host = "smtp.gmail.com";
		boolean mail_status=false;
		Properties properties=System.getProperties();
		properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");
		
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("podcognizant@gmail.com", "Password@12345");

            }

        });
        session.setDebug(true);
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			 message.setSubject("Complaint Registered");
			
			 message.setText(" Your complaint has been registered.\n \n Complaint Details: \n \n Complaint Id: " + complaintid + "\n Complaint Type: "+complaintType+"\n Place of Occurance: "+address+"\n Complaint Description: "+desc+"\n Mobile Number: "+mno+"\n \n Police Station Details: \n \n Station Id: "+station_id+" \n Station Address: "+station_address+"\n");
			 System.out.println("sending...");
			 Transport.send(message);
			mail_status=true;
			
		}catch (MessagingException mex) {
			mex.printStackTrace();
			// TODO: handle exception
		}
		return mail_status;
		
	}

}
