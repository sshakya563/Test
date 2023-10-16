<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		
		<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.ray.Connection.JdbcConnection" %>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Complaint</title>
<link rel="stylesheet" href="style/complaint.css">
<link rel="stylesheet" href="style/nav.css">

<!-- BEGIN INCLUDE HEADER AND FOOTER -->



<!-- END INCLUDE HEADER AND FOOTER -->
<style>
.dropdown {
	display: inline-block;
}

#btn:disabled {
  cursor: not-allowed;
  pointer-events: all !important;
}

</style>
<script>
function logout(){
	localStorage.setItem("expired", "Session expired. Please login again.");
//	preventBack();
	document.getElementById("logout").submit();
}

</script>
</head>
<body style=" background-color: white;">
	<!-------------------------------- Header --------------------------------------->
	<header>
		<div id="header"
			style="height: 11.94vh; background-color: rgb(249, 249, 249); text-align: center; top: 50%;">

			<div id="logo"
				style="position: absolute; margin-left: 1.95vw; height: 9.28vh; width: 10.42vw; margin-top: 1.33vh; margin-bottom: 1.33vh; background-color: inherit;">

				<!-- Logo Image to be added -- -->
				<img src="./Images/Logo.jpeg" style="height: 4em; width: 5em;">

			</div>

			<span
				style="position: absolute; color: rgb(237, 28, 36); font-weight: bold; font-size: 4.23vw; left: 21.48vw; top: 1.86vh; z-index: 1;">ONLINE
				CRIME MANAGEMENT</span>

		</div>
<%
  
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expire",0);

if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
%>

		<!-------------------------------- Navigation Bar --------------------------------------->
		<div
			style="background-color: rgb(0, 51, 153); height: 5.31vh; width: 100%; z-index: 1"
			id="nav">
			<a href="homepage.jsp" style="width: 12.5vw;">HOME</a>
			<a href="html/newsfinal.jsp" style="width: 12.5vw;">NEWS</a> <a
				href="html/mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a>
			<a href="html/missingpersons.jsp" style="width: 15.43vw;">MISSING
				PERSONS</a> <a href="html/unidentifiedbodies.jsp"
				style="width: 17.38vw;">UNIDENTIFIED BODIES</a> <a
				href="html/crimetypes.jsp" style="width: 12.83vw;">CRIME TYPES</a>
				<div class="dropdown" style="width: 10.83vw;">
				<form id="logout" action="LogOutController"></form>
				<a onclick='return logout()' style="width: 11.83vw;cursor: pointer;">LOGOUT</a>
				
				
			</div>



		</div>
	</header>
	<!-------------------------------- Footer --------------------------------------->
	<footer
		style="background-color: rgb(0, 51, 153); height: 4.38vh; position: absolute; top: 106.16vh; width: 99%; padding-top: 1.33vh;">
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 11.72vw; display: inline;">
			<i>Disclaimer </i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Privacy Policy </i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Terms of use</i>
		</p>
		<p
			style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
			<i>Important Sites</i>
		</p>

	</footer>
	<!----------------------------Left HelpLine Pannel------------------------------------------>
	<div class="helpline" style="width: 15%">
		<div id="icon"
			style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height: 27.1vw; width: 9.95vw; margin-top: 80px; background-color: rgb(0, 51, 153); color: white;">
			<img src="./Images/telephone.png"
				style="height: 4.28vh; width: 2.42vw; z-index: 1"><span
				style="position: absolute; margin-top: 8px;">HELPLINE </span> <br>
			<br>
			<p>
				Report A Crime: <br> 100
			</p>
			<p>
				Women Helpline: <br> 1091
			</p>
			<p>
				Child Helpline: <br> 1098
			</p>
			<p>
				Anti Ragging: <br> 1800-180-5522
			</p>
			<p>
				Ambulance: <br>108
			</p>
			<p>
				Railway Protection: <br> 1322
			</p>



		</div>
	</div>

	<!----------------------------Left HelpLine Pannel--END-------------------------------->


	<!----------------------------Right Covid HelpLine Panel---------------------------------->

	<a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf"
		target="_blank"> <img src="./Images/telephone.png"
		style="width: inherit; height: 40px; padding-left: 0px; position: absolute; margin-left: 96.5vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
		<div id="covid-helpline"
			style="padding-top: 3vw; position: absolute; margin-left: 96.5vw; border: 1px black solid; border-radius: 12px; height: 17.3vw; width: 1.68vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

			<span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
			</span>

		</div>

	</a>

	<!----------------------------Right Covid HelpLine Panel END---------------------------------->




	<h2>Complaint Form</h2>
	

	<form method="post" action="complaint_form" style="position: relative; top: 4.5px; left: 0px;">
	
		<table align="center">
		<tr><td style="color:black; font-size:18px;font-weight:bold" colspan="2">Hi <%= (String) session.getAttribute("complaint-name") %>, </td></tr>
			<tr>
				<td><label for="calender">Date of Complaint:<span
						style="color: red">&#42;</span></label></td>
				<td><input type="date" id="datefield" name="Calender" placeholder="Date of Complaint"  required></td>
			</tr>
			 <tr>
                <td><label for="username">Email Id:<span style="color: red">&#42;</span></label></td>
                <td><input type="email" name="emailid" placeholder="Enter the mail id" readonly value="<%= (String) session.getAttribute("complaint-email") %>"></td>
            </tr>
			<tr>
				<td><label for="complaint type">Complaint Type:<span
						style="color: red">&#42;</span></label></td>
				<td><select name="complaintType" id="complaint type" required>
						<option value="" selected hidden disabled>SELECT COMPLAINT TYPE</option>
						<option value="Kidnapping">Kidnapping</option>
						<option value="Smuggling">Smuggling</option>
						<option value="Rape Case">Rape case</option>
						<option value="Robbery">Robbery</option>
						<option value="Murder">Murder</option>
				</select></td>
			</tr>




			<tr>
				<td><label for="Address">Address:<span
						style="color: red">&#42;</span></label></td>
				<td><textarea id="address" name="address" rows="4" cols="45" required></textarea></td>
			</tr>
			<tr>
				<td><label for="Complaint">Complaint Description:<span
						style="color: red">&#42;</span></label></td>
				<td><textarea id="complaint" name="complaint" rows="4"
						cols="45" required></textarea></td>
			</tr>
			<tr>
				<td><label for="mobilenumber">Contact No:<span
						style="color: red">&#42;</span></label></td>
				<td><input type="text" name="mobilenumber"
					placeholder="Enter Mobile Number" pattern="+[0-9]{2}[0-9]{10}"  required value="<%= (String) session.getAttribute("complaint-mobile") %>"></td>

			</tr>
			<tr>
				<td><label for="zip">Police Station:<span style="color: red">&#42;</span></label></td>
				<td>
			<select name="zip" id="zip" style="max-width:260px;" required>
						<option value="" selected hidden disabled>Choose Police Station</option>
						<%

						JdbcConnection conn=new JdbcConnection();
						Connection connection=conn.Connect();
PreparedStatement statement = null;
ResultSet resultSet = null;
try{ 
statement=connection.prepareStatement("SELECT pincode, address,station_id FROM police");
resultSet = statement.executeQuery();
while(resultSet.next()){

%>
<option value="<%=resultSet.getString("pinCode") %>" ><%=resultSet.getString("station_id") %> - <%=resultSet.getString("address") %></option>
				
				<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</select>
				</td>
			</tr>
			
			<tr>
				<td><label for="recaptcha">Captcha:<span
						style="color: red">&#42;</span></label></td>
				<td><div id="recaptcha"
						class="g-recaptcha brochure__form__captcha"
						data-sitekey="6LefpMIaAAAAADXI9CeYpUC2piRAeTkW6yI9c5GR" data-callback="enableBtn"></div></td>
			</tr>

			<tr>
				<td colspan="2">
					<center>
						<button type="submit" id="btn" disabled>Submit</button>
					</center>
				</td>
			</tr>
			<tr><td style="color:red; font-size:18px;" colspan="2"><center><div>${Complaint}</div></center> </td></tr>
			<tr><td style="color:red; font-size:18px;" colspan="2"><center><a href="track-complaint.jsp" style="color:red">Track Complaint</a></center></td></tr>
		</table>
	</form>

	<!-------- Footer Begins ------->

	<!-------- Footer Ends ------->
	<script src="https://www.google.com/recaptcha/api.js"></script>
<script>
    function enableBtn(){
        document.getElementById("btn").disabled = false;
    }
  
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
     if(dd<10){
            dd='0'+dd
        } 
        if(mm<10){
            mm='0'+mm
        } 

    today = yyyy+'-'+mm+'-'+dd;
    document.getElementById("datefield").setAttribute("max", today);
    
</script>
	
</body>


</html>
