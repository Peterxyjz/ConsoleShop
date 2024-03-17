/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


let $ = document.querySelectorAll.bind(document);
let items = $(".tab-item");
let panes = $(".tab-pane");
let lines = $(".line");
console.log(items);
items.forEach((item, index) => {
    item.onclick = () => {
        lines.forEach(line =>{
            line.classList.remove("active");
        });
        lines[index].classList.add("active");
        items.forEach(item =>{
            item.classList.remove("active");
        })
        item.classList.add("active");
        
        $(".tab-pane.active")[0].classList.remove("active");
        panes[index].classList.add("active");
    };
});