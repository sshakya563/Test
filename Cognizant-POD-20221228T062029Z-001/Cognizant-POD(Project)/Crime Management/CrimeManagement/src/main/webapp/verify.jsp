<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>User Login</title>
<link rel="stylesheet" href="./style/policelogin.css.css">
<link rel="stylesheet" href="style/nav.css">

<!-- BEGIN INCLUDE HEADER AND FOOTER -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous">
	
</script>





<!-- END INCLUDE HEADER AND FOOTER -->
<style>
 #generateotp{
     
     background-color: #04AA6D;
     color: white;
     cursor: pointer;
    width: 90px;
     height:25px;
    color: white;
     text-align: center;
     font-size: 14px;
   
 }
 #generate:hover {
    opacity: 0.9;
  }
#verify{
     background-color: #04AA6D;
    font-size:20px;
     color: white;
    height:30px;
    width:9vw;
    border-radius: 12px;
    position: relative;
    margin-top: 20px;
    margin-bottom: 20px;
 }
.required {
	color: red;
}

#verify:disabled {
  cursor: not-allowed;
  pointer-events: all !important;
}

#generateotp:disabled {
  cursor: not-allowed;
  pointer-events: all !important;
}

</style>


</head>




<body style="background-color: white; overflow: hidden;">
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

			<span> C<br>O<br>V<br>I<br>D<br>
			<br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
			</span>

		</div>

	</a>

	<!----------------------------Right Covid HelpLine Pannel END---------------------------------->



	<!--------------------------------------------- USER LOGIN BEGIN ------------------------------------------------------------------------->

	<h1>Welcome to Login Page!</h1>
	<form id="loginForm" method="post" action="verify_page" onsubmit="return false;">
		<table align="center">
			<tr>
				<td style="color: red; font-size: 18px;" colspan="3"><center>
						<div id="msg">${login}</div>
					</center></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			
			
			<tr>
				<td><label for="number">Enter Mobile No:<span
						class="required">*</span></label></td>
				<td><input type="tel" name="mobilenumber"
					placeholder="+91123456..." id="number" readonly value=<%= (String) session.getAttribute("number") %>></td>
				<td><input type="button" value="Send OTP"
					id="generateotp" onclick="phoneAuth();"></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td><div id="recaptcha-container"></div></td>
			</tr>
			<tr>
			<td><label for="recaptcha">Captcha:<span
						style="color: red">&#42;</span></label></td>
				<td><div id="recaptcha"
						class="g-recaptcha brochure__form__captcha"
						data-sitekey="6LefpMIaAAAAADXI9CeYpUC2piRAeTkW6yI9c5GR" data-callback="enableotpBtn" style="width:150px;"></div></td></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td><label for="username">Enter OTP:<span
						class="required">*</span></label></td>
				<td><input type="text" id="verificationCode"
					placeholder="Enter verification code" required disabled></td>

			</tr>
			<tr></tr>
			<tr></tr>
	
			<tr>
			
				<td colspan="2">
				<center>
				<input type="submit" id="verify" value="Login"
					id="verify" onclick="codeverify();" disabled>
					</center>
					</td>
					
			</tr>
			
			<tr></tr>
			<tr></tr>
		</table>
	</form>


	<!--------------------------------------------- USER LOGIN ENDS ------------------------------------------------------------------------>

<script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>

	<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#config-web-app -->

	<script>
		// Your web app's Firebase configuration
		var firebaseConfig = {
			apiKey : "AIzaSyCYZuTcSDjfqEASRxQnmv6GXlSfqLolSPw",
			authDomain : "crime-management-f958a.firebaseapp.com",
			projectId : "crime-management-f958a",
			storageBucket : "crime-management-f958a.appspot.com",
			messagingSenderId : "858998749681",
			appId : "1:858998749681:web:a7925ab05e427f310f2c50"
		};
		// Initialize Firebase
		firebase.initializeApp(firebaseConfig);
	</script>
	<script>
	
    function enableotpBtn(){
    	document.getElementById("verificationCode").disabled = false;
        document.getElementById("verify").disabled = false;
    }
	</script>
	<script src="js/loginNumberAuth.js" type="text/javascript"></script>
	<script src="https://www.google.com/recaptcha/api.js"></script>






	<!-------- Footer Begins ------->

	<!-------- Footer Ends ------->


</body>
</html>
