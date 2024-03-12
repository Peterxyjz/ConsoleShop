/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// sản phẩm hôm nay carousel
var productWrapper = document.querySelectorAll(".today-deal__wrapper");
var nextIcon = document.querySelectorAll(".today-deal__next");
var preIcon = document.querySelectorAll(".today-deal__previous");

productWrapper.forEach((item, i) => {

    let wrapperDimension = item.getBoundingClientRect();
    let wrapperWidth = wrapperDimension.width;


    nextIcon[i].addEventListener('click', () => {
        item.scrollLeft += wrapperWidth;
    });


    preIcon[i].addEventListener('click', () => {
        item.scrollLeft -= wrapperWidth;
    });
});


