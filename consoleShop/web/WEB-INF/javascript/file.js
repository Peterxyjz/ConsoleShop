let adminCreate = document.querySelector("#adminCreate");
console.log(adminCreate);
adminCreate.addEventListener("submit", (event) => {
  event.preventDefault();
  let proName = document.querySelector("#proName").value;
  let price = document.querySelector("#price").value;
  let discount = document.querySelector("#discount").value;
  let amount = document.querySelector("#amount").value;
  let description = document.querySelector("#description").value;
  let categoryId = document.querySelector("#categoryId option:checked").value;

  $.ajax({
    url: "/consoleShop/admin/create_handler.do",
    type: "GET",
    dataType: "text",
    data: {
      proName,
      price,
      discount,
      amount,
      description,
      categoryId
    },
    success: function (data) {

      let proId = parseInt(data)

      uploadFile(proId);
      let url = "/consoleShop/admin/index.do";
      setTimeout(() => {
                alert("Thêm sản phẩm thành công")
        window.location.href = url;
      }, 1000);
    },
    error: function (xhr, status, error) {
      console.log("Đã xảy ra lỗi:");
      console.log("Trạng thái:", status);
      console.log("Thông điệp lỗi:", error);
      // Xử lý lỗi ở đây, 
      alert("Đã xảy ra lỗi khi gửi yêu cầu AJAX.");
    },
  });
});

async function uploadFile(proId) {
  let formData = new FormData();
  console.log("proId: ",proId);
  formData.append("proId", proId)
  formData.append("photo", photo.files[0]);

  await fetch("/consoleShop/uploadfile", {
    method: "POST",
    body: formData
  });
}

async function deleteFile() {
  let formData = new FormData();
  formData.append("proId", document.querySelector("#proId").value);
  await fetch("/consoleShop/deletefile", {
    method: "POST",
    body: formData,
  });
}

async function editfile() {
  let formData = new FormData();
  formData.append("proId", document.querySelector("#proId").value);
  formData.append("photo", photo.files[0]);
  await fetch("/consoleShop/editfile", {
    method: "POST",
    body: formData,
  });
}
