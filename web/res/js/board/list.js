function moveToDetail(iboard) {
    location.href = '/board/detail?iboard=' + iboard;
}

var trList = document.querySelectorAll('.record');
if(trList) {
    for(var i=0; i<trList.length; i++) {
        var tr = trList[i];
        setEvent(tr);
    }
}

function setEvent(tr) {
    tr.addEventListener('click', function() {
        moveToDetail(tr.dataset.iboard);
    });
}