$(function() {

    $('.btn_login').click(() => {
        chkLoginForm();

        console.log('클릭');
        console.log("form value : " + $('.form_login').serialize());
    })
    function chkLoginForm() {
        const email = $('input[name=login_email]');
        const pwd = $('input[name=login_pwd]');

        if(email.val() == '' || email.val() == undefined) {
            alert('이메일을 입력하세요.');
            email.focus();
            return;
        }
        if(pwd.val() == '' || pwd.val() == undefined) {
            alert('비밀번호를 입력하세요.');
            pwd.focus();
            return;
        }
    }
    function chkJoinForm() {
        const name = $('input[name=join_name]').val();
        const jemail = $('input[name=join_email]').val();
        const jpwd = $('input[name=join_pwd]').val();
        const jpwd2 = $('input[name=join_pwd2]').val();
    }

    $('.btn_join').click(() => {
        chkJoinForm();

        console.log('클릭');
        console.log("form value : " + $('.form_login').serialize());
    })

})