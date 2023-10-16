package com.ray.RegistrationController;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuth extends Authenticator {
	String UserName=null;
	String Password=null;
	public MyAuth(String userName, String password) {
		super();
		UserName = userName;
		Password = password;
	}
	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(UserName, Password);
		
	}

}
