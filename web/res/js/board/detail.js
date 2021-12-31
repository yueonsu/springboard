var btnContainerElem = document.querySelector('#btnContainer');

if(btnContainerElem) {
    var btnDel = document.querySelector('#btnDel');
    var iboard = btnContainerElem.dataset.iboard;
    // iboard = btnContainerElem.getAttribute(var);
    btnDel.addEventListener('click', function () {
        if (confirm('정말로 삭제하시겠습니까?')) {
            location.href = '/board/del?iboard=' + iboard;
        }
    });

    var btnMod = document.querySelector('#btnMod');
    btnMod.addEventListener('click', function () {
        location.href = '/board/mod?iboard=' + iboard;
    });
}