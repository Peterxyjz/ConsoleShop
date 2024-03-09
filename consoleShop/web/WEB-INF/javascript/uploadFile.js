async function uploadFile() {
    let formData = new FormData();
    formData.append("photo", photo.files[0]);
    await fetch('fileuploadservlet', {
        method: "POST",
        body: formData
    });
}
