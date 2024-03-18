/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var btnSubmit = document.querySelector(".personal__submit");
var phoneInput = document.getElementById("phoneNumber");
//alert when submit
btnSubmit.onclick = (event) => {
    var answer = window.confirm("Save ?");
    if (!answer) {
        event.preventDefault();
    } 

};
// phone only accept number
phoneInput.oninput = (e) => {
    const reg = '^[0-9]+$';
    if (!e.target.value.match(reg)) {
        e.target.value = "";
    }

};

