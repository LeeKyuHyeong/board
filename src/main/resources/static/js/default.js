$(function() {

    $('.btn_login').click(() => {
        chkLoginForm();

        console.log("form value : " + $('.form_login').serialize());

        $.ajax({
            url: "/login.do",
            data: $('.form_login').serialize(),
            dataType: 'json',
            success: function(rs) {
                location.href = "main.html";
            },
            error: function(error) {
                console.log(error);
            }

        })
    })
    function chkLoginForm() {
        const email = $('input[name=login_email]');
        const pwd = $('input[name=login_pwd]');

        if(email.val() == '' || email.val() == undefined) {
            // alert('이메일을 입력하세요.');
            email.css({"border":"1px solid red"});
            $('input[name=alert_login_email]').css({"display":"block", "border":0});
            $('input[name=alert_login_email]').val('이메일을 입력해주세요');
            email.focus();
            return;
        } else {
            email.css({"border":"1px solid #000"});
            $('input[name=alert_login_email]').css({"display":"none"});

        }
        if(pwd.val() == '' || pwd.val() == undefined) {
            // alert('비밀번호를 입력하세요.');
            pwd.focus();
            return;
        }
    }
    function chkJoinForm() {
        const name = $('input[name=join_name]');
        const email = $('input[name=join_email]');
        const pwd = $('input[name=join_pwd]');
        const pwd2 = $('input[name=join_pwd2]');

        if(name.val() == '' || name.val() == undefined) {
            // alert('이름을 입력하세요.');
            name.focus();
            return;
        }
        if(email.val() == '' || email.val() == undefined) {
            // alert('이메일을 입력하세요.');
            email.focus();
            return;
        }
        if(pwd.val() == '' || pwd.val() == undefined) {
            // alert('비밀번호를 입력하세요.');
            pwd.focus();
            return;
        }
        if(pwd2.val() == '' || pwd2.val() == undefined) {
            // alert('비밀번호확인 입력하세요.');
            pwd2.focus();
            return;
        }
        if(pwd.val() != pwd2.val()){
            // alert('비밀번호를 다시 한번 확인해주세요.');
            pwd.focus();
            return;
        }
    }

    $('.btn_join').click(() => {
        chkJoinForm();

        console.log('클릭');
        console.log("form value : " + $('.form_join').serialize());
    })

})