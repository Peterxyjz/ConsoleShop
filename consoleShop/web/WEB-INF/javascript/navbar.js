//nav menu
var menuIcon = document.querySelector(".nav__menu");
var dropdownMenu = document.querySelector(".dropdown__container");
menuIcon.addEventListener("click", menuClick);





//Show search bar and modal
var magIcon = document.querySelectorAll(".nav__search-icon")[0];
var searchForm = document.getElementById("search__form");
var nav = document.querySelector(".nav");
magIcon.onclick = () => {
    
        menuIcon.removeEventListener("click", menuClick);
        searchForm.style.display = "block";
        accountIcon.removeEventListener("mouseover", mouseHover);
        disableScroll();
    
};
//Close search by click on modal
var modal = document.querySelector(".nav__modal");
modal.onclick = () => {
    searchForm.style.display = "none";
    accountIcon.addEventListener("mouseover", mouseHover);
    menuIcon.addEventListener("click", menuClick);
    enableScroll();
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
        get: function () {
            supportsPassive = true;
        }
    }));
} catch (e) {
}

var wheelOpt = supportsPassive ? {passive: false} : false;
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

//Account dropdown menu
var accountIcon = document.querySelector(".nav__account--logged");
var accountDropdown = document.querySelector(".account__dropdown");


accountIcon.addEventListener("mouseover", mouseHover);
function mouseHover(){
    accountDropdown.classList.add("active");
    
    accountIcon.addEventListener('mouseleave', (e) => {
        if (accountIcon.contains(e.target)) {
            accountDropdown.classList.remove("active");
        }
    });
}

function menuClick(){
    
    if (!dropdownMenu.className.includes("active")) {
        dropdownMenu.classList.add("active");
        accountIcon.removeEventListener("mouseover", mouseHover);
        disableScroll();
    } else {
        dropdownMenu.classList.remove("active");
        accountIcon.addEventListener("mouseover", mouseHover);
        enableScroll();
    }
    window.addEventListener('click', (e) => {
        if (!menuIcon.contains(e.target)) {
            dropdownMenu.classList.remove("active");
            accountIcon.addEventListener("mouseover", mouseHover);
            enableScroll();

        }
    });

}
