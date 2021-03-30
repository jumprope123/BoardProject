<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div id="main">
    <div class="margin1050">
        <div class="mt-3 h4 text-center text-success">게시글 상세보기</div>
        <div class="row mt-5">
            <label for="noForView" class="col-2 offset-2">게시글 번호</label>
            <input id="noForView" class="form-control col-6" value="${data.boardno}" readonly>
        </div>
        <div class="row mt-5">
            <label for="userNameForView" class="col-2 offset-2">작성자명</label>
            <input id="userNameForView" class="form-control col-6" value="${data.username}" readonly>
        </div>
        <div class="row mt-5">
            <label for="readCntForView" class="col-2 offset-2">읽은 수</label>
            <input id="readCntForView" class="form-control col-6" value="${data.readcnt}" readonly>
        </div>
        <div class="row mt-5">
            <label for="regdateForView" class="col-2 offset-2">작성날짜</label>
            <input id="regdateForView" class="form-control col-6" value="${fn:substring(data.regdate,0,19)}" readonly>
        </div>
        <c:if test="${not empty data.modidate}">
            <div class="row mt-5">
                <label for="modidateForView" class="col-2 offset-2">수정날짜</label>
                <input id="modidateForView" class="form-control col-6" value="${fn:substring(data.modidate,0,19)}" readonly>
            </div>
        </c:if>
        <div class="row mt-5">
            <label for="titleForView" class="col-2 offset-2">제목</label>
            <input id="titleForView" class="form-control col-6" value="${data.title}" readonly>
        </div>
        <div class="row mt-2">
            <label for="textForView" class="col-2 offset-2">본문내용</label>
            <textarea id="textForView" class="form-control col-6" style="resize: none" rows="10" readonly>${data.textforwrite}</textarea>
        </div>
        <div class="row mt-5">
            <div class="col-12 text-center">
                <button id="goBackBtnFromView" class="btn btn-lg btn-warning">돌아가기</button>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-12  text-center">
                <td><button class="btn btn-warning" onclick="javascript:modiFromView(${data.boardno})">수정</button></td>
                <td><button class="btn btn-danger" onclick="javascript:delFromView(${data.boardno})">삭제</button></td>
            </div>
        </div>
    </div>
</div>

