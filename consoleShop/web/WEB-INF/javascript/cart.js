function decreaseQuantity() {
    var quantityInput = document.getElementById("quantityInput");
    var proId = document.getElementById("proId");
    if (quantityInput.value > 1) {
        quantityInput.value = parseInt(quantityInput.value) - 1;
        autoUpdateQuantity(quantityInput.value)
    }

}

function increaseQuantity() {
    var quantityInput = document.getElementById("quantityInput");
    quantityInput.value = parseInt(quantityInput.value) + 1;
    utoUpdateQuantity(quantityInput.value)
}

function autoUpdateQuantity(param, proId) {
    $.ajax({
        url: '/consoleShop/cart/autoUpdateQuantity.do',
        type: 'GET',
        dataType: 'text',
        data: {
            quantityInput: param.value,
            proId: proId

        },
        success: function (data) {

            var totalProductValueElement = document.getElementById("#totalCartValue");
            var currentTotalValue = parseFloat(totalProductValueElement.textContent.replace("Tổng giá trị sản phẩm: ", "").replace("đ", ""));
            var newTotalValue = currentTotalValue - totalPrice;
            totalProductValueElement.textContent = "Tổng giá trị sản phẩm: " + newTotalValue + "đ";
        }

    });
}