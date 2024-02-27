/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//Validator
function Validator(options){
    // Hàm thực hiên kiểm tra hợp lệ 
    function validate(inputElement, rule){
        
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
        var errorMessage = rule.test(inputElement.value);
        if(errorMessage){
            errorElement.innerText = errorMessage;
            inputElement.classList.add("invalid__border");
            inputElement.parentElement.querySelector(".form__message").classList.add("invalid__text");
        } else {
            errorElement.innerText = "";
            inputElement.classList.remove("invalid__border");
            inputElement.parentElement.querySelector(".form__message").classList.remove("invalid__text");
        }
    }

    //Lấy form cần validate
    var formElement = document.querySelector(options.form);
    
    if(formElement){
        
        options.rules.forEach(function (rule) {
            
            var inputElement = formElement.querySelector(rule.selector);
            
            if(inputElement){
                // Xử lí trường hợp blur ra khỏi input
                inputElement.onblur = function (){
                   validate(inputElement, rule);
                };

                inputElement.oninput = function (){
                    var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
                    errorElement.innerText = "";
                    
                    inputElement.classList.remove("invalid__border");
                    inputElement.parentElement.querySelector(".form__message").classList.remove("invalid__text");    
                };
            }

           
        });
    }
}
//Validate username
Validator.isRequired = function(selector){
    return {
        selector: selector,
        test (value){
            return value.trim() ? undefined : "*Vui lòng nhập trường này";

        }
    };
};
//Validate email
Validator.isEmail = function(selector){
    return {
        selector: selector,
        test (value){
            var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return emailRegex.test(value) ? undefined : "*Email không hợp lệ";
        }
    };
};
//Validate password 
Validator.minLenght = function(selector, min){
    return {
        selector: selector,
        test (value){
            return value.length >= min ? undefined : "*Vui lòng nhập " + min + " kí tự";

        }
    };
};
//Validate password check
Validator.isConfirmed = function(selector, password, str){

    return {
        selector: selector,
        test (value){
            return password() === value ? undefined : "*"+str+ " không trùng khớp";

        }
    };
};
//Password hide or show





