<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Missing Persons</title>
     <link rel="stylesheet" href="style/missingpersons.css">


    <!-- BEGIN INCLUDE HEADER AND FOOTER -->
    <script src="js/jquery-1.10.2.js"></script>



    <!-- END INCLUDE HEADER AND FOOTER -->

<script src="js/missingpersons.js"></script>
<link rel="stylesheet" href="style/nav.css">
<script>
function logout(){
	localStorage.setItem("expired", "Session expired. Please login again.");
//	preventBack();
	document.getElementById("logout").submit();
}
</script>
</head>




<body style="background-color: white">
    <!-------------------------------- Header --------------------------------------->
    <header>
        <div id="header" style="height: 11.94vh; background-color: rgb(249,249,249);text-align:center;top:50%;">
    
            <div id="logo" style="position: absolute; margin-left: 1.95vw; height:9.28vh;width:10.42vw;margin-top: 1.33vh;margin-bottom: 1.33vh;background-color: inherit;">
    
                <!-- Logo Image to be added -- --> 
    <img src="./Images/Logo.jpeg" style="height:4em;width: 5em;">  
    
            </div>
    
            <span style="position: absolute; color: rgb(237,28,36);font-weight:bold;font-size:4.23vw;left: 21.48vw;top:1.86vh;z-index: 1;">ONLINE CRIME MANAGEMENT</span>
    
        </div>
        <%
  
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expire",0);

if(session.getAttribute("username")==null){
	response.sendRedirect("../login.jsp");
}
%>
    
        <!-------------------------------- Navigation Bar --------------------------------------->
        <div style="background-color: rgb(0,51,153);height:5.31vh; width: 100%;z-index: 1" id="nav">
            <a href="../homepage.jsp" style="width: 12.5vw;">HOME</a>
            <a href="newsfinal.jsp" style="width: 12.5vw;">NEWS</a>
            <a href="mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a>
            <a class="active"  href="missingpersons.jsp" style="width: 15.43vw;">MISSING PERSONS</a>
            <a href="unidentifiedbodies.jsp" style="width: 17.38vw;">UNIDENTIFIED BODIES</a>
            <a href="crimetypes.jsp" style="width: 12.83vw;">CRIME TYPES</a>
            <form id="logout" action="LogOutController"></form>
            <a onclick='return logout()' style="width: 12.83vw; cursor: pointer;">LOGOUT</a>

    
    
        </div>
        </header>
        <!-------------------------------- Footer --------------------------------------->
    <footer style="background-color: rgb(0,51,153); height: 4.38vh;position: absolute;top:94.16vh; width: 99%;padding-top: 1.33vh;">
        <p style="color:rgb(249,249,249);font-size:2.12vh; padding-left: 11.72vw;display: inline;"><i>Disclaimer </i></p>
        <p style="color:rgb(249,249,249);font-size:2.12vh; padding-left: 18vw;display: inline;"><i>Privacy Policy </i></p>
        <p style="color:rgb(249,249,249);font-size:2.12vh; padding-left: 18vw;display: inline;"><i>Terms of use</i></p>
        <p style="color:rgb(249,249,249);font-size:2.12vh; padding-left:18vw; display:inline;"><i>Important Sites</i></p>
    
    </footer>
    <!----------------------------Left HelpLine Pannel------------------------------------------>
    <div class="helpline" style="width:15%">
        <div id="icon" style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height:27.1vw;width:9.95vw;margin-top:80px;background-color: rgb(0,51,153);color: white;">
            <img src="./Images/telephone.png" style="height:4.28vh;width:2.42vw;z-index: 1"><span style="position: absolute; margin-top: 8px;">HELPLINE </span>
            <br><br>
            <p>Report A Crime: <br> 100</p>
            <p>Women Helpline: <br> 1091</p>
            <p>Child Helpline: <br> 1098</p>
            <p>Anti Ragging: <br> 1800-180-5522</p>
            <p>Ambulance: <br>108</p>
            <p>Railway Protection: <br> 1322</p>
    
    
    
        </div>
         </div>
    
    <!----------------------------Left HelpLine Pannel--END-------------------------------->
        
    
    <!----------------------------Right Covid HelpLine Pannel---------------------------------->
        
            <a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf" target="_blank">
                <img src="./Images/telephone.png" style="width: inherit;height: 40px;padding-left: 0px;position: absolute; margin-left:  96.5vw;margin-top:100px;z-index: 1;border-radius: 25px; " />
                <div id="covid-helpline" style=" padding-top: 3vw; position: absolute; margin-left:  96.5vw; border: 1px black solid;border-radius: 12px; height:17.3vw;width:1.68vw;margin-top:100px;background-color: rgb(0,51,153);color: white;padding-left: 10px;">
    
                    <span>
                        C<br>O<br>V<br>I<br>D<br><br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
                    </span>
    
                </div>
    
            </a>
        
    <!----------------------------Right Covid HelpLine Pannel END---------------------------------->


<!-------- IMAGES BEGIN ------------------>
               <div id="photo" style="position: absolute; margin-left: 21vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:6vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://3.imimg.com/data3/TP/AM/MY-15134860/passport-size-photos-250x250.jpg" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;"  ></div>
            <div id="photo" style="position: absolute; margin-left: 40vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:6vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://i.pinimg.com/236x/18/af/35/18af351094a7337c8aec6f6b27c8aa14.jpg" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;" ></div>
            <div id="photo" style="position: absolute; margin-left: 59vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:6vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://pbs.twimg.com/profile_images/946335033/passport_size.JPG" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;" ></div>
            <div id="photo" style="position: absolute; margin-left: 77vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:6vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmsxE7x3H0zvD6iP9Nhv1J_GsnNH1r_3qoXHBxmjfD88nLkVtS&s" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;"  ></div>
            <div id="photo" style="position: absolute; margin-left: 21vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:20vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1_04Wafk1zlK6iv9arDaF0NA4iiOFEIX_cVHFmChvbcVFXRaE&s" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;" ></div>
            <div id="photo" style="position: absolute; margin-left: 40vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:20vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://i.pinimg.com/originals/7e/cf/43/7ecf4340b8aa2087ea351fc809cbd4bb.jpg" width="182vw" height="151.7vw"  onclick="details()" style="cursor: pointer;"></div>
            <div id="photo" style="position: absolute; margin-left: 59vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:20vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcmpuNbhhJsdUPlBzepEYo46WRG0st4dqpZk97bwSV6icTn_rq&s" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;" ></div>
            <div id="photo" style="position: absolute; margin-left: 77vw; float: left;  border: 1px black solid; height:10vw;width:12vw; margin-top:20vw; background-color: white; color: black;font-size: 1.5vw; "><img src="https://upload.wikimedia.org/wikipedia/commons/4/48/Taslima_Nasrin_2019.jpg" width="182vw" height="151.7vw" onclick="details()" style="cursor: pointer;"  ></div>
            <div style="position: absolute; margin-left: 12vw;  height:1.95vw;width:25vw;margin-top:2.7vw; font-size: 1.5vw;font-weight: bold;">Have You Seen...</div>
<!----------- IMAGES END ----------------->
    
    <!-------- DETAILS BEGIN ------------->
     <div id="details" style="position: absolute;z-index: 2;display: none;">
         <span id='close' onclick="hide()" style="cursor:default;display: block";>x</span>
        <div id="box" style="position: absolute; margin-left: 25vw;float: left; border: 1px black solid; height:46vw;width:44vw; margin-top: -8vw; background-color: aliceblue; color: white; " >
        <div id="heading" style="position: absolute;  border: 1px black solid; height:2.7vw;width:43vw;  background-color:mediumblue; color: white; font-size: 1.7vw; text-align: left; padding-top: 0.7vw;padding-left: 1vw" >MISSING PEOPLE DETAILS</div>
      <div id="photo" style="position: absolute; margin-left: 31.5vw;float: left;  border: 1px black solid; height:10vw;width:8vw; margin-top:7vw; background-color: white; color: black;border-radius: 0.7vw;font-size: 1.5vw; text-align: center" >
          <img src="https://3.imimg.com/data3/TP/AM/MY-15134860/passport-size-photos-250x250.jpg" style="width:140px;height: 200px;"></div>      
    <div id="name" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:7vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >NAME<span style="padding-left: 10px;font-size: 16px;">Tanya</span></div>
    <div id="age" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:11vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >AGE<span style="padding-left: 10px;font-size: 16px;">11 years</span></div>   
    <div id="add" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:5vw;width:22vw; margin-top:15vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >Address<span style="padding-left: 10px;font-size: 16px;">Unknown</span></div>
    <div id="state" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:22vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >State<span style="padding-left: 10px;font-size: 16px;">Karnataka</span></div>
    <div id="gender" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:26vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >GENDER <span style="padding-left: 10px;font-size: 16px;">FEMALE</span></div>
    <div id="height" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:30vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >HEIGHT<span style="padding-left: 10px;font-size: 16px;">4'2"</span></div>
    <div id="fname" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:34vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >FATHER NAME<span style="padding-left: 10px;font-size: 16px;">Jainam</span></div>
    <div id="mark" style="position: absolute; margin-left: 2vw;float: left; border: 1px black solid; height:1.7vw;width:22vw; margin-top:38vw; background-color: white; color: black;border-radius: 0.7vw;padding: 0.5vw;font-size: 1.0vw" >IDENTIFICATION MARK<span style="padding-left: 10px;font-size: 16px;">Mole on right ear</span></div>
    <h1 style="color: mediumblue;position: absolute; margin-left: 2vw;float: left;margin-top:43vw; background-color: inherit; padding: 0.5vw;font-size: 1.0vw;text-align: center ;height:2.0vw;width:40vw;font-size: 1.0">If anyone seen her please contact: Mr.xyz, 9876543219</h1>
    </div>
            </div>
    
    <!--------- DETAILS END -------------->
   

    <!-------- Footer Begins ------->
   
    <!-------- Footer Ends ------->

</body>
