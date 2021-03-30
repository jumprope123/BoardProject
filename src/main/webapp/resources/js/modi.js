$("#modiOKBtn").on('click',function () {
    var userNameForModi = $('#userNameForModi').val();
    var passwordForModi = $('#passwordForModi').val();
    var titleForModi = $('#titleForModi').val();
    var textForModi = $('#textForModi').val();

    if (userNameForModi == ''){
        alert('작성자명을 작성하세요');
        return;
    }else if (passwordForModi == ''){
        alert('비밀번호를 입력하세요');
        return;
    }else if (titleForModi ==''){
        alert('제목을 입력하세요');
        return;
    }else if (textForModi == ''){
        alert('본문내용을 입력하세요');
        return;
    }else {
        $('#modiForm').attr('method','post');
        $('#modiForm').attr('action','/modiOk');
        $('#modiForm').submit();
    }
})

$("#modiCacnelBtn").on('click',function () {
    if (confirm('취소하시겠습니까?')){
        return;
    }
})