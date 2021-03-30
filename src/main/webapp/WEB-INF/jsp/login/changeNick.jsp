<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${empty UID}">
    <c:redirect url="/list?cp=1"/>
</c:if>

<div id="main">
    <div class="margin1050">
        <form id="changeNickForm">
            <div class="row mt-3">
                <div class="col-8 offset-2 mt-2">
                    <input type="hidden" id="changeNickHiddenUserid" name="userid" value="${data.userid}">
                    <label for="NickNameForChange">닉네임</label>
                    <input type="text" class="form-control" id="NickNameForChange" name="nickname" value="${data.nickname}">
                </div>
                <div class="col-8 offset-2 mt-2">
                    <label for="passwordForChange">비밀번호</label>
                    <input type="password" class="form-control" id="passwordForChange" name="password">
                </div>
                <div class="col-8 offset-2 mt-2">
                    <label for="passwordCheckForChange">비밀번호 확인</label>
                    <input type="password" class="form-control" id="passwordCheckForChange" name="passwordcheck">
                </div>
            </div>
            <div class="row text-center">
                <div class="col-12 mt-5 text-center">
                    <button type="button" id="nickChangeOkBtn" class="btn btn-success">닉네임 변경하기</button>
                    <button type="button" id="nickChangeCancelBtn" class="btn btn-danger">취소하기</button>
                </div>
            </div>
        </form>
    </div>
</div>

