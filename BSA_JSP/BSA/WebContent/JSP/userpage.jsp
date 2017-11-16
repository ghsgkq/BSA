<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/USERPAGE.css" type="text/css">
 <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <title>changing personal information</title>
  <meta name="description" content="개인정보수정">
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    	$("#left").load("JSP/userpage_left.jsp");
    });
  </script>
</head>

<body class="px-2">
<div id="contents"></div>
 <div class="py-5">
    <div class="container">
      <div class="row">
       <div id="left" class="col-md-2"></div>
       <div class="col-md-9">
          <h1 class="display-2 m-4">개인정보수정</h1>
          <form>
          <div class="col-md-7 align-self-center">
            <div class="form-group"> <label>아이디</label>
              <input type="text" name="id" class="form-control" placeholder="아이디" value="${id }" readonly="readonly">
            </div>
            <div class="form-group"> <label>휴대폰번호</label>
              <input type="text" name="phone" class="form-control" placeholder="- 포함 입력" value="${phone }"> </div>
            <div class="form-group"> <label>이메일</label>
              <input type="email" name="email" class="form-control" placeholder="이메일을 입력해주세요" value="${email }" readonly="readonly"> </div>
            <div class="form-group"> <label>이름</label>
              <input type="text" name="first_name" class="form-control" placeholder="이름" value="${first_name }"> </div>
              <div class="form-group"> <label>성</label>
              <input type="text" name="last_name" class="form-control" placeholder="이름" value="${last_name }"> </div>
          </div>
          <input type="submit" class="btn btn-outline-primary">수정
          <input type="reset" class="btn btn-outline-primary">취소
          </form>
        </div>
      </div>
    </div>
  
  </div>
  <div id="bt" style="margin-top: 150px;"></div>
</body>

</html>