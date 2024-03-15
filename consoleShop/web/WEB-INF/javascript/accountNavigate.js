/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function media(x) {
  if (x.matches) { // If media query matches
    infoNavigate.classList.remove("col-sm-2");
    infoNavigate.style.display = "none";
    infoWrapper.classList.add("col-lg-12");

    
  } else {
    infoNavigate.classList.add("col-sm-2");
    infoNavigate.style.display = "flex";
    infoWrapper.classList.remove("col-lg-12");
  }
}

// Create a MediaQueryList object
var x = window.matchMedia("(max-width: 1174px)");
var infoNavigate = document.querySelector(".info__navigate");
var infoWrapper = document.querySelector(".info__wrapper");

// Call listener function at run time
media(x);

// Attach listener function on state changes
x.addEventListener("change", function() {
  media(x);
});

