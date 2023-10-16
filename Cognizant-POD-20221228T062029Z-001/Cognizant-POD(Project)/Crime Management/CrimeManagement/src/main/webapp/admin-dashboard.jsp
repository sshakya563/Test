<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	

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

.btn {
  background-color: rgb(0, 51, 153); /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 12px 16px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
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
  <a href="admin-dashboard.jsp" style="margin-top:40px;"><i class="fas fa-columns" style="color:black" ></i></a>
  <a href="user-validation.jsp"><i class="fas fa-user-check"></i></a>
  <a href="complaint-validation.jsp"><i class="fas fa-sticky-note"></i> </a>
  <a href="police-details.jsp" ><i class="fas fa-user-edit"></i> </a>
</div>
<div id="content" style="border: 1px solid black;height: 70%;position:absolute;left:370px;width:1000px;">
<button class="btn" onclick='window.location.replace("user-validation.jsp")' style="margin-left:40px;margin-top:15%;width:260px;"><i class="fas fa-user-check fa-5x" style="display:block;padding-bottom:20px;"></i><span style="font-size:20px;"> User Verification</span></button>
<button class="btn" onclick='window.location.replace("complaint-validation.jsp")' style="margin-left:40px;margin-top:15%;width:260px;"><i class="fas fa-sticky-note fa-5x" style="display:block;padding-bottom:20px;"></i><span style="font-size:20px;">  Complaint Validation</span></button>
<button class="btn" onclick='window.location.replace("police-details.jsp")' style="margin-left:40px;margin-top:15%;width:260px;"><i class="fas fa-user-edit fa-5x" style="display:block;padding-bottom:20px;"></i> <span style="font-size:20px;"> Police Details</span></button>
</div>
</body>
</html>



