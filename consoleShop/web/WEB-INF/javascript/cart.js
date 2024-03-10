//function decreaseQuantity() {
//    var quantityInput = document.getElementById("quantityInput");
//    var proId = document.getElementById("proId");
//    if (quantityInput.value > 1) {
//        quantityInput.value = parseInt(quantityInput.value) - 1;
//        autoUpdateQuantity(quantityInput.value)
//    }
//
//}
//
//function increaseQuantity() {
//    var quantityInput = document.getElementById("quantityInput");
//    quantityInput.value = parseInt(quantityInput.value) + 1;
//    utoUpdateQuantity(quantityInput.value)
//}

function autoUpdateQuantity(param, proId) {
    console.log(param.value == "")
    $.ajax({
        url: '/consoleShop/cart/autoUpdateQuantity.do',
        type: 'GET',
        dataType: 'text',
        data: {
            quantityInput: param.value == "" ? 0 : param.value,
            proId: proId

        },
        success: function (data) {
            var totalProductValueElement = document.querySelector("#payCart");
            totalProductValueElement.innerHTML = data
        }

    });
}

