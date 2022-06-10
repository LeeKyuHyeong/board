$(function() {
  const gameHome = $('input[name=gameHome]');
  const gameAway = $('input[name=gameAway]');
  const homeWinLose = $('input[name=homeWinLose]');
  const awayWinLose = $('input[name=awayWinLose]');
  const homeSp = $('input[name=homeSp]');
  const awaySp = $('input[name=awaySp]');
  const homeSpEra = $('input[name=homeSpEra]');
  const awaySpEra = $('input[name=awaySpEra]');


  
  $('#btn_save').click(() => {
    if(!addFormChk()) return false;

    console.log($('.game_form').serialize());

    if(!confirm("저장하시겠습니까?")) return false;

    if(!chkFormDetail()) return false;
    
    
    $('.game_form').attr("method", "post");
    $('.game_form').attr("action", "/addGameList.do");
    $('.game_form').submit();
  })

  const addFormChk = () => {
    if(gameHome.val() == '') {
      alert('홈 팀을 입력하세요.');
      gameHome.focus();
      return false;
    }
    if(gameAway.val() == '') {
      alert('원정 팀을 입력하세요.');
      gameAway.focus();
      return false;
    }
    if(homeWinLose.val() == '') {
      alert('홈 팀 연승을 입력하세요.');
      homeWinLose.focus();
      return false;
    }
    if(awayWinLose.val() == '') {
      alert('원정 팀 연승을 입력하세요.');
      awayWinLose.focus();
      return false;
    }
    if(homeSp.val() == '') {
      alert('홈 팀 선발투수를 입력하세요.');
      homeSp.focus();
      return false;
    }
    if(awaySp.val() == '') {
      alert('원정 팀 선발투수를 입력하세요.');
      awaySp.focus();
      return false;
    }
    if(homeSpEra.val() == '') {
      alert('홈 선발투수 방어율을 입력하세요.');
      homeSpEra.focus();
      return false;
    }
    if(awaySpEra.val() == '') {
      alert('원정 선발투수 방어율을 입력하세요.');
      awaySpEra.focus();
      return false;
    }
    return true;
  }

  const chkFormDetail = () => {    
    $('.input_game').each(function(i,e) {
      if(e.value.length > 10) {
        alert('잘못 입력된 행이 있습니다.(길이제한 10)');
        e.focus();
        return false;
      }
    })




    

    return true;
  }

})