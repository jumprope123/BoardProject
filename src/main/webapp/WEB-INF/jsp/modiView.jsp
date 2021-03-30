<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="main">
    <div class="margin1050">
        <form id="modiForm">
            <input type="hidden" name="boardno" value="${data.boardno}">
            <div class="mt-3 h4 text-center text-success">게시글 수정하기</div>
            <div class="row mt-5">
                <label for="userNameForModi" class="col-2 offset-2">작성자명</label>
                <input id="userNameForModi" name="username" class="form-control col-6" value="${data.username}">
            </div>
            <div class="row mt-5">
                <label for="passwordForModi" class="col-2 offset-2">비밀번호</label>
                <input id="passwordForModi" name="password" class="form-control col-6" value="${data.password}">
            </div>
            <div class="row mt-5">
                <label for="titleForModi" class="col-2 offset-2">제목</label>
                <input id="titleForModi" name="title" class="form-control col-6" value="${data.title}">
            </div>
            <div class="row mt-2">
                <label for="textForModi" class="col-2 offset-2">본문내용</label>
                <textarea id="textForModi" name="textforwrite" class="form-control col-6" style="resize: none" rows="10">${data.textforwrite}</textarea>
            </div>
            <div class="col-12 text-center mt-5">
                <button id="modiOKBtn" class="btn btn-success">수정완료</button>
                <button id="modiCacnelBtn" class="btn btn-danger">수정취소</button>
            </div>
        </form>
    </div>
</div>

