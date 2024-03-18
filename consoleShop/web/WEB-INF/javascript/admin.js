/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var btnSumit = document.querySelector(".personal__submit");

if(btnSumit){
    btnSumit.onclick = (e)=>{
    let answer = window.confirm("Save?");
    
    if(!answer){
        e.preventDefault();
    }
    
};
}

var btnNewOrder = document.querySelector(".order--new");
var btnCheckedOrder = document.querySelector(".order--checked");
var tblChecked = document.querySelector(".tbl--checked");
var tblNew = document.querySelector(".tbl--new");

if(btnNewOrder && btnCheckedOrder){
    btnNewOrder.onclick = ()=>{
        
        tblNew.classList.remove("d-none");
        tblChecked.classList.add("d-none");
    };
    btnCheckedOrder.onclick = ()=>{
        
        tblNew.classList.add("d-none");
        tblChecked.classList.remove("d-none");
    };
    
}




