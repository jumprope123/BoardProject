$('#joinBtnForJoin').on('click',function () {
    var userIDForLogin = $('#userIDForLogin').val();
    var NickNameForLogin = $('#NickNameForLogin').val();
    var passwordForLogin  = $('#passwordForLogin').val();
    var passwordCheckForLogin = $('#passwordCheckForLogin').val();

    var checkIdRegExpression = /^[a-z0-9]{1,7}$/;
    var checkPasswordRegExpression = /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,12}$/;

    if (userIDForLogin == ''){
        alert('아이디는 빈 값일 수 없습니다.');
        return;
    } else if (NickNameForLogin == ''){
        alert('닉네임은 빈 값일 수 없습니다.');
        return;
    } else if (passwordForLogin == '') {
        alert('비밀번호는 빈 값일 수 없습니다');
        return;
    } else if (passwordCheckForLogin == ''){
        alert('비밀번호 확인란은 빈 값일 수 없습니다.');
        return;
    } else if (!checkIdRegExpression.test(userIDForLogin)){
        alert('아이디는 8자리 미만의 숫자, 영문소문자로 입력해주세요');
        return;
    } else if (!checkPasswordRegExpression.test(passwordForLogin)){
        alert('비밀번호는 8~12자리의 영문/숫자/특수문자를 각각 1개이상 포함해야합니다.');
        return;
    } else if (passwordForLogin =! passwordCheckForLogin){
        alert('비밀번호가 일치하지 않습니다.');
        return;
    } else {
        $('#joinForm').attr('method','post');
        $('#joinForm').attr('action','/login/joinOK');
        $('#joinForm').submit();
    }
})