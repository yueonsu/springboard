var joinContainer = document.querySelector('#joinContainer');

var isChk = 0;
if(joinContainer) {
    var chkBtn = joinContainer.querySelector('#checkPwBtn');

    chkBtn.addEventListener('click', function (e) {
        e.preventDefault();
        var fstPw = joinContainer.querySelector('#fstPw');
        var secPw = joinContainer.querySelector('#secPw');

        if(fstPw.value !== secPw.value) {
            alert("비밀번호를 확인해 주세요 !");
        }
        alert('비밀번호가 동일합니다 ! 계속 진행해 주세요.');
        isChk = 1;
    });
}

var joinFrmElem = document.querySelector('#joinFrm');
if(joinFrmElem) {
    joinFrmElem.addEventListener('submit', function(e) {
        e.preventDefault();
        if(isChk === 0) {
            e.preventDefault();
            alert('비밀번호 중복체크를 완료해 주세요.');
        } else {
            e.un
        }
    });
}
