<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <!-- Chrome, Firefox OS and Opera -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Complaint Status</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/nav.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- CSS Begin-->
    <style>
        .col-form-label,
        .form-control {
            margin-top: -8px;
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

<body>

    <!-------------------------------- Header --------------------------------------->
    <header>
        <div id="header" style="height: 11.94vh; background-color: rgb(249, 249, 249); text-align: center; top: 50%;">

            <div id="logo" style="position: absolute; margin-left: 1.95vw; height: 9.28vh; width: 10.42vw; margin-top: 1.33vh; margin-bottom: 1.33vh; background-color: inherit;">

                <!-- Logo Image to be added -- -->
                <img src="./Images/Logo.jpeg" style="height: 5em; width: 7em;">

            </div>

            <span style="position: absolute; color: rgb(237, 28, 36); font-weight: bold; font-size: 4.23vw; left: 21.48vw; top: .06vh; z-index: 1;">ONLINE
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
        <div style="background-color: rgb(0, 51, 153); height: 5.31vh; width: 100%; z-index: 1" id="nav">
            <a href="homepage.jsp" style="width: 12.5vw;">HOME</a> <a href="html/newsfinal.jsp" style="width: 12.5vw;">NEWS</a> <a href="html/mostwanted.jsp" style="width: 15.43vw;">MOST WANTED</a> <a href="html/missingpersons.jsp" style="width: 15.43vw;">MISSING
                PERSONS</a> <a href="html/unidentifiedbodies.jsp" style="width: 17.38vw;">UNIDENTIFIED
                BODIES</a> <a href="html/crimetypes.jsp" style="width: 12.83vw;">CRIME TYPES</a> 
                <form id="logout" action="LogOutController"></form>
                <a onclick='return logout()' style="width: 13.83vw;cursor: pointer;">LOGOUT</a>


        </div>



    </header>
    <!-------------------------------- Footer --------------------------------------->
    <footer style="background-color: rgb(0, 51, 153); height: 4.68vh; position: absolute; top: 94.16vh; width: 99%; padding-top: 1.33vh;">
        <p style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 11.72vw; display: inline;">
            <i>Disclaimer </i>
        </p>
        <p style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
            <i>Privacy Policy </i>
        </p>
        <p style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
            <i>Terms of use</i>
        </p>
        <p style="color: rgb(249, 249, 249); font-size: 2.12vh; padding-left: 18vw; display: inline;">
            <i>Important Sites</i>
        </p>

    </footer>
    <!----------------------------Left HelpLine Pannel------------------------------------------>
    <div class="helpline" style="width: 15%">
        <div id="icon" style="position: absolute; margin-left: 0vw; border: 1px black solid; border-radius: 18px; height: 24.1vw; width: 9.95vw; margin-top: 80px; background-color: rgb(0, 51, 153); color: white;">
            <img src="./Images/telephone.png" style="height: 6.28vh; width: 2.42vw; z-index: 1"><span style="position: absolute; margin-top: 8px;">HELPLINE </span> <br>
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

    <a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf" target="_blank"> <img src="./Images/telephone.png" style="width: inherit; height: 33px; padding-left: 0px; position: absolute; margin-left: -2vw; margin-top: 100px; z-index: 1; border-radius: 25px;" />
        <div id="covid-helpline" style="padding-top: 3vw; position: absolute; margin-left: 97.9vw; border: 1px black solid; border-radius: 12px; height: 21.3vw; width: 2.0vw; margin-top: 100px; background-color: rgb(0, 51, 153); color: white; padding-left: 10px;">

            <span> C<br>O<br>V<br>I<br>D<br> <br>H<br>E<br>L<br>P<br>L<br>I<br>N<br>E<br>
            </span>

        </div>

    </a>

    <!----------------------------Right Covid HelpLine Panel END---------------------------------->
    <br>

    <div class="container" style="width: 110vh; background-color: ghostwhite; margin-top:40px;">
        <h3 style="background-color: rgb(0, 51, 153); color: ghostwhite; height: 5.31vh; width: 100%; text-align: center; padding-top: 0.6vw; font-size: large;">Police Details
        </h3>
        <br>
        <form method="post" action="UpdateController">
            <div class="form-group row">
                <label for="stationId" class="col-sm-3 col-form-label">Station ID: </label>
                <div class="col-sm-9">
                    <input type="text" readonly class="form-control" id="stationId" name="stationId" placeholder="Enter Station ID" value="<%=(String) session.getAttribute("police-stationId") %>">
                </div>
            </div>
            <div class="form-group row">
                <label for="address" class="col-sm-3 col-form-label">Address:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="stationAddress" name="stationAddress" placeholder="Enter Station Address" value="<%=(String) session.getAttribute("police-stationAddress") %>">
                </div>
            </div>
            <div class="form-group row">
                <label for="pinCode" class="col-sm-3 col-form-label">Pin Code:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="pinCode" name="pinCode" placeholder="Enter Pin Code" value="<%=(Integer) session.getAttribute("police-pincode") %>" >
                </div>
            </div>
            <div class="form-group row">
                <label for="address" class="col-sm-3 col-form-label">SHO Name:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="shoName" name="shoName" placeholder="Enter SHO Name" value="<%=(String) session.getAttribute("police-sho") %>">
                </div>
            </div>

            <center>
                <button type="submit" id="submit" class="btn btn-success">Update Details</button>
                <br><br>
                <div style="color:red; font-size:18px;" colspan="3">
                    <center>
                        <div>${result}</div>
                    </center>
                </div>
            </center>
        </form>
    </div>
</body>
</html>