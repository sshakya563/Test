<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Home Page</title>

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
	response.sendRedirect("login.jsp");
}
%>
    
        <!-------------------------------- Navigation Bar --------------------------------------->
        <div style="background-color: rgb(0,51,153);height:5.31vh; width: 100%;z-index: 1" id="nav">
            <a class="active" href="homepage.jsp" style="width: 12.5vw;">HOME</a>
            <a href="html/newsfinal.jsp" style="width: 12.5vw;">NEWS</a>
            <a href="html/mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a>
            <a href="html/missingpersons.jsp" style="width: 15.43vw;">MISSING PERSONS</a>
            <a href="html/unidentifiedbodies.jsp" style="width: 17.38vw;">UNIDENTIFIED BODIES</a>
            <a href="html/crimetypes.jsp" style="width: 12.83vw;">CRIME TYPES</a>
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
    
    


        <div id="safety" style="position: absolute; margin-left: 32.22vw;border: 1px black solid; height:1vw;width:43.82vw; margin-top:1.95vw; background-color: white;font-size: 16px;padding: 6px;">
            <span style="color: red;font-weight: bold;">Safety Tip : </span>
            <marquee behavior="scroll" direction="left" style="position: absolute;top:0.4vw; margin-right: 12vh; right: inherit;" id="tip">Stopping the spread starts with you. Wear a mask. Clean your hands. Maintain safe distance. Get Vaccinated.</marquee>
        </div>

        <script>
            var text = [
                "To prevent the spread of COVID-19: Clean your hands often. Use soap and water, or an alcohol-based hand rub.",
                "To prevent the spread of COVID-19: Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze. ",
                "To prevent the spread of COVID-19: Maintain a safe distance from anyone who is coughing or sneezing. ",
                "To prevent the spread of COVID-19: Wear a mask when physical distancing is not possible. ",
                "To prevent the spread of COVID-19: If you have a fever, cough and difficulty breathing, seek medical attention. ",
                "To prevent the spread of COVID-19: Donâ€™t touch your eyes, nose or mouth. ",
                "Stopping the spread starts with you. Wear a mask. Clean your hands. Maintain safe distance. Get Vaccinated."
            ];
            var counter = 0;
            var elem = document.getElementById("tip");
            var inst = setInterval(change, 86400000);

            function change() {
                elem.innerHTML = text[counter];
                counter++;
                if (counter >= text.length) {
                    counter = 0;
                    // clearInterval(inst); // uncomment this if you want to stop refreshing after one cycle
                }
            }

        </script>


        <div id="gallery" style="position: absolute; margin-left: 30.22vw;float: left; border: 1px black solid; height:22.73vw;width: 47.36vw; margin-top:6.95vw;border-radius: 12px;">
            <img src="./Images/gallery_image.PNG" style="height: 100%;width: 100%;border-radius: 12px;">




        </div>
        <a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf" target="_blank">
            <img src="./Images/telephone.png" style="width: inherit;height: 40px;padding-left: 0px;position: absolute; margin-left:  96.5vw;margin-top:100px;z-index: 1;border-radius: 25px; " />
            <div id="covid-helpline" style=" padding-top: 3vw; position: absolute; margin-left:  96.5vw; border: 1px black solid;border-radius: 12px; height:17.3vw;width:1.68vw;margin-top:100px;background-color: rgb(0,51,153);color: white;padding-left: 10px;">

                <span>
                    C<br>O<br>V<br>I<br>D<br><br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
                </span>

            </div>

        </a>
   

    <!-------- Footer Begins ------->
   
    <!-------- Footer Ends ------->

</body>
