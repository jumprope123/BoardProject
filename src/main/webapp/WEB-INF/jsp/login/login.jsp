<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="main">
    <div class="margin1050">
       <div class="row text-center">
           <div class="col-6 offset-3">
               <form id="loginForm">
                   <div class="row">
                       <label for="userIDForLogin">아이디</label>
                       <input class="form-control" type="text" id="userIDForLogin" name="userid">
                   </div>
                   <div class="row mt-5">
                       <label for="passWordForLogin">비밀번호</label>
                       <input class="form-control" type="password" id="passWordForLogin" name="password">
                   </div>
               </form>
           </div>
       </div>
       <div class="row text-center mt-5">
           <div class="col-12 text-center">
               <button type="button" class="btn btn-success" id="loginLoginBtn">로그인</button>
               <button type="button" class="btn btn-danger" id="loginCancelBtn">취소</button>
           </div>
       </div>
   </div>
</div>


