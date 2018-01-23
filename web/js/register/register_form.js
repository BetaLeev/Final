$("document").ready(function () {


    $("#user").on("change", function () {
        isUser(event.target.value);

    });
    $("#phone").on("change", function () {
        isPhone(event.target.value);

    });
    $("#password").on("change", function () {
        isPassword(event.target.value);
    });
    $("#con_password").on("blur", function () {
        isConPassword();
        isNull();
    });


});

function refresh() {
    //IE存在缓存,需要new Date()实现更换路径的作用
    document.getElementById("image").src = "../code.jsp?" + new Date();
}

function isUser(str) {
    if (/^\w{1,6}$/.test(str)) {
        console.log(event.target.value);
    } else {
        alert("用户名只能是字母，数字或者下划线且长度不能超过六位！");
        $("#user").val("").focus();
    }
    return 0;

}//判断用户名是否符合要求

function isPhone(str) {
    if (/^\d{11,13}$/.test(str)) {
    } else {
        alert("手机号长度不符合要求");
        $("#phone").val("").focus();
    }
    return 0;
}//手机号码长度是否符合要求

function isPassword(str) {
    if (/^\w{8,16}$/.test(str)) {

    } else {
        alert("密码不能包含空格和除了下划线之外对任何特殊符号,且长度大于8位小于16位");
        $("#password").val("").focus();
    }
}//判断密码是否符合要求

function isConPassword() {
    if ($("#password").val() === $("#con_password").val()) {
        return 0;
    } else {
        alert("两次密码不一致请重新输入");
        $("#password").val("").focus();
        $("#con_password").val("").focus();
    }
}

function isNull() {
    if ($("#user").val() != null && $("#phone").val() != null && $("#password") != null && $("#con_password") != null) {
        $("#submit-register").attr("type", "submit");
    }

}
