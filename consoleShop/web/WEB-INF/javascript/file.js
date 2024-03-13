async function uploadFile() {
    let formData = new FormData();
    formData.append("photo", photo.files[0]);
    await fetch('/consoleShop/uploadfile', {
        method: "POST",
        body: formData
    });
}

async function deleteFile() {
    let formData = new FormData();
    formData.append("proId", document.querySelector("#proId").value);
    await fetch('/consoleShop/deletefile', {
        method: "POST",
        body: formData
    });
}

async function editfile() {
    let formData = new FormData();
    formData.append("proId", document.querySelector("#proId").value);
    formData.append("photo", photo.files[0]);
    await fetch('/consoleShop/editfile', {
        method: "POST",
        body: formData
    });
}
