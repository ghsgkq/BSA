<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/USERPAGE.css" type="text/css">
<title>left</title>
</head>
<body>

        <div class="col-md-2">
          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a href="#" class="active nav-link"><i class="fa fa-home fa-home"></i>&nbsp;회원정보관리</a>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}/userpage.do" class="nav-link">개인정보수정</a>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}/changepw.do" class="nav-link">비밀번호변경</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">회원탈퇴</a>
            </li>
            <li class="nav-item">
              <a href="#" class="active nav-link"><i class="fa fa-home fa-home"></i>&nbsp;결제정보</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">구매내역</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">취소반품내역</a>
            </li>
            <li class="nav-item">
              <a href="#" class="active nav-link"><i class="fa fa-home fa-home"></i>&nbsp;내가쓴 글관리</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">문의하기</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">자료요청</a>
            </li>
          </ul>
      
</body>
</html>