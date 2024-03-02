/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//nav menu
var menuIcon = document.querySelector(".nav__menu");
var dropdownMenu = document.querySelector(".dropdown__container");
menuIcon.onclick = () => {
    dropdownMenu.classList.toggle("active");
}
// sản phẩm hôm nay carousel
const productWrapper = document.querySelectorAll(".today-deal__wrapper");
const nextIcon = document.querySelectorAll(".today-deal__next");
const preIcon = document.querySelectorAll(".today-deal__previous");

productWrapper.forEach((item, i) => {

    let wrapperDimension = item.getBoundingClientRect();
    let wrapperWidth = wrapperDimension.width;

    nextIcon[i].addEventListener('click', () => {
        item.scrollLeft += wrapperWidth;
    })

    preIcon[i].addEventListener('click', () => {
        item.scrollLeft -= wrapperWidth;
    })
})
//search

function searchByName() {
    console.log(document.querySelector("#search").value);
    $.ajax({
        url: '/consoleShop/product/searchAuto.do',
        type: 'GET',
        dataType: 'text',
        data: {
            searchName: document.querySelector("#search").value 
        },
        success: function (data) {
            console.log(data);
            let src = data.split(",");
            console.log(src);
            src.forEach(item => {
                console.log(item);
            });
            $("#search").autocomplete({

                minLength: 0, // số ký tự ít nhất để autocomplete thực hiện                
                source: src, // src để suggestion
                maxResults: 6, // số suggestion tối đa được hiện 
                select:function(event, ui){
                    let url = "/consoleShop/product/index.do?proName=" +decodeURIComponent(ui.item.value)
                    console.log(ui.item.value);
                    window.location.href = url
                    return false
                }

            });
        }

    });
}
$(function () {
    $("#search").autocomplete({

    });
});