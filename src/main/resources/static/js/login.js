$(function() {
    let loginId = $('input[name=loginId]');
    let alertText = $('.alert_text');
    let loginPwd = $('input[name=loginPwd]');


    $('#btn_login').click(function(){
        console.log(loginId.val());
        console.log(loginPwd.val());

        if(loginId.val() == '' || loginPwd.val() == '') {
            alertText.html('입력되지 않은 정보가 있습니다.');
            return;
            //alert('아이디가 입력되지 않았습니다.');
        } else {
            alertText.html("");
            $.ajax({
                type:"POST",
                url:"/login.do",
                data:FormData,
                error:function(XMLHttpReqeust, textStatus, errorThrown) {
                    alert('통신 실패');
                },
                success:function(res) {
                    console.log(res);
                }
            })
        }
        
    })

})