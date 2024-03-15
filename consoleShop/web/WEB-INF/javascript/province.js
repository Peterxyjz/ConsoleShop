


const baseUrl = "https://vnprovinces.pythonanywhere.com/api";
//todo https://vnprovinces.pythonanywhere.com/api/provinces/?basic=true&limit=100     -- allProvince

//todo     https://vnprovinces.pythonanywhere.com/api/districts/?province_id=91&basic=true&limit=100        -- district by Province
//todo   https://vnprovinces.pythonanywhere.com/api/wards/?district_id=908&basic=true&limit=100           -- ward by district

class Http {
    // get:
    async get(url) {
        const response = await fetch(url);
        if (response.ok) {
            console.log(url);
            return response.json();
        } else {
            throw new Error(response.statusText);
        }
    }
}
// class Storage()
class Store {
    constructor() {
        this.http = new Http();
    }
    //getProvince() : lấy 1 hoặc nhiều tp theo code
    async getProvince(code = "") {
        try {
            let string = baseUrl + "/provinces/" + code + "/?basic=true&limit=100"
            const provinces = await this.http.get(string);
            if (code == "") {
                return provinces.results
            }
            return [{full_name, id} = provinces];
        } catch (error) {
            console.log(error);
    }
    }

    //lấy danh sách các quận dựa vào provinceCode
    async getDistrictByProvinceCode(provinceCode = "") {
        try {

            let string = baseUrl + "/districts/?province_id=" + provinceCode + "&basic=true&limit=100 "
            const province = await this.http.get(
                    string
                    );
            return province.results;
        } catch (error) {
            console.log(error);
    }
    }
    //lấy danh sách các huyện phường dựa vào districtCode
    async getWardByDistrictCode(districtCode = "") {
        try {
            let string = baseUrl + "/wards/?district_id=" + districtCode + "&basic=true&limit=100"
            const district = await this.http.get(
                    string

                    );

            return district.results;
        } catch (error) {
            console.log(error);
    }
    }
}

// new Store().getProvince().then((provinces) => {
//   console.log(provinces);
// });

// class RenderUI
class RenderUI {
    constructor() {}
    //hàmn hận vào danh sáhc các province và render lên giao diện
    renderProvinces(provinces) {
        let htmlContent = "";
        provinces.forEach((province) => {
            const {id, full_name} = province;
            htmlContent += "<option value=" + id + ">" + full_name + "</option>";

        });
        //nehst voo
        document.querySelector("#province").innerHTML = htmlContent;
    }

    //hàmn hận vào danh sáhc các district và render lên giao diện
    renderDistrict(districts) {
        let htmlContent = "";

        districts.forEach((district) => {
            const {id, full_name} = district;
            htmlContent += "<option value=" + id + ">" + full_name + "</option>";
        });
        //nehst voo
        document.querySelector("#district").innerHTML = htmlContent;
    }

    //hàmn hận vào danh sáhc các wards và render lên giao diện
    renderWards(wards) {
        let htmlContent = "";
        wards.forEach((ward) => {
            const {id, full_name} = ward;
            htmlContent += "<option value=" + id + ">" + full_name + "</option>";
        });
        //nehst voo
        document.querySelector("#ward").innerHTML = htmlContent;
    }
    renderInformation(infor) {
        console.log("infomation")
        const [fullName, phone, address, ward, district, province] = infor;
        let htmlContent = fullName + phone + address + ward + district + province;

    }
}
//
//sự kiện khi load trang //todo-------------------------------------------------------------
document.addEventListener("DOMContentLoaded", async (event) => {
    let store = new Store();
    let ui = new RenderUI();
    //
    const provinces = await store.getProvince();

    //render danh sach province lên ui
    ui.renderProvinces(provinces);

    //lấy province code hiện tại
    let provinceCode = document.querySelector("#province").value;
    const districts = await store.getDistrictByProvinceCode(provinceCode);

    // render các quận ra ui
    ui.renderDistrict(districts);
    //lấy districtCode hiện tại
    let districtCode = document.querySelector("#district").value;
    const wards = await store.getWardByDistrictCode(districtCode);

    //render wards lên ui
    ui.renderWards(wards);
});
//-----------------------------------------------------------------------------------
//sự kiện khi thay đổi province  //todo-------------------------------------------------------------
document
        .querySelector("#province")
        .addEventListener("change", async (event) => {
            let store = new Store();
            let ui = new RenderUI();
            let provinceCode = document.querySelector("#province").value;
            // render lại quận

            const districts = await store.getDistrictByProvinceCode(provinceCode);

            // render các quận ra ui
            ui.renderDistrict(districts);
            //lấy districtCode hiện tại
            let districtCode = document.querySelector("#district").value;
            const wards = await store.getWardByDistrictCode(districtCode);

            //render wards lên ui
            ui.renderWards(wards);
        });
//-----------------------------------------------------------------------------------
//sự kiện khi thay đổi district  //todo-------------------------------------------------------------
document
        .querySelector("#district")
        .addEventListener("change", async (event) => {
            let store = new Store();
            let ui = new RenderUI();
            let districtCode = document.querySelector("#district").value;
            // render lại quận
            const wards = await store.getWardByDistrictCode(districtCode);

            //render wards lên ui
            ui.renderWards(wards);
        });



//khi submit
document.querySelector("#orderForm").addEventListener("submit", (event) => {
    event.preventDefault();
    console.log("submit")
    let fullName = document.querySelector("#fullName").value;
    let phone = document.querySelector("#phone").value
    let province = decodeURIComponent(document.querySelector("#province option:checked").innerHTML);
    let district = document.querySelector("#district option:checked").innerHTML;
    let ward = document.querySelector("#ward option:checked").innerHTML;
    let address = document.querySelector("#address").value;
    let remember = document.querySelector("#remember").checked == false ? "" : "true";
     console.log(remember)
    //   console.log(address);
//    let infor = [
//        fullName,
//        phone,
//        address,
//        ward,
//        district,
//        province];

//    let ui = new RenderUI();
    //làm 1 hàm renderInformation
//    ui.renderInformation(infor);
//    const [fullName, phone, address, ward, district, province] = infor;
    let infor = fullName  + phone + address + ward + district + province;

    console.log(infor)
    $.ajax({
        url: '/consoleShop/order/order_handler.do',
        type: 'GET',
        dataType: 'text',
        data: {
           fullName,
           phone ,
           address ,
           ward , 
           district ,
           province,
           remember
        },
        success: function (data) {
            console.log(data)
            let url = "/consoleShop/order/orderDetail.do";
            window.location.href = url;

        }
    })
//    event.submit()
//    sendInformation(infor)


});
//hàm dùng ajax gọi servlet để truyền content của các option
function sendInformation(infor) {
    const [fullName, phone, address, ward, district, province] = infor;
    let htmlContent = fullName + phone + address + ward + district + province;
    console.log(htmlContent)
    $.ajax({
        url: '/consoleShop/order/order_handler.do?infor=' + decodeURIComponent(htmlContent),
        type: 'GET',
        dataType: 'text',
        data: {

        },
    })
}