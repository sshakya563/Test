window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
            "recaptcha-container",
             {
               size: "invisible",
          
           }
       );
function phoneAuth() {
    //get the number
    
   var phoneNumber = "+91"+document.getElementById("number").value;
             var appVerifier = window.recaptchaVerifier;
            firebase.auth().signInWithPhoneNumber(phoneNumber,appVerifier).then(function (confirmationResult) {
        //s is in lowercase
        window.confirmationResult=confirmationResult;
        coderesult=confirmationResult;
        console.log(coderesult);
         enableBtn();
        document.getElementById("msg").innerHTML="Message sent";
    }).catch(function (error) {
        document.getElementById("msg").innerHTML=error.message;
    });
}

 
function codeverify() {
    var code=document.getElementById('verificationCode').value;
    coderesult.confirm(code).then(function (result) {
		var user=result.user;
        console.log(user);
 		
 		required();
 
        }).catch(function (error) {
        document.getElementById("msg").innerHTML="Invalid OTP."
    });
}

function required()
{
var empt = document.forms["regForm"]["fullname"].value;
var empt1 = document.forms["regForm"]["emailid"].value;
var empt2 = document.forms["regForm"]["password"].value;
var empt3 = document.forms["regForm"]["cardtype"].value;
var empt4 = document.forms["regForm"]["idno"].value;
var empt5 = document.forms["regForm"]["mobilenumber"].value;
if (empt == "" || empt1=="" || empt2==""|| empt3==""|| empt4=="" || empt5=="")
{
document.getElementById("msg").innerHTML="Please fill all the fields";
return false;
}
else 
{
document.getElementById("msg").innerHTML="Registering..";
submitform();
}
}

function submitform()
{

var delayInMilliseconds = 1000; //1 second

setTimeout(function() {
    document.getElementById("regForm").submit();
}, delayInMilliseconds);
      }
      




 function enableBtn(){
 		document.getElementById("verificationCode").disabled = false;
        document.getElementById("verify").disabled = false;
    }
      