<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/home.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />

<section class="banner">
    <div class="banner__content">
        <h1 class="banner__header">Console Shop</h1>
        <div class="banner__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt maiores
            nulla eaque dolorum, blanditiis maxime dicta eos repellat.</div>
        <button class="banner__btn">Mua ngay</button>
    </div>

    <div class="banner__bkg">
        <img src="<c:url value="/images/Background/bg2.png"/>" alt="">
    </div>
</section>

<section class="top-product container">
    <h3 class="top-product__header">Sản phẩm hàng đầu</h3>
    <div class="top-product__wrapper row">
        <div class="top-product__item col-lg-2 col-md-4 col-6 ">
            <img src="<c:url value="/images/Playstation/Playstation PS5/1.jpg"/>" alt="">
            <h4>PlayStation 5</h4>
        </div>
        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/Playstation/Playstation PS4/2.jpg"/>" alt="">
            <h4>PlayStation 4</h4>
        </div>

        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            <h4>Nitendo Switch</h4>
        </div>

        <div class="top-product__item col-lg-2 col-md-4 col-6" id="ps3-img">
            <img src="<c:url value="/images/Playstation/Playstation PS3/1.jpg"/>" alt="">
            <h4>PlayStation 3</h4>
        </div>

        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/Game/Game PS5/1.jpg"/>" alt="">
            <h4>Games</h4>
        </div>

        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/Accessory/1.jpg"/>" alt="">
            <h4>Phụ kiện</h4>
        </div>
    </div>
</section>


<section class="today-deal container">
    <h3 class="today-deal__header">Game hay hôm nay</h3>

    <i class="fa-solid fa-chevron-left today-deal__previous"></i>
    <div class="today-deal__wrapper">
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Game/Game Nintendo/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Dead Cells: Return to Castlevania Edition</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
                <div class="today-deal__discount"></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Game/Game Nintendo/2.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Dead Cells: Return to Castlevania Edition</div>
                <div class="today-deal__price">1,990,000đ<span class="today-deal__discount">1.000.300đ</span></div>
                <div class="today-deal__discount"></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Game/Game Nintendo/3.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Game/Game Nintendo/3.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Game/Game Nintendo/3.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Game/Game Nintendo/3.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>


    </div>
    <i class="fa-solid fa-chevron-right today-deal__next"></i>
</section>
<hr>
<section class="cashback">
    <div class="cashback__img">
        <img src="<c:url value="/images/Background/bg1.png"/>" alt="">
    </div>
    <div class="cashback__content">
        <h1>Hoàn tiền lên đến 50%</h1>
        <p>Nhận voucher khi đăng ký tài khoản mua sắm tại <span>Console Shop</span></p>
        <button><a href="/View/SignUp/signup.html">Đăng ký ngay</a></button>
    </div>
</section>
<hr>

<!--New nintendo Switch area  -->
<section class="today-deal container" id="switch-new">
    <h3 class="today-deal__header">Thế giới Nintendo Switch</h3>
    <div class="deal-status">Nintendo switch mới</div>
    <i class="fa-solid fa-chevron-left today-deal__previous"></i>
    <div class="today-deal__wrapper">
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Nitendo switch oled: Legend of Zelda</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
                <div class="today-deal__discount"></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/oled mario.png"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Nitendo switch oled: Mario</div>
                <div class="today-deal__price">1,990,000đ<span class="today-deal__discount">1.000.300đ</span></div>
                <div class="today-deal__discount"></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/oled pokemon.png"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Nitendo switch oled: Pokemon</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/oled pokemon.png"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/oled pokemon.png"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/oled pokemon.png"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <i class="fa-solid fa-chevron-right today-deal__next"></i>
    </div>
</section>

<!-- SecondHand Nintendo Switch -->
<section class="today-deal container" id="switch-2hand">
    <h3 class="today-deal__header"></h3>
    <div class="deal-status">Nintendo switch cũ</div>
    <i class="fa-solid fa-chevron-left today-deal__previous"></i>
    <div class="today-deal__wrapper">
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Nitendo switch oled: Legend of Zelda</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
                <div class="today-deal__discount"></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Nitendo switch oled: Mario</div>
                <div class="today-deal__price">1,990,000đ<span class="today-deal__discount">1.000.300đ</span></div>
                <div class="today-deal__discount"></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Nitendo switch oled: Pokemon</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/Nintendo/Nintendo switch OLED/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <div class="today-deal__item">
            <a href="" class="today-deal__img">
                <img src="<c:url value="/images/1.jpg"/>" alt="">
            </a>
            <a href="" class="today-deal__info">
                <div class="today-deal__name">Pokémon Violet + The Hidden Treasure of Area Zero</div>
                <div class="today-deal__price">1,990,000đ <span class="today-deal__discount">1.000.300đ</span></div>
            </a>
        </div>
        <i class="fa-solid fa-chevron-right today-deal__next"></i>
    </div>

</section>

<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/home.js"%></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
</script>
