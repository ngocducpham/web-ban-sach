$('#FormLogin').on('submit', function (e) {
    e.preventDefault();
    const email = $('#email').val();
    const pass=$("#password").val();
    $.getJSON('/do_an_cntt/Login/CheckValid?email=' + email +'&pass='+ pass, function (data) {
        if (data === true) {
            alert("Đăng NHập Thành Công !")
            // $('#FormLogin').off('submit').submit();
        } else {
            alert('Email hoặc mật khẩu sai !');
        }
    });
});