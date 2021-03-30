$("#writeOKBtn").on('click',function () {
    var userNameForWrite = $('#userNameForWrite').val();
    var passwordForWrite = $('#passwordForWrite').val();
    var titleForWrite = $('#titleForWrite').val();
    var textForWrite = $('#textForWrite').val();

    if (userNameForWrite == ''){
        alert('작성자명을 작성하세요');
        return;
    }else if (passwordForWrite == ''){
        alert('비밀번호를 입력하세요');
        return;
    }else if (titleForWrite ==''){
        alert('제목을 입력하세요');
        return;
    }else if (textForWrite == ''){
        alert('본문내용을 입력하세요');
        return;
    }else {
        $('#writeForm').attr('method','post');
        $('#writeForm').attr('action','/writeOk');
        $('#writeForm').submit();
    }
})

$("#writeCacnelBtn").on('click',function () {
    if (confirm('취소하시겠습니까?')){
        return;
    }
})