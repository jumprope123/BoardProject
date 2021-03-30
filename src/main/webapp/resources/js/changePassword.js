$('#passwordChangeCancelBtn').on('click',function () {
    if (confirm('정말 취소하시겠습니까?')){
        history.back();
    }
})

$('#passwordChangeOkBtn').on('click',function () {
    var userIdForPasswordChange = $('#userIdForPasswordChange').val();
    var OriginalPasswordForPasswordChange = $('#OriginalPasswordForPasswordChange').val();
    var PasswordForPasswordChange = $('#PasswordForPasswordChange').val();
    var PasswordCheckForPasswordChange = $('#PasswordCheckForPasswordChange').val();
    var checkPasswordRegExpression = /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,12}$/;

    if (OriginalPasswordForPasswordChange == ''){
        alert('기존 비밀번호를 입력하세요.');
        return;
    } else if (PasswordForPasswordChange == ''){
        alert('새 비밀번호를 입력하세요.');
        return;
    }  else if (PasswordCheckForPasswordChange == ''){
        alert('새 비밀번호 입력란을 입력하세요.');
        return;
    } else if (PasswordForPasswordChange != PasswordCheckForPasswordChange){
        alert('새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.');
        return;
    } else if (!checkPasswordRegExpression.test(PasswordForPasswordChange)){
        alert('비밀번호는 8~12자리의 영문/숫자/특수문자를 각각 1개이상 포함해야합니다.');
        return;
    } else {
        $.ajax({
            url: '/passwordCheck',
            type: 'post',
            data: {userid: userIdForPasswordChange, password: OriginalPasswordForPasswordChange}
        })
            .done(function (data) {
                if (data == true){
                  $('#changePasswordForm').attr('method','post');
                  $('#changePasswordForm').attr('action','/changePasswordOk');
                  $('#changePasswordForm').submit();

                } else {
                    alert('비밀번호가 일치하지 않습니다');
                    return;
                }
            })
    }

})