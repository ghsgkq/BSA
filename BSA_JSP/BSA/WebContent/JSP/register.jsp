<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>회원가입</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <!-- test -->
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
</head>

<body style="background-color: #EAEAEA;">
  <div id="contents" style="margin-top: 150px;"></div>
  <div class="py-5">
    <div class="container">
      <div class="row h-100" style="marign-top:auto;">
        <div class="col-md-3"> </div>
        <div class="col-md-6 align-self-center">
          <div class="card text-white p-5 bg-dark">
            <div class="card-body">
              <h1 class="mb-4">회원가입</h1>
              <form action="${pageContext.request.contextPath}/registerPro.do" method="post">
                <div class="form-group"> <label>아이디</label>
                  <input type="text" name="id" class="form-control" placeholder="아이디" value="${id}">
                  <input type="button" class="btn btn-secondary" value="중복확인"> </div>
                <div class="form-group"> <label>비밀번호</label>
                  <input type="password" name="password" class="form-control" placeholder="비밀번호" value="${password }"> </div>
                <div class="form-group"> <label>비밀번호 확인</label>
                  <input type="password" name="re-password" class="form-control" placeholder="비밀번호 확인"> </div>
                <div class="form-group"> <label>이메일</label>
                  <input type="email" name="email" class="form-control" placeholder="이메일" value="${email}"> </div>
                <div class="form-group">
                  <input type="radio" name="what" value="true"> 이메일로 본인확인 문자가 가는것을 허락합니까? </div>
              <c:if test="${anser == 7 }">
              <div class="form-group"> <label>코드입력</label>
              <input type="text" name="code_anser" class="form-control" placeholder="코드입력" value="${password }"> 
              <input type="hidden" name="code" value="${code}">
              </div>
              </c:if>
                <button type="submit" class="btn btn-secondary">로그인</button>
              </form>
              <br><br>
              <c:if test="${anser == 1 }">
              아이디를 입력하세요!
              </c:if>
              <c:if test="${anser == 2 }">
              비밀번호를 입력하세요!
              </c:if>
              <c:if test="${anser == 3 }">
              비밀번호확인란을 입력하세요!
              </c:if>
              <c:if test="${anser == 4 }">
              이메일을 입력하세요!
              </c:if>
              <c:if test="${anser == 5 }">
              이메일 본인확인란을 체크해주세요!!
              </c:if>
              <c:if test="${anser == 6 }">
              비밀번호와 비밀번호확인란이 같지않습니다!.
              </c:if>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="bt" style="margin-top: 150px;"></div>
</body>

</html>