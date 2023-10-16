<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="style/policelogin.css.css">
<link rel="stylesheet" href="style/nav.css">

<!-- BEGIN INCLUDE HEADER AND FOOTER -->
<script src="js/jquery-1.10.2.js"></script>


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


</style>
<script type="text/javascript">

window.onload = function(e){ 

   document.getElementById("expired").innerHTML= localStorage.getItem("expired");
   localStorage.setItem("expired", "");
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


		<!-------------------------------- Navigation Bar --------------------------------------->
		<div
			style="background-color: rgb(0, 51, 153); height: 5.31vh; width: 100%; z-index: 1"
			id="nav">
			<a href="homepage.html" style="width: 12.5vw;">HOME</a>
			<a href="html/newsfinal.html" style="width: 12.5vw;">NEWS</a> <a
				href="html/mostwanted.html" style="width: 15.43vw;">MOST WANTED</a>
			<a href="html/missingpersons.html" style="width: 15.43vw;">MISSING
				PERSONS</a> <a href="html/unidentifiedbodies.html"
				style="width: 17.38vw;">UNIDENTIFIED BODIES</a> <a
				href="html/crimetypes.html" style="width: 12.83vw;">CRIME TYPES</a>

			<a class="active" href="login.jsp" style="width: 12.83vw;">LOGIN</a>


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



	<!----------------Police Login Page Container Start------------------>

	<h1>Welcome to Login Page!</h1>
	<br>
	<form method="post" action="login_page">
		<table align="center">
				<tr><td style="color:red; font-size:18px;" colspan="3"><center><div id="expired"></div></center> </td></tr>
		<tr><td style="color:red; font-size:18px;" colspan="3"><center><div>${Login}</div></center> </td></tr>
			<tr>
				<td><label for="loginID" style="font-size: medium;">Login Id:<span class="required">*</span>
				</label></td>
				<td><input type="text" name="loginID" placeholder="Enter login Id"
					required></td>
			</tr>
			<tr>
				<td><label for="password" style="font-size: medium;">Password:<span class="required">*</span>
				</label></td>
				<td><input type="password" name="password"
					placeholder="Enter Password" required></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><button type="submit"
						id="verify">Login</button></td>
			</tr>
						<tr>
				<td align="center" colspan="2"><a href="register.jsp"
					style="color: red; font-size: 16px; margin-left: 0px; padding-bottom: 30px;"
					>Register Here</a></td>
			</tr>
		</table>
	</form>

	<!-------- Footer Begins ------->

	<!-------- Footer Ends ------->

</body>


</html>