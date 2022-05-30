$(function () {

  const signinBtn = $('.signinBtn');
  const signupBtn = $('.signupBtn');
  const formBx = $('.formBx');
  const body = $('body');
  
  signupBtn.click(() => {
      formBx.addClass('active');
      body.addClass('active');
  })
  signinBtn.click(() => {
      formBx.removeClass('active');
      body.removeClass('active');
  })

  // 로그인 버튼 클릭시
  $(".btn_login").click(() => {
    const id = $("input[name=login_id]");
    const alert_id = $(".alert_login_id");
    const pwd = $("input[name=login_pwd]");
    const alert_pwd = $(".alert_login_pwd");

    if (id.val() == "" || id.val() == undefined) {
      id.css({ border: "1px solid red" });
      alert_id.html("아이디를 입력해주세요");
      id.focus();
      return;
    } else {
      id.css({ border: "1px solid #000" });
      alert_id.html("");      
    }
    
    if (pwd.val() == "" || pwd.val() == undefined) {
      pwd.css({ border: "1px solid red" });
      alert_pwd.html("비밀번호를 입력해주세요");
      pwd.focus();
      return;
    } else {
      pwd.css({ border: "1px solid #000" });
      alert_pwd.html("");
    }
    
    $(".form_login").attr("action","/login");
    $(".form_login").submit();
  })

  //회원가입 버튼 클릭시
  $(".btn_join").click(() => {
    
    const id = $("input[name=user_loginid]");
    const alert_id = $(".alert_join_id");
    const pwd = $("input[name=login_pwd]");
    const alert_pwd = $(".user_loginpwd");

    if (id.val() == "" || id.val() == undefined) {
      id.css({ border: "1px solid red" });
      alert_id.html("아이디를 입력해주세요");
      id.focus();
      return;
    } else {
      id.css({ border: "1px solid #000" });
      alert_id.html("");      
    }
    
    if (pwd.val() == "" || pwd.val() == undefined) {
      pwd.css({ border: "1px solid red" });
      alert_pwd.html("비밀번호를 입력해주세요");
      pwd.focus();
      return;      
    } else {
      pwd.css({ border: "1px solid #000" });
      alert_pwd.html("");
    }

    $(".form_join").attr("action","/join");
    $(".form_join").submit();
  })

  //휴대전화 입력 란 자동 - 추가
  //$('.userphone').blur(() => {
  $('.userphone').keyup(() => {
    //console.log('key event : ' + $(this).val());
    console.log('key event : ' + $('.userphone').val());
    //$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
    $('.userphone').val( $('.userphone').val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
  })


});
