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
    });

    preIcon[i].addEventListener('click', ()=>{
        item.scrollLeft -= wrapperWidth;
    });
});
//search

 function searchByName(){ 
    console.log(document.querySelector("#search").value);
    $.ajax({
        url: '/consoleShop/product/searchAuto.do',     
        type: 'GET',
        dataType: 'text',
        data: {
            searchName: document.querySelector("#search").value ||""
        },
        success: function(data) {
            console.log(data);
            let src = data.split(",");
            console.log(src);
            src.forEach(item => {
                console.log(item);
            });
            $( "#search" ).autocomplete({
            
                minLength: 1,
                
                source: src,
                maxResults : 6
             });
        }
        
      });     
}
$(function() {
      

      $("#search").autocomplete({
        
      });
    });