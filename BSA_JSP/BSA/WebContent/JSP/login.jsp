<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <title>Login</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   <link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
  <script type="text/javascript">
  $(document).ready( function() {
  	$("#contents").load("JSP/top.jsp");
  	$("#bt").load("JSP/bottom.jsp");
  });
  </script>
  <script type="text/javascript">
  window.history.forward(0);
  function noBack(){window.history.forward(0);}
  </script>
</head>
<body style="background-color: #EAEAEA;" onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
  <div id="contents" style="margin-top: 200px; "></div>
  <div class="py-5">
    <div class="container">
      <div class="row h-100" style="marign-top:auto;">
        <div class="col-md-3"> </div>
        <div class="col-md-6 align-self-center">
          <div class="card text-white p-5 bg-dark">
            <div class="card-body">
              <h1 class="mb-4">Login</h1>
              <form action="${pageContext.request.contextPath}/loginPro.do" name="memberForm" method="post" >
                <div class="form-group"> <label>id address</label>
                  <input type="text" name="id" class="form-control" placeholder="아이디 입력"> </div>
                <div class="form-group"> <label>Password</label>
                  <input type="password" name="password" class="form-control" placeholder="패스워드 입력"> </div>
                <button type="submit" class="btn btn-secondary">Login</button>
                <br><br>
                <c:if test="${anser == 1 }">
                	아이디를 입력하세요!
                </c:if>
                <c:if test="${anser == 2 }">
                	비밀번호를 입력하세요!
                </c:if>
                <c:if test="${logincheck == 0 }">
					아이디나 비밀번호를 잘못입력했습니다!
 				</c:if>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="bt" style="margin-top:150px;"></div>

</body>

</html>