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
//search


async function searchByName() {
    console.log(document.querySelector("#search").value);
    await   $.ajax({
        url: '/consoleShop/product/searchAuto.do',
        type: 'GET',
        dataType: 'text',
        data: {
            search: document.querySelector("#search").value
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
                select: function (event, ui) {
                    let url = "/consoleShop/product/index.do?proName=" + decodeURIComponent(ui.item.value);
                    console.log(ui.item.value);
                    window.location.href = url;
                    return false;
                }

            });
        }

    });
}
$(function () {
    $("#search").autocomplete({

    });
});