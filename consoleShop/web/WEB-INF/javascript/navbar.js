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
    accountIcon.removeEventListener("mouseover", Account);
    disableScroll();

};
//Close search by click on modal
var modal = document.querySelector(".nav__modal");
modal.onclick = () => {
    searchForm.style.display = "none";
    accountIcon.addEventListener("mouseover", Account);
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


accountIcon.addEventListener("mouseover", Account);
function Account() {
    accountDropdown.classList.add("active");

    accountIcon.addEventListener('mouseleave', (e) => {
        if (accountIcon.contains(e.target)) {
            accountDropdown.classList.remove("active");
        }
    });
}

function menuClick() {

    if (!dropdownMenu.className.includes("active")) {
        dropdownMenu.classList.add("active");
        accountIcon.removeEventListener("mouseover", Account);
        disableScroll();
    } else {
        dropdownMenu.classList.remove("active");
        accountIcon.addEventListener("mouseover", Account);
        enableScroll();
    }
    window.addEventListener('click', (e) => {
        if (!menuIcon.contains(e.target)) {
            dropdownMenu.classList.remove("active");
            accountIcon.addEventListener("mouseover", Account);
            enableScroll();

        }
    });

}
//nav category dropdown
var navCategory = document.querySelector(".nav__item");
var categoryDropdown = document.querySelectorAll(".categorty__dropdown");
navCategory.addEventListener("mouseover", mouseHoverCategory);
function mouseHoverCategory() {
    categoryDropdown[0].classList.add("active");
    navCategory.addEventListener("mouseleave", (e) => {
        if (navCategory.contains(e.target)) {
            categoryDropdown[0].classList.remove("active");
        }
    });

}
var navCategoryMobile = document.querySelector(".categorty__dropdown-mb");
navCategoryMobile.addEventListener("mouseover", ()=>{
    dropdownMenu.style.display = "block";
    categoryDropdown[1].classList.add("active");
    categoryDropdown[1].style.left = "-40%";
    categoryDropdown[1].style.top = "16px";
    categoryDropdown[1].style.width = "300px";
    categoryDropdown[1].style.padding = "0 30px 0 30px";
    navCategoryMobile.addEventListener("mouseleave", (e)=>{
        if(navCategoryMobile.contains(e.target)){
            categoryDropdown[1].classList.remove("active");
            dropdownMenu.removeAttribute("style");

        }
    });
});
    
