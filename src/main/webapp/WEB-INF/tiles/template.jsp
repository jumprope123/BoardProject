<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport">

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <title>직원관리프로그램</title>
</head>

<body>
<div class="container">
   <tiles:insertAttribute name="header"/>

    <tiles:insertAttribute name="main" />

   <tiles:insertAttribute name="footer"/>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"> </script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/write.js"></script>
<script src="/js/list.js"></script>
<script src="/js/view.js"></script>
<script src="/js/modi.js"></script>
<script src="/js/header.js"></script>
<script src="/js/join.js"></script>
<script src="/js/login.js"></script>
<script src="/js/memberInfo.js"></script>
<script src="/js/changeNick.js"></script>
<script src="/js/changePassword.js"></script>
</body>
</html>

