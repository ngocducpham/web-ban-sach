// var localpicker = new LocalPicker({
//     province: "ls_province",
//     district: "ls_district",
//     ward: "ls_ward"
// });

function checkName() {
    var ten = document.getElementById("ten").value;
    var check_error_ten = document.getElementById("error_ten");
    var regexName = /^[A-Za-z ]+$/;
    if (ten === "" || ten === null) {
        check_error_ten.innerHTML = "Tên không được để trống!"
    } else if (!regexName.test(ten)) {
        check_error_ten.innerHTML = "Tên không hợp lệ!"

    } else {
        check_error_ten.innerHTML = "";
        return ten;
    }
}

function checkHo() {
    var ho = document.getElementById("ho").value;
    var check_error_ho = document.getElementById("error_ho");
    var regexName = /^[A-Za-z ]+$/;
    if (ho === "" || ho === null) {
        check_error_ho.innerHTML = "Họ không được để trống!"
    } else if (!regexName.test(ho)) {
        check_error_ho.innerHTML = "Họ không hợp lệ!"

    } else {
        check_error_ho.innerHTML = "";
        return ho;
    }
}

function checkPhone() {
    var phone = document.getElementById("sdt").value;
    var check_error_phone = document.getElementById("error_phone");
    var regexPhone = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
    if (phone == "") {
        check_error_phone.innerHTML = "Số điện thoại không được để trống!"
    } else if (!regexPhone.test(phone)) {
        check_error_phone.innerHTML = "Định dạng số điện thoại không đúng!"
    } else {
        check_error_phone.innerHTML = "";
        return phone;
    }
}

function checkEmail() {
    var email = document.getElementById("email").value;
    var check_error_email = document.getElementById("error_email");
    var regexEmail = /\b[A-Z0-9.%+-]+@(?:[A-Z0-9-]+.)+[A-Z]{2,6}\b/i;
    if (email == "") {
        check_error_email.innerHTML = "Email không được để trống!"
    } else if (!regexEmail.test(email)) {
        check_error_email.innerHTML = "Định dạng email không hợp lệ!"
    } else {
        check_error_email.innerHTML = "";
        return email;
    }
}

function checkPass() {
    var password = document.getElementById("password").value;
    var check_error_password = document.getElementById("error_password");
    var regexPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/;
    if (password == "") {
        check_error_password.innerHTML = "Password không được để trống!"
    } else if (!regexPassword.test(password)) {
        check_error_password.innerHTML = "Password phải có chữ Hoa, chữ thường và số!"
    } else {
        check_error_password.innerHTML = "";
        return password;
    }
}

// $(document).ready(function () {
//     alert("cc");
// })

$('#FormRegister').on('submit', function (e) {
    e.preventDefault();
    const email = $('#email').val();

    $.getJSON('/do_an_cntt/Register/CheckAvailable?email=' + email, function (data) {
        if (data === true) {
            alert("Đăng kí thành công !")
            $('#FormRegister').off('submit').submit();
        } else {
            alert('Email đã có người sử dụng');
        }
    });
});

let detailAddress = document.getElementById('diachichitiet');
let province = document.getElementById('ls_province');
let distric = document.getElementById('ls_district');
let ward = document.getElementById('ls_ward');
let addressHouse = document.getElementById('diachi');

document.getElementById('ls_province').addEventListener("change", function () {
    // alert("cc");
    province = document.getElementById('ls_province');
    distric = document.getElementById('ls_district');
    ward = document.getElementById('ls_ward');
    addressHouse = document.getElementById('diachi');

    detailAddress.value = addressHouse.value + ", " + ward.options[ward.selectedIndex].text + ", " + distric.options[distric.selectedIndex].text + ", " + province.options[province.selectedIndex].text;
});

document.getElementById('ls_ward').addEventListener("change", function () {
    // alert("cc");
    province = document.getElementById('ls_province');
    distric = document.getElementById('ls_district');
    ward = document.getElementById('ls_ward');
    addressHouse = document.getElementById('diachi');

    detailAddress.value = addressHouse.value + ", " + ward.options[ward.selectedIndex].text + ", " + distric.options[distric.selectedIndex].text + ", " + province.options[province.selectedIndex].text;
});

document.getElementById('ls_district').addEventListener("change", function () {
    // alert("cc");
    province = document.getElementById('ls_province');
    distric = document.getElementById('ls_district');
    ward = document.getElementById('ls_ward');
    addressHouse = document.getElementById('diachi');

    detailAddress.value = addressHouse.value + ", " + ward.options[ward.selectedIndex].text + ", " + distric.options[distric.selectedIndex].text + ", " + province.options[province.selectedIndex].text;
});



