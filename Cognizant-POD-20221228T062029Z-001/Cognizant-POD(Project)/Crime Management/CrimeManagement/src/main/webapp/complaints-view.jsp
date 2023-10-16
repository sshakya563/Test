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
<title>View Complaints</title>



<!-- BEGIN INCLUDE HEADER AND FOOTER -->
<script src="js/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="style/nav.css">

<!-- END INCLUDE HEADER AND FOOTER -->
<style>

.required {
	color: red;
}

button {
    background-color: #04AA6D;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    height: fit-content;
    width: fit-content;
    font-size: medium;
  }
  button:hover {
    opacity: 0.9;
  }
 
  h1{
      text-align: center;
      color: blue;
      padding-top: 30px;
      padding-bottom: 10px;
  }
  td{
      column-gap:20px;
      padding: 12px;
      width:150px;
  }

  input{
    float: right;
}
label{
    float:left;
    font-weight: bold;
}

#inner-table::-webkit-scrollbar { width: 0 !important }

#inner-table tr:nth-child(even) {background-color: Lightgreen;} 
#inner-table tr:nth-child(odd) {background-color: ghostwhite;}  

</style>
 <script>
function logout(){
	localStorage.setItem("expired", "Session expired. Please login again.");
	//preventBack();
	document.getElementById("logout").submit();
}

</script>
</head>
<body style="overflow: hidden; background-color: white;">
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
			<form id="logout" action="LogOutController"></form>
			<a onclick='return logout()' style="width: 12.83vw;cursor: pointer;">LOGOUT</a>


		</div>
	</header>
	<!-------------------------------- Footer --------------------------------------->
	<footer
		style="background-color: rgb(0, 51, 153); height: 4.38vh; position: absolute; top: 94.16vh; width: 99%; padding-top: 1.33vh;">
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


	<!----------------------------Right Covid HelpLine Pannel---------------------------------->

	<a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf"
		target="_blank"> <img src="./Images/telephone.png"
		style="width: inherit; height: 40px; padding-left: 0px; position: absolute; margin-left: 96.5vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
		<div id="covid-helpline"
			style="padding-top: 3vw; position: absolute; margin-left: 96.5vw; border: 1px black solid; border-radius: 12px; height: 17.3vw; width: 1.68vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

			<span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
			</span>

		</div>

	</a>

	<!----------------------------Right Covid HelpLine Pannel END---------------------------------->



	<!---------------- USER INTERFACE ------------------>

	<%
	JdbcConnection conn=new JdbcConnection();
	Connection connection=conn.Connect();
PreparedStatement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Complaints</strong></font></h2>
<table align="center" width="900px" cellspacing="0" cellpadding="0" border="0">
<tr><td>
<div id="outer-table" style="background-color: ghostwhite;" >
 <table cellspacing="0" cellpadding="0" border="1">
         <tr>
            <td><b>Time of Complaint</b></td>
            <td><b>Complaint ID</b></td>
            <td><b>Email</b></td>
            <td><b>Type of Crime</b></td>
            <td><b>Status of Complaint </b></td>
         </tr>
       </table>
       </div>
       </td>
       </tr>
       <tr>
       <td>
<div style="overflow-y:scroll; max-height:400px; margin-top:-23px;" id="inner-table">
<table cellpadding="0" cellspacing="0" border="1">
<tr>

</tr>

<%
try{ 
HttpSession session1 = request.getSession();
int pincode = (int) session1.getAttribute("pincode");
statement=connection.prepareStatement("select * from complaintstatus join complaints on complaints.status_of_complaint=complaintstatus.key where pincode=? and complaints.status in (?,?)");
statement.setInt(1, pincode);
statement.setString(2, "Pending");
statement.setString(3, "Approve");
resultSet = statement.executeQuery();

while(resultSet.next()){

%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("Time_of_registering_complaint") %></td>
<td><%=resultSet.getString("complaintID") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("type_of_complaint") %></td>
<td><a href="#" class="myclass" id=<%=resultSet.getString("complaintID") %>><%=resultSet.getString("value") %></a></td>

</tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</td>
</tr>
</table>

<form method="post" id="form" action="ComplaintView" style="display:none">
<tr>
				<td><input type="text" id="clickid" name="clickid" placeholder="Enter login Id"
					value="0"></td>
			</tr>
</form>

	<!-------- Footer Begins ------->

	<!-------- Footer Ends ------->
<script>
$('a.myclass').click(function(){
	var id = $(this).attr('id');
	//session1.setAttribute("click-id", id);
	//session1.setAttribute("click-id",'id');
  //  alert( id );
    document.getElementById("clickid").value = id;
   // document.getElementById("form").action = "ComplaintView"+id;
    document.getElementById("form").submit();
});
</script>
</body>


</html>