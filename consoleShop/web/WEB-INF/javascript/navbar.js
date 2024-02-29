//nav menu
var menuIcon = document.querySelector(".nav__menu");
var  dropdownMenu = document.querySelector(".dropdown__container");
menuIcon.onclick = ()=>{
    dropdownMenu.classList.toggle("active");
};





//Show search bar and modal
var magIcon = document.querySelectorAll(".nav__search-icon")[0];
var searchForm = document.getElementById("search__form");
var nav = document.querySelector(".nav");
magIcon.onclick = ()=>{
    if(searchForm.style.display === "block"){
        searchForm.style.display = "none";
        
        enableScroll();
    }
    else{
        dropdownMenu.classList.remove("active");
        searchForm.style.display = "block";
        disableScroll();
    }
};


var keys = {37: 1, 38: 1, 39: 1, 40: 1};

function preventDefault(e) {
  e.preventDefault();
}

function preventDefaultForScrollKeys(e) {
  if (keys[e.keyCode]) {
    preventDefault(e);
    return false;
  }
}

// modern Chrome requires { passive: false } when adding event
var supportsPassive = false;
try {
  window.addEventListener("test", null, Object.defineProperty({}, 'passive', {
    get: function () { supportsPassive = true; } 
  }));
} catch(e) {}

var wheelOpt = supportsPassive ? { passive: false } : false;
var wheelEvent = 'onwheel' in document.createElement('div') ? 'wheel' : 'mousewheel';

// call this to Disable
function disableScroll() {
  window.addEventListener('DOMMouseScroll', preventDefault, false); // older FF
  window.addEventListener(wheelEvent, preventDefault, wheelOpt); // modern desktop
  window.addEventListener('touchmove', preventDefault, wheelOpt); // mobile
  window.addEventListener('keydown', preventDefaultForScrollKeys, false);
}

// call this to Enable
function enableScroll() {
  window.removeEventListener('DOMMouseScroll', preventDefault, false);
  window.removeEventListener(wheelEvent, preventDefault, wheelOpt); 
  window.removeEventListener('touchmove', preventDefault, wheelOpt);
  window.removeEventListener('keydown', preventDefaultForScrollKeys, false);
}
//Close search by click on modal
var modal = document.querySelector(".nav__modal");
modal.onclick = ()=>{
    searchForm.style.display = "none";
    enableScroll();
};
