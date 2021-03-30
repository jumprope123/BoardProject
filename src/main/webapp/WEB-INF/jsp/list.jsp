<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%-- 페이지당 게시물 수 10으로 설정--%>
<fmt:parseNumber var="cp" value="${param.cp}"/>
<fmt:parseNumber var="pp" value="10"/>
<fmt:parseNumber var="dataCnt" value="${dataCnt}"/>

<fmt:parseNumber var="sp" value="${((cp-1) / 5)}" integerOnly="true"/> <!--몇번째 페이지이지 확인-->
<fmt:parseNumber var="sp" value="${sp * 5 + 1}"/> <!--시작페이지의 첫 번호를 잡음-->
<fmt:parseNumber var="ep" value="${sp + 4}"/> <!--보여줄 끝 페이지의 번호를 잡음-->

<fmt:parseNumber var="tp" value="${dataCnt/pp}" integerOnly="true"/>
<c:if test="${(dataCnt % pp) > 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}"/>
</c:if>

<%--<fmt:parseNumber var="snum" value="${dataCnt - (cp - 1) * pp}" integerOnly="true"/>--%>

<%-- 검색 여부에 따라 네비게이션 링크 출력을 다르게 함 --%>
<c:set var="navlnk" value="/list?cp="/>
<c:if test="${not empty param.findkey}">
    <c:set var="navlnk" value="/find?findtype=${param.findtype}&findkey=${param.findkey}&cp="/>
</c:if>


<div id="main">
    <div class="margin1050">
        <div class="row mt-5">
            <div class="col-6 offset-3 text-center">
                <div class="form-group row">
                    <select name="findtype" id="findtype" class="form-control col-4">
                        <option value="title">제목</option>
                        <option value="username">작성자명</option>
                    </select>
                    <input type="text" name="findkey" id="findkey" class="form-control col-5">
                    <button type="button" id="FindBtn" class="btn btn-dark"><i class="bi bi-search"></i>검색하기</button>
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-12 text-center">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>번호</td>
                            <td>제목</td>
                            <td>작성자명</td>
                            <td>조회수</td>
                            <td>작성날짜</td>
                            <td>수정날짜</td>
                            <td>수정</td>
                            <td>삭제</td>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${data}" var="d">
                        <tr>
                            <td>${d.boardno}</td>
                            <td><a href="/view?boardno=${d.boardno}">${d.title}</a></td>
                            <td>${d.username}</td>
                            <td>${d.readcnt}</td>
                            <td>${fn:substring(d.regdate,0,19)}</td>
                            <td>
                                <c:if test="${empty d.modidate}">비어있음</c:if>
                                <c:if test="${not empty d.modidate}">${fn:substring(d.modidate,0,19)}</c:if>
                            </td>
                            <c:if test="${empty d.userid}">
                                <td><button class="btn btn-warning" onclick="javascript:modiFromList(${d.boardno})">수정</button></td>
                            </c:if>
                            <c:if test="${not empty d.userid}">
                                <c:if test="${d.userid ne UID.userid}">
                                    <td><button class="btn btn-warning" onclick="javascript:modiFromList(${d.boardno})">수정</button></td>
                                </c:if>
                                <c:if test="${d.userid eq UID.userid}">
                                    <td><button class="btn btn-warning" onclick="javascript:modiMemberFromList(${d.boardno})">수정</button></td>
                                </c:if>
                            </c:if>

                            <c:if test="${empty d.userid}">
                                <td><button class="btn btn-danger" onclick="javascript:delFromList(${d.boardno})">삭제</button></td>
                            </c:if>
                            <c:if test="${not empty d.userid}">
                                <c:if test="${d.userid ne UID.userid}">
                                    <td><button class="btn btn-danger" onclick="javascript:delFromList(${d.boardno})">삭제</button></td>
                                </c:if>
                                <c:if test="${d.userid eq UID.userid}">
                                    <td><button class="btn btn-danger" onclick="javascript:delModiFromList(${d.boardno})">삭제</button></td>
                                </c:if>
                            </c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="row mt-5">
                    <div class="col-12 text-center">
                        <ul class="pagination justify-content-center">
                            <%--맨 앞으로 가는 버튼--%>
                            <li class="page-item <c:if test="${cp eq 1}">disabled</c:if>">
                                <a href="${navlnk}1" class="page-link"><i class="bi bi-chevron-double-left"></i></a></li>

                            <%--'이전'이 표시되어야 할 때는 cp > 5 --%>
                            <li class="page-item <c:if test="${cp eq 1}">disabled</c:if>">
                                <a href="${navlnk}${cp - 1}" class="page-link"><i class="bi bi-chevron-compact-left"></i></a></li>

                            <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                                <c:if test="${i le tp}">
                                    <c:if test="${i ne cp}">
                                        <li class="page-item"><a href="${navlnk}${i}" class="page-link font-weight-bold">${i}</a></li>
                                    </c:if>

                                    <c:if test="${i eq cp}">
                                        <li class="page-item active"><a href="${navlnk}${i}" class="page-link font-weight-bold">${i}</a></li>
                                    </c:if>
                                </c:if>
                            </c:forEach>

                            <%--'다음'이 표시되어야 할 때는 ?--%>
                            <li class="page-item <c:if test="${cp eq tp}">disabled</c:if>">
                                <a href="${navlnk}${cp + 1}" class="page-link"><i class="bi bi-chevron-compact-right"></i></a></li>

                                <%--맨 뒤로 가는 버튼--%>
                                <li class="page-item <c:if test="${cp eq tp}">disabled</c:if>">
                                    <a href="${navlnk}${tp}" class="page-link"><i class="bi bi-chevron-double-right"></i></a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>