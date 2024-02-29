/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// sản phẩm hôm nay carousel
const productWrapper = document.querySelectorAll(".today-deal__wrapper");
const nextIcon = document.querySelectorAll(".today-deal__next");
const preIcon = document.querySelectorAll(".today-deal__previous");

productWrapper.forEach((item, i) => {

    let wrapperDimension = item.getBoundingClientRect();
    let wrapperWidth = wrapperDimension.width;

    nextIcon[i].addEventListener('click', ()=>{
        item.scrollLeft += wrapperWidth ;
    })

    preIcon[i].addEventListener('click', ()=>{
        item.scrollLeft -= wrapperWidth;
    })
})
