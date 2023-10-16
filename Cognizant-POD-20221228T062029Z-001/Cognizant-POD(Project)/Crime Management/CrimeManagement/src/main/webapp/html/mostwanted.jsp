<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Most Wanted</title>

    <!-- BEGIN INCLUDE HEADER AND FOOTER -->
    <script src="js/jquery-1.10.2.js"></script>



    <!-- END INCLUDE HEADER AND FOOTER -->
    
    <!-- BEGIN INCLUDE SCRIPT FILE  -->
    <script src="./js/mostwanted.js"></script>
<link rel="stylesheet" href="style/nav.css">
<script>
function logout(){
	localStorage.setItem("expired", "Session expired. Please login again.");
//	preventBack();
	document.getElementById("logout").submit();
}

</script>
</head>




<body style="background-color: rgb(249,249,249)">
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
            <a class="active"  href="mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a>
            <a href="missingpersons.jsp" style="width: 15.43vw;">MISSING PERSONS</a>
            <a href="unidentifiedbodies.jsp" style="width: 17.38vw;">UNIDENTIFIED BODIES</a>
            <a href="crimetypes.jsp" style="width: 12.83vw;">CRIME TYPES</a>
            <form id="logout" action="LogOutController"></form>
            <a onclick='return logout()' style="width: 12.83vw;cursor: pointer;">LOGOUT</a>
            
    
    
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



<!------------------------- Most Wanted Slide Show --------------------------------->
    
    
    <div class="slideshow" style="position: absolute;margin-left: 29.22vw;margin-top:4.95vw;border-radius: 12px;height:23.73vw;width: 48.36vw;border: 2px black solid;z-index: 11; ">

        <div class="Slides" id="one" >
            <div class="numbertext" style="position: absolute;font-size:26px;top:385px;left:375px;">1</div>
            <img src="./Images/mw_1.PNG" style="position: absolute;top:74px;left:40px;">
            <div class="text" style="position: absolute; left:78px;top:58px;font-size: 20px;">
                <pre>
                Name: Alexis Flores         Age: 42 yrs
                
                Gender: Male                Height: 6'5"
                
                State: Maharashtra
                
                Description:<span style="text-align: justify;font-size:18px;">
                  Flores is wanted for the kidnapping, rape and 
                  murder of ten-year-old Iriana DeJesus in 2018. 
                </span>
                </pre>
            </div>
           
        </div>
        
        <div class="Slides" style="display: none;" id="two">
           <div class="numbertext" style="position: absolute;font-size:26px;top:385px;left:375px;">2</div>
            <img src="./Images/mw_2.PNG" style="position: absolute;top:74px;left:40px;">
            <div class="text" style="position: absolute; left:78px;top:52px;font-size: 20px;">
                <pre>
                Name: Ayush Khosh         Age: 46 yrs
                
                Gender: Male                Height: 6'1"
                
                State: Uttar Pradesh
                
                Description:<span style="text-align: justify;font-size:18px;">
                  Ayush is wanted in connection with the 2016 
                  murder of a 23-year-old woman, Natasha Bella, 
                  whom he had previously dated. 
                </span>
                </pre>
            </div>
           
        </div>
    
        <div class="Slides" style="display: none;">
       <div class="numbertext" style="position: absolute;font-size:26px;top:385px;left:375px;" id="three">3</div>
            <img src="./Images/mw_3.PNG" style="position: absolute;top:74px;left:40px;">
            <div class="text" style="position: absolute; left:78px;top:53px;font-size: 20px;">
                <pre>
                Name: Jimit P.         Age: 42 yrs
                
                Gender: Male                Height: 5'5"
                
                State: Goa
                
                Description:<span style="text-align: justify;font-size:18px;">
                  Jimit is wanted for the murder of his wife on 
                  May 12, 2012. Jimit allegedly stabbed his wife 
                  to death just hours after their wedding.
                </span>
                </pre>
            </div>
           
        </div>

     

        <a class="dot prev" onclick="plusSlides(-1)" style="position: absolute;left: 225px;top:380px;font-weight: bold;font-size: 28px;cursor: pointer;">&#10094;</a>
        <a class="dot next" onclick="plusSlides(1)" style="position: absolute;left: 515px;top:380px;font-weight: bold;font-size: 28px;cursor: pointer;">&#10095;</a>

    </div>








    <a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf" target="_blank">
        <img src="Images/telephone.png" style="width: inherit;height: 40px;padding-left: 0px;position: absolute; margin-left:  96.5vw;margin-top:100px;z-index: 1;border-radius: 25px; " />
        <div id="covid-helpline" style=" padding-top: 3vw; position: absolute; margin-left:  96.5vw; border: 1px black solid;border-radius: 12px; height:17.3vw;width:1.68vw;margin-top:100px;background-color: rgb(0,51,153);color: white;padding-left: 10px;">

            <span>
                C<br>O<br>V<br>I<br>D<br><br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
            </span>

        </div>

    </a>                           

    <!-------- Footer Begins ------->

    <!-------- Footer Ends ------->
  

</body>
</html>    
    
    
    
    
    
    
    
    
