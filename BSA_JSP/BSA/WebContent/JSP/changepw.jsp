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
  <title>changepassword</title>
  <meta name="description" content="비밀번호변경"> 
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    	$("#left").load("JSP/userpage_left.jsp")
    });
  </script>
  </head>

<body>
  <div id="contents" style="margin: auto;"></div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-2" id="left"></div>
        <div class="col-md-9">
          <h1 class="display-2 m-4">비밀번호 변경</h1>
          <div class="col-md-7 align-self-center">
            <div class="form-group"> <label>현재 비밀번호</label>
              <input type="password" name="password" class="form-control" placeholder="현재 비밀번호"> </div>
            <div class="form-group"> <label>새 비밀번호</label>
              <input type="newpassword" name="newpassword" class="form-control" placeholder="새 비밀번호"> </div>
            <div class="form-group"> <label>새 비밀번호 확인</label>
              <input type="newpasswordcheck" name="newpasswordcheck" class="form-control" placeholder="새 비밀번호 확인"> </div>
          </div>
          <a href="#" class="btn btn-outline-primary">수정</a>
          <a href="#" class="btn btn-outline-primary">취소</a>
        </div>
      </div>
    </div>
  </div>
</body>
<div id="bt" style="margin-top: 150px;"></div>
</html>