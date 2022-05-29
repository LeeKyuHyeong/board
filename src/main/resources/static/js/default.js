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

    console.log("클릭");
    console.log("form value : " + $(".form_join").serialize());
  })
});
