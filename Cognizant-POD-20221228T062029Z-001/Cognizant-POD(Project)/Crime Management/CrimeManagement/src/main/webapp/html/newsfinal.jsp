<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>News</title>
     


    <!-- BEGIN INCLUDE HEADER AND FOOTER -->
    <script src="js/jquery-1.10.2.js"></script>

    <!-- END INCLUDE HEADER AND FOOTER -->
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
            <a class="active"  href="newsfinal.jsp" style="width: 12.5vw;">NEWS</a>
            <a href="mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a>
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
    
    <!-------- NEWS BEGIN ------------->
     <div style="position: absolute; margin-left: 14vw;  height:1.95vw;width:25vw;margin-top:2.5vw; font-size: 2vw;font-weight: bold;">News...</div> 
    <div style="position: absolute; margin-left: 17vw;  height:12.5vw;width:70vw;margin-top:7vw; font-size: 2vw;border: 1px black solid;">
    <div style="position: absolute; margin-left: 1.5vw;  height:9vw;width:8vw;margin-top:1.5vw; font-size: 2vw;border: 1px black solid;">
        <img src="https://resize.indiatvnews.com/en/resize/newbucket/715_-/2021/04/delhi-crime-confession-1618154787.jpg" width="123vw" height="138vw"  ></div>
     <a style="padding-left: 13vw; font-size:1.5vw; font-weight: bold" href="https://www.indiatvnews.com/crime/nasa-cameras-delhi-police-solve-mangolpuri-murder-case-crime-latest-news-697019" target="_blank">Your crime has been captured by 'NASA' cameras, says Delhi Police, accused confess<br></a>
          <a style="font-size: 1.4vw; padding-left: 13vw;float: left"><br>Two murder accused in the national capital confessed to the crime after Delhi Police told them that their crime has been captured by 'NASA' cameras.Playing smart and strategically, Delhi cops tried the murder accused telling them that their crime has been caught in NASA cameras.</a>  <a style=" font-size: 1.5vw;padding-left: 62vw;color: red;" href="https://www.indiatvnews.com/crime/nasa-cameras-delhi-police-solve-mangolpuri-murder-case-crime-latest-news-697019" target="_blank" class="item;">Read more</a>   
        
    </div> 
    <div style="position: absolute; margin-left: 17vw;  height:12.5vw;width:70vw;margin-top:22vw; font-size: 2vw;border: 1px black solid;"><div style="position: absolute; margin-left: 1.5vw;  height:9vw;width:8vw;margin-top:1.5vw; font-size: 2vw;border: 1px black solid;">        
        <img src="https://bsmedia.business-standard.com/_media/bs/img/article/2021-03/03/full/1614780972-7558.jpg" width="123vw" height="138vw"  ></div> 
    <a style="padding-left: 13vw; font-size:1.5vw; font-weight: bold;padding-bottom: 20px;" href="https://www.business-standard.com/article/current-affairs/one-in-two-indian-adults-fell-prey-to-cybercrime-in-last-12-months-report-121041900177_1.html" target="_blank">One in two Indian adults fell prey to cybercrime in last 12 months: Report<br></a>
        <a style="font-size: 1.4vw; margin-left:13vw;float: left;padding-top: 10px;">Seven in 10 Indian adults believed that remote work has made it much easier for hackers and cybercriminals to take advantage of them, a new report revealed on Monday.More than one in two Indian adults (59 per cent) experienced cybercrime in the last 12 months, as seven in 10 Indian adults.<br></a>
        <a style=" font-size: 1.5vw; padding-left: 62vw;color: red" href="https://www.business-standard.com/article/current-affairs/one-in-two-indian-adults-fell-prey-to-cybercrime-in-last-12-months-report-121041900177_1.html" target="_blank" class="item">Read more</a>
    </div>
            
    
    <!--------- NEWS END -------------->
   

    <!-------- Footer Begins ------->
    
    <!-------- Footer Ends ------->

</body>
