const moreImgLink = document.getElementById("moreImgLink");

moreImgLink.addEventListener("click", () => {
    moreImgLink.innerText = "San pham chi co mot hinh";
});

//Change amount
const plus = document.querySelector(".amount__plus");
const minus = document.querySelector(".amount__minus");
const amount = document.getElementById("amount");
console.log(plus, minus);
plus.onclick = () => {
    if (amount.value >= "1") {
        amount.value = parseInt(amount.value) + 1;
    } else if (amount.value === "") {
        amount.value = 1;
    }

};
minus.onclick = () => {
    if (amount.value === "") {
        amount.value = 1;
    }
    if (amount.value >= "2" || amount.value === "") {
        amount.value = parseInt(amount.value) - 1;
    }

};
amount.oninput = ()=>{
    if(!amount.value.match("^[0-9]+$")){
        amount.value = "";
    }
};

