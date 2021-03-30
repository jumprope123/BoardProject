<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${empty UID}">
    <c:redirect url="/list?cp=1"/>
</c:if>

<div id="main">
    <div class="margin1050">
        <form id="changePasswordForm">
            <div class="row mt-3">
                <div class="col-8 offset-2 mt-2">
                    <label for="userIdForPasswordChange">아이디</label>
                    <input type="text" class="form-control" id="userIdForPasswordChange" name="userid" value="${data.userid}" readonly>
                </div>
                <div class="col-8 offset-2 mt-2">
                    <label for="nickNameForPasswordChange">닉네임</label>
                    <input type="text" class="form-control" id="nickNameForPasswordChange" name="nickname" value="${data.nickname}">
                </div>
                <div class="col-8 offset-2 mt-2">
                    <label for="OriginalPasswordForPasswordChange">기존 비밀번호</label>
                    <input type="password" class="form-control" id="OriginalPasswordForPasswordChange" name="originalPassword">
                </div>
                <div class="col-8 offset-2 mt-2">
                    <label for="PasswordForPasswordChange">새 비밀번호</label>
                    <input type="password" class="form-control" id="PasswordForPasswordChange" name="password">
                </div>
                <div class="col-8 offset-2 mt-2">
                    <label for="PasswordCheckForPasswordChange">새 비밀번호 확인</label>
                    <input type="password" class="form-control" id="PasswordCheckForPasswordChange" name="passwordcheck">
                </div>
            </div>
            <div class="row text-center">
                <div class="col-12 mt-5 text-center">
                    <button type="button" id="passwordChangeOkBtn" class="btn btn-success">비밀번호 변경하기</button>
                    <button type="button" id="passwordChangeCancelBtn" class="btn btn-danger">취소하기</button>
                </div>
            </div>
        </form>
    </div>
</div>

