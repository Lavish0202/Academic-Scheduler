/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function isFilled(str) {
    if (str.length > 0) {
        for (var i = 0; i < str.length; i++) {
            var ch = ' ';
            if (str.charAt(i) !==ch) {
                return true;
            }
        }
        return false;
    }
    return false;
}
    function isPassword(str) {
    if (str.length >=2 && str.length<=8) {
        for (var i = 0; i < str.length; i++) {
            var ch = ' ';
            if (str.charAt(i) !== ch) {
                return true;
            }
        }
        return false;
    }
    return false;
}

function isMobile(str) {
    return str.length === 10 && /\d{10}/.test(str);
}

function validateLogin() {
   var name = document.getElementById("name").value;
    var f1 = isFilled(name);
    if (!f1){
        window.alert("user name required");}
    var pass = document.getElementById("pass").value;
    var f2 = isPassword(pass);
    if (!f2){
        window.alert("Enter more than 2 and less then 8 digit password");}
    var pn =document.getElementById("pn").value;
    var f3 =isMobile(pn);
    if(!f3){
       window.alert("Enter a valid 10 digit number");}
    return f1 && f2 && f3;
}


