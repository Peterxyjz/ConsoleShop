<%-- 
    Document   : signup
    Created on : Feb 27, 2024, 2:55:41 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/signup.css"%></style>
 <div class="container-fluid">
        <div class="row">
            <div class="login col-lg-7">
                <a href="/View/Home/index.html" class="logo">
                    <img src="../../Image/Background/logo.png" alt="">
                    <span>Console Shop</span>
                </a>
                <h2 class="login__header">Sign Up to Console Shop</h2>
                <form action="" class="login__form container-fluid" id="form__signup">
                    <div class="row">
                        <div class="form__group col-lg-4 col-sm-4">
                            <label for="email">Email</label></br>
                            <input type="text" id="email"></br>
                            <div class="form__message"></div>
                        </div>
                        <div class="form__group col-lg-4 col-sm-4">
                            <label for="username">Username</label></br>
                            <input type="text" id="username"></br>
                            <div class="form__message"></div>
                        </div>
                        <div class="form__group col-lg-8 col-sm-8">
                            <label for="password">Password</label></br>
                            <input type="password" id="password"></br>
                            <div class="form__message"></div>
                        </div>
                        <div class="form__group col-lg-8 col-sm-8">
                            <label for="password_check">Enter your password again</label></br>
                            <input type="password" id="password_check"></br>
                            <div class="form__message"></div>
                        </div>
                        <div class="form__group--submit col-lg-8 col-sm-8" >
                            <button type="submit">Sign Up</button>
                        </div>
                        <div class="login__footer col-lg-8 col-sm-8">
                            Already have an account? <a href="../Login/login.html">Login</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="side-bar-bg col-lg-5">
                <div class="side-bar col-lg-12">
                    <img src="/Image/Background/image_processing20220610-2202-18yc36c.gif" alt="side bar image">
                    <div class="side-bar__highlight">
                        <div class="highlight__group">
                            <i class="fa-regular fa-circle-check"></i>
                            <span>Sản phẩm chính hãng</span>
                        </div>
                        <div class="highlight__group">
                            <i class="fa-regular fa-circle-check"></i>
                            <span>Giao hàng toàn quốc trong 48h</span>
                        </div>
                        <div class="highlight__group">
                            <i class="fa-regular fa-circle-check"></i>
                            <span>Trả hàng và hoàn tiền 100%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script><%@include file="/WEB-INF/javascript/signup.js"%></script>
    <script>
        Validator({
            form: '#form__signup',
            errorSelector: '.form__message',
            rules: [
                Validator.isRequired('#username'),
                Validator.isEmail('#email'),
                Validator.minLenght('#password', 6),
                Validator.isConfirmed("#password_check", function (){
                    return document.querySelector("#form__signup #password").value;
                }, "Mật khẩu")
            ]

        });
    </script>
