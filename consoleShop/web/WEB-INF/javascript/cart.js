function decreaseQuantity() {
    var quantityInput = document.getElementById("quantityInput");
    if (quantityInput.value > 1) {
        quantityInput.value = parseInt(quantityInput.value) - 1;
    }
}

function increaseQuantity() {
    var quantityInput = document.getElementById("quantityInput");
    quantityInput.value = parseInt(quantityInput.value) + 1;
}
