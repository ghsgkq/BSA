<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <title>회원탈퇴</title>
  <meta name="description" content="비밀번호변경"> 
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    	$("#left").load("JSP/userpage_left.jsp")
    });
  </script>
  <c:if test="${un_check == 0 }">
  <script type="text/javascript">
  alert("비밀번호를 잘못 입력했습니다.");
  </script>
  </c:if>
   <script type="text/javascript">
   window.history.forward(0);
   function noBack(){window.history.forward();}
  </script>
  </head>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
  <div id="contents" style="margin: auto;"></div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-2" id="left"></div>
        <div class="col-md-9">
          <h1 class="display-2 m-4">회원탈퇴</h1>
          <form action="${pageContext.request.contextPath}/unregisterPro.do" method="post">
          <div class="col-md-7 align-self-center">
            <div class="form-group"> <label>Password</label>
              <input type="password" name="password" class="form-control" placeholder="비밀번호" value="${password }"> </div>
            <div class="form-group"> <label>Password Check</label>
              <input type="password" name="re_password" class="form-control" placeholder="비밀번호 확인" value="${new_password }"> </div>
          </div>
          <input type="submit" class="btn btn-outline-primary" value="Resign">
          <input type="reset" class="btn btn-outline-primary" value="Reset">
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
<div id="bt" style="margin-top: 150px;"></div>
</html>