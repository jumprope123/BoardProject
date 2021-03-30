<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="main">
    <div class="margin1050">
        <form id="joinForm">
           <div class="row mt-3">
               <div class="col-8 offset-2 mt-2">
                   <label for="userIDForLogin">아이디</label>
                   <input type="text" class="form-control" id="userIDForLogin" name="userid">
               </div>
               <div class="col-8 offset-2 mt-2">
                   <label for="NickNameForLogin">닉네임</label>
                   <input type="text" class="form-control" id="NickNameForLogin" name="nickname">
               </div>
               <div class="col-8 offset-2 mt-2">
                   <label for="passwordForLogin">비밀번호</label>
                   <input type="password" class="form-control" id="passwordForLogin" name="password">
               </div>
               <div class="col-8 offset-2 mt-2">
                   <label for="passwordCheckForLogin">비밀번호 재입력</label>
                   <input type="password" class="form-control" id="passwordCheckForLogin" name="passwordcheck">
               </div>
           </div>
            <div class="row">
                <div class="col-6 offset-3 mt-5 text-center">
                    <button type="button" id="joinBtnForJoin" class="btn btn-success">회원가입</button>
                    <button type="button" id="cancelBtnForJoin" class="btn btn-danger">취소하기</button>
                </div>
            </div>
        </form>
    </div>
</div>

