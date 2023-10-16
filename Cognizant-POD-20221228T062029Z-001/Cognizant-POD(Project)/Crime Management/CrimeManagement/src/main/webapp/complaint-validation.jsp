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
<meta charset="utf-8">
<!-- Chrome, Firefox OS and Opera -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style/nav.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<!-- CSS Begin-->
<style>

.sidebar {
  height: 70%;
  width: 40px;
  position: absolute;
  z-index: 1;
  top: px;
  left: 330px;
  background-color: lightgray;
  overflow-x: hidden;
  padding-top: 16px;
  }

/* Style sidebar links */
.sidebar a {
  padding: 12px 4px 6px 9px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  
}

/* Style links on mouse-over */
.sidebar a:hover {
  color: white;
}

.sidebar a:active {
  color: red;
}

/* Style the main content */
.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

/* Add media queries for small screens (when the height of the screen is less than 450px, add a smaller padding and font-size) */
@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}

#inner-table::-webkit-scrollbar { width: 0 !important }

td{
      column-gap:20px;
      padding: 8px;
      width:120px;
  }
  
  
    #inner-table::-webkit-scrollbar { width: 0 !important }
#inner-table tr:nth-child(even) {background-color: lightgreen;} 
#inner-table tr:nth-child(odd) {background-color: lightgreen;}  
  
</style>
 <script>
function logout(){
	localStorage.setItem("expired", "Session expired. Please login again.");
//	preventBack();
	document.getElementById("logout").submit();
}

</script>
</head>


<!-------------------------------- Header --------------------------------------->
<header>
	<div id="header"
		style="height: 11.94vh; background-color: rgb(249, 249, 249); text-align: center; top: 50%;">

		<div id="logo"
			style="position: absolute; margin-left: 1.95vw; height: 9.28vh; width: 10.42vw; margin-top: 1.33vh; margin-bottom: 1.33vh; background-color: inherit;">

			<!-- Logo Image to be added -- -->
			<img src="./Images/Logo.jpeg" style="height: 5em; width: 7em;">

		</div>

		<span
			style="position: absolute; color: rgb(237, 28, 36); font-weight: bold; font-size: 4.23vw; left: 21.48vw; top: .06vh; z-index: 1;">ONLINE
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
		<a href="homepage.jsp" style="width: 12.5vw;">HOME</a> <a
			href="html/newsfinal.jsp" style="width: 12.5vw;">NEWS</a> <a
			href="html/mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a> <a
			href="html/missingpersons.jsp" style="width: 15.43vw;">MISSING
			PERSONS</a> <a href="html/unidentifiedbodies.jsp" style="width: 17.38vw;">UNIDENTIFIED
			BODIES</a> <a href="html/crimetypes.jsp" 
			style="width: 12.83vw;">CRIME TYPES</a>
			<form id="logout" action="LogOutController"></form>
			 <a onclick='return logout()' style="width: 13.83vw;cursor: pointer;">LOGOUT</a>


	</div>



</header>
<!-------------------------------- Footer --------------------------------------->
<footer
		style="background-color: rgb(0, 51, 153); height: 4.68vh; position: absolute; top: 94.16vh; width: 99%; padding-top: 1.33vh;">
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
		style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height: 24.1vw; width: 9.95vw; margin-top: 80px; background-color: rgb(0, 51, 153); color: white;">
		<img src="./Images/telephone.png"
			style="height: 6.28vh; width: 2.42vw; z-index: 1"><span
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
	style="width: inherit; height: 33px; padding-left: 0px; position: absolute; margin-left: -2vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
	<div id="covid-helpline"
		style="padding-top: 3vw; position: absolute; margin-left: 97.9vw; border: 1px black solid; border-radius: 12px; height: 21.3vw; width: 2.0vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

		<span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
		</span>

	</div>

</a>

<!----------------------------Right Covid HelpLine Panel END---------------------------------->
<br>
<div class="sidebar">
  <a href="admin-dashboard.jsp" style="margin-top:40px;" class="active"><i class="fas fa-columns" style="color:black" ></i></a>
  <a href="user-validation.jsp" class="active"><i class="fas fa-user-check"></i></a>
  <a href="complaint-validation.jsp"><i class="fas fa-sticky-note"></i> </a>
  <a href="police-details.jsp" ><i class="fas fa-user-edit"></i> </a>
</div>
<div id="content" style="border: 1px solid black;height: 70%;position:absolute;left:370px;width:1000px;">
		<%
		JdbcConnection conn=new JdbcConnection();
		Connection connection=conn.Connect();
PreparedStatement statement = null;
ResultSet resultSet = null;
%>
<h2 align="left" style="position:relative; margin-left:40px; margin-bottom:0px;"><strong>Complaints</strong></h2>
<hr style="border: 1px solid black; width:300px; margin: 6px auto 6px 40px;"><br>
<table align="center" width="900px" cellspacing="0" cellpadding="0" border="0">
<tr><td>

 <table cellspacing="0" cellpadding="0" border="1">
       </table>

       </td>
       </tr>
       <tr>
       <td>
<div style="overflow-y:scroll; max-height:380px; margin-top:-23px;" id="inner-table">
<table cellpadding="0" cellspacing="0" border="1">
<tr  style="background-color: ghostwhite;" >
          <td style="width:60px;"><b>Sr.No</b></td>
             <td style="width:130px;"><b>Complaint ID</b></td>
            <td style="width:220px;"><b>Time of Complaint</b></td>
             <td style="width:200px;"><b>Place of occurence</b></td>
            <td style="width:150px;"><b>Email</b></td>
            <td style="width:100px;"><b>Type of Crime</b></td>
            <td style="width:90px;"><b>Status</b></td>
         </tr>
<tr>

</tr>

<%
try{ 
HttpSession session1 = request.getSession();
//int pincode = (int) session1.getAttribute("pincode");

statement=connection.prepareStatement("select * from complaints where status=?");
statement.setString(1, "Pending");
resultSet = statement.executeQuery();

int count = 0;
resultSet = statement.executeQuery();

		
while(resultSet.next()){
	count=count+1;
%>
<tr bgcolor="#DEB887">
<td style="width:60px;"><%=count%></td>
<td style="width:130px;"><%=resultSet.getString("complaintID") %></td>
<td style="width:220px;"><%=resultSet.getString("Time_of_registering_complaint") %></td>
<td style="width:200px;"><%=resultSet.getString("Place_of_occurance") %></td>
<td style="width:150px;"><%=resultSet.getString("email") %></td>
<td style="width:100px;"><%=resultSet.getString("type_of_complaint") %></td>
<td style="width:90px;"><a href="#" class="myclass" id=<%=resultSet.getString("complaintID") %>><%=resultSet.getString("Status") %></a></td>

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

<form method="post" id="form" action="ComplaintApproval" style="display:none">
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

</div>
</body>
</html>



