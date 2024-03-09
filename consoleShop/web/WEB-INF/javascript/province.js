//04-Province-Prj
console.log("04-Province-Prj");
//
// promise + fetch + class
//todo-------------------

const baseUrl = "https://provinces.open-api.vn/api";

class Http {
  // get:
  async get(url) {
    const response = await fetch(url);
    if (response.ok) {
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
      const provinces = await this.http.get(`${baseUrl}/p/${code}`);

      return provinces;
    } catch (error) {
      console.log(error);
    }
  }

  //lấy danh sách các quận dựa vào provinceCode
  async getDistrictByProvinceCode(provinceCode = "") {
    try {
      const province = await this.http.get(
        `${baseUrl}/p/${provinceCode}/?depth=2`
      );
      return province.districts;
    } catch (error) {
      console.log(error);
    }
  }
  //lấy danh sách các huyện phường dựa vào districtCode
  async getWardByDistrictCode(districtCode = "") {
    try {
      const district = await this.http.get(
        `${baseUrl}/d/${districtCode}/?depth=2`
      );

      return district.wards;
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
      const { code, name } = province;
      htmlContent += `<option value="${code}">${name}</option>`;
    });
    //nehst voo
    document.querySelector("#province").innerHTML = htmlContent;
  }

  //hàmn hận vào danh sáhc các district và render lên giao diện
  renderDistrict(districts) {
    let htmlContent = "";
    districts.forEach((district) => {
      const { code, name } = district;
      htmlContent += `<option value="${code}">${name}</option>`;
    });
    //nehst voo
    document.querySelector("#district").innerHTML = htmlContent;
  }

  //hàmn hận vào danh sáhc các wards và render lên giao diện
  renderWards(wards) {
    let htmlContent = "";
    wards.forEach((ward) => {
      const { code, name } = ward;
      htmlContent += `<option value="${code}">${name}</option>`;
    });
    //nehst voo
    document.querySelector("#ward").innerHTML = htmlContent;
  }
  renderInformation(infor) {
    const { province, district, ward, address } = infor;
    let htmlContent = `${address}, ${ward}, ${district}, ${province}`;
    document.querySelector("#information").innerHTML = htmlContent;
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
document.querySelector("form").addEventListener("submit", (event) => {
  event.preventDefault();
  let province = document.querySelector("#province option:checked").innerHTML;
  let district = document.querySelector("#district option:checked").innerHTML;
  let ward = document.querySelector("#ward option:checked").innerHTML;
  let address = document.querySelector("#address").value;
  //   console.log(address);
  let infor = {
    address,
    ward,
    district,
    province,
  };
  let ui = new RenderUI();
  //làm 1 hàm renderInformation
  ui.renderInformation(infor);
});
