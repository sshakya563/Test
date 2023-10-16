/**
 * 
 *//*window.onload=function () {
  render();
};
function render() {
    window.recaptchaVerifier=new firebase.auth.RecaptchaVerifier('recaptcha-container');
    recaptchaVerifier.render();
}
*/
firebase.auth().settings.appVerificationDisabledForTesting = true;
window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container');
function phoneAuth() {
    //get the number
    
    var number=document.getElementById('number').value;
    //phone number authentication function of firebase
    //it takes two parameter first one is number,,,second one is recaptcha
    firebase.auth().signInWithPhoneNumber(number,window.recaptchaVerifier).then(function (confirmationResult) {
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
 		document.getElementById("msg").innerHTML="Registering..";
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
      