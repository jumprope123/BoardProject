$('#nickChangeBtn').on('click',function () {
    $('#ModiMemberForm').attr('method','post');
    $('#ModiMemberForm').attr('action','/login/changeNick');
    $('#ModiMemberForm').submit();
})

$('#passwordChangeBtn').on('click',function () {
    $('#ModiMemberForm').attr('method','post');
    $('#ModiMemberForm').attr('action','/login/changePassword');
    $('#ModiMemberForm').submit();
})