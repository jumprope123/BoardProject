$('#nickChangeCancelBtn').on('click',function () {
    if (confirm('정말 취소하시겠습니까?')){
        history.back();
    }
})

$('#nickChangeOkBtn').on('click',function () {
    var passwordForChange = $('#passwordForChange').val();
    var passwordCheckForChange = $('#passwordCheckForChange').val();
    var changeNickHiddenUserid = $('#changeNickHiddenUserid').val();

    if (passwordForChange == ''){
        alert('비밀번호를 입력하세요.');
    } else if (passwordCheckForChange == ''){
        alert('비밀번호 확인란을 입력하세요.');
    } else if (passwordForChange != passwordCheckForChange){
        alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
    } else {
        $.ajax({
            url: '/passwordCheck',
            type: 'post',
            data: {userid: changeNickHiddenUserid, password: passwordForChange}
        })
            .done(function (data) {
                if (data == true){
                  $('#changeNickForm').attr('method','post');
                  $('#changeNickForm').attr('action','/changeNickOk');
                  $('#changeNickForm').submit();

                } else {
                    alert('비밀번호가 일치하지 않습니다');
                    return;
                }
            })
    }

})