$(function () {
  console.log("msg : " + $("input[name=msg").val());

  const signinBtn = $(".signinBtn");
  const signupBtn = $(".signupBtn");
  const formBx = $(".formBx");
  const body = $("body");

  signupBtn.click(() => {
    formBx.addClass("active");
    body.addClass("active");
  });
  signinBtn.click(() => {
    formBx.removeClass("active");
    body.removeClass("active");
  });

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

    $(".form_login").attr("action", "/login");
    $(".form_login").submit();
  });

  //회원가입 버튼 클릭시
  $(".btn_join").click(() => {
    const id = $("input[name=user_loginid]");
    const alert_id = $(".alert_join_id");
    const pwd = $("input[name=user_loginpwd]");
    const alert_pwd = $(".alert_join_pwd");
    const pwd2 = $("input[name=user_loginpwd2]");
    const alert_pwd2 = $(".alert_join_pwd2");
    const name = $("input[name=user_name]");
    const alert_name = $(".alert_join_name");
    const email = $("input[name=user_email]");
    const alert_email = $(".alert_join_email");
    const phone = $("input[name=user_phone]");
    const alert_phone = $(".alert_join_phone");
    const addr = $("input[name=user_addr]");
    const alert_addr = $(".alert_join_addr");

    //입력id null 체크
    if (id.val() == "" || id.val() == undefined) {
      id.css({ border: "1px solid red" });
      alert_id.html("아이디를 입력해주세요");
      id.focus();
      return;
    } //아이디 길이 4글자이상
    else {
      if (id.val().length < 4) {
        id.css({ border: "1px solid red" });
        alert_id.html("아이디는 4자 이상이어야 합니다.");
        id.focus();
        return;
      }
      //아이디 중복 확인 ajax
      let dataSet = {};
      dataSet.loginId = id.val();
      $.ajax({
        url: "/checkDupl",
        data: dataSet,
        async: false,
        dataType: "text",
        success: function (rs) {
          if (rs == "OK") {
            id.css({ border: "3px solid green" });
            alert_id.html("사용가능한 아이디입니다.");
            alert_id.css({ color: "green" });
          } else {
            id.css({ border: "1px solid red" });
            alert_id.html("이미 존재하는 아이디입니다.");
            alert_id.css({ color: "red" });
          }
        },
        error: function (error) {
          alert("error : " + error);
        },
      });
    }

    // 입력 비밀번호 null체크
    if (pwd.val() == "" || pwd.val() == undefined) {
      pwd.css({ border: "1px solid red" });
      alert_pwd.html("비밀번호를 입력해주세요");
      pwd.focus();
      return;
    } else {
      pwd.css({ border: "1px solid #000" });
      alert_pwd.html("");
    }

    //비밀번호 동일 여부 체크
    if (pwd.val() != pwd2.val()) {
      pwd2.css({ border: "1px solid red" });
      alert_pwd2.html("비밀번호가 일치하지 않습니다.");
      pwd2.focus();
      return;
    } else {
      pwd2.css({ border: "1px solid #000" });
      alert_pwd2.html("");
    }

    //이메일 입력 null 체크
    if (email.val() == "" || email.val() == undefined) {
      email.css({ border: "1px solid red" });
      alert_email.html("이메일을 입력해주세요");
      email.focus();
      return;
    } else {
      email.css({ border: "1px solid #000" });
      alert_email.html("");
    }

    //휴대전화 입력 null 체크
    if (phone.val() == "" || phone.val() == undefined) {
      phone.css({ border: "1px solid red" });
      alert_phone.html("전화번호를 입력해주세요");
      phone.focus();
      return;
    } else {
      phone.css({ border: "1px solid #000" });
      alert_phone.html("");
    }

    //주소 입력 null 체크
    if (addr.val() == "" || addr.val() == undefined) {
      addr.css({ border: "1px solid red" });
      alert_addr.html("주소를 입력해주세요");
      addr.focus();
      return;
    } else {
      addr.css({ border: "1px solid #000" });
      alert_addr.html("");
    }

    $(".form_join").attr("action", "/join");
    $(".form_join").submit();
  });

  //휴대전화 입력 란 자동 - 추가
  $(".userphone").keyup(() => {
    console.log("key event : " + $(".userphone").val());
    //$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
    $(".userphone").val($(".userphone").val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
  });
});
