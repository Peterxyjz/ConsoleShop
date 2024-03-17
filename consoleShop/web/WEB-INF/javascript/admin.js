/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var btnSumit = document.querySelector(".personal__submit");

btnSumit.onclick = (e)=>{
    let answer = window.confirm("Save?");
    
    if(!answer){
        e.preventDefault();
    }
    
}

