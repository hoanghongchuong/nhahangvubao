$(function(){
    $.validator.addMethod("valueNotEquals",function(value,element,args){
        return args !== value;
    },'Chọn xe bạn muốn.');

    $('[name="tel"]').keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
             // Allow: Ctrl/cmd+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: Ctrl/cmd+C
            (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: Ctrl/cmd+X
            (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
                 return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });

    $(".regis-sfrm").validate({
        rules: {
            time: {
                required: true
                /*minlength: 5*/
            },
            date: {
                required: true/*,
                minlength: 5*/
            },
            quan: {
                required: true,
                /*minlength: 5,
                equalTo: "#password"*/
            },
            tel: "required",
            name: {
                required: true,
            },
            email: {
                required: true,
                email: true
            },
            tit: "required",
            content: "required"
        },

        //noti
        messages: {
            time: {
                required: "Nhập giờ bạn muốn đặt bàn."
                /*minlength: "Tài khoản đăng nhập phải có ít nhất {0} ký tự"*/
            },
            quan: {
                required: "Nhập số người sẽ đến nhà hàng."
                /*minlength: "Mật khẩu phải có ít nhất {0} ký tự"*/
            },
            date: {
                required: "Nhập ngày bạn muốn đặt bàn.",
                /*minlength: "Mật khẩu phải có ít nhất {0} ký tự"
                equalTo: "Nhập lại mật khẩu chưa đúng"*/
            },
            tel: "Nhập số điện thoại của bạn."
        },
        submitHandler: function(form) {
            /*alert('start submitHandler');*/
            $('#info-modal').modal('show');
            $('#regis-modal').modal('hide');
            //postContent();
        }
    });
    $(".contact-frm").validate({
        rules: {
            tel: "required",
            name: {
                required: true,
            },
            email: {
                required: true,
                email: true
            },
            tit: "required",
            content: "required"
        },

        //noti
        messages: {
            email: {
                required: "Nhập email của bạn."
                /*minlength: "Tài khoản đăng nhập phải có ít nhất {0} ký tự"*/
            },
            name: {
                required: "Nhập tên của bạn."
                /*minlength: "Mật khẩu phải có ít nhất {0} ký tự"*/
            },
            tit: {
                required: "Bạn chưa nhập tiêu đề thư.",
                /*minlength: "Mật khẩu phải có ít nhất {0} ký tự"
                equalTo: "Nhập lại mật khẩu chưa đúng"*/
            },
            tel: "Nhập số điện thoại của bạn.",
            content: "Bạn chưa nhập nội dung thư."
        }
    });
})