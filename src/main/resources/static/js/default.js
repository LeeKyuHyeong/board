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
    chkLoginForm();

    console.log("form value : " + $(".form_login").serialize());
    const loginId = $('input[name=login_id').val();
    // $.ajax({
    //   url: "/login",
    //   type:"POST",
    //   data: $(".form_login").serialize(),
    //   //dataType: "json",
    //   async: "true",
    //   success: function (data) {
    //     if(data == 'success') {
    //       location.href = '/main?loginId=' + loginId;
    //     } else {
    //       $('.alert_form').html('로그인 정보가 맞지 않습니다.');
    //     }
    //   },
    //   error: function (error) {
    //     console.log("error: " + error);
    //   }
    //});

    // $(".form_login")

  })

  function chkLoginForm() {
    const email = $("input[name=login_email]");
    const id = $("input[name=login_id]");
    const pwd = $("input[name=login_pwd]");
    const alert_mail = $(".alert_login_email");
    const alert_pwd = $(".alert_login_pwd");
    const alert_id = $(".alert_login_id");

    // if (email.val() == "" || email.val() == undefined) {
    //   email.css({ border: "1px solid red" });
    //   alert_mail.html("이메일을 입력해주세요");
    //   email.focus();
    //   $(".alert_form").html("로그인정보가 일치하지 않습니다.");
    //   $(".alert_form").css({ background: "rgb(255, 221, 221)" });
    //   return;
    // } else {
    //   email.css({ border: "1px solid #000" });
    //   alert_mail.html("");
    // }
    if (id.val() == "" || id.val() == undefined) {
      id.css({ border: "1px solid red" });
      alert_id.html("아이디를 입력해주세요");
      id.focus();
      //$(".alert_form").html("로그인정보가 일치하지 않습니다.");
      //$(".alert_form").css({ background: "rgb(255, 221, 221)" });
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
  }
  function chkJoinForm() {
    const name = $("input[name=join_name]");
    const email = $("input[name=join_email]");
    const pwd = $("input[name=join_pwd]");
    const pwd2 = $("input[name=join_pwd2]");

    if (name.val() == "" || name.val() == undefined) {
      name.focus();
      return;
    }
    if (email.val() == "" || email.val() == undefined) {
      email.focus();
      return;
    }
    if (pwd.val() == "" || pwd.val() == undefined) {
      pwd.focus();
      return;
    }
    if (pwd2.val() == "" || pwd2.val() == undefined) {
      pwd2.focus();
      return;
    }
    if (pwd.val() != pwd2.val()) {
      pwd.focus();
      return;
    }
  }

  $(".btn_join").click(() => {
    chkJoinForm();

    console.log("클릭");
    console.log("form value : " + $(".form_join").serialize());
  })
});
