window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier(
            "recaptcha-container",
             {
               size: "invisible",
          
           }
       );
function phoneAuth() {
    //get the number
    
   var phoneNumber =document.getElementById("number").value;
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
 		document.getElementById("msg").innerHTML="Logging..";
 		submitform();
        }).catch(function (error) {
        document.getElementById("msg").innerHTML="Invalid OTP."
    });
}

function submitform()
{
 var delayInMilliseconds = 1000; //1 second

setTimeout(function() {
    document.getElementById("loginForm").submit();
}, delayInMilliseconds);

}

 function enableBtn(){
        document.getElementById("verify").disabled = false;
    }
   