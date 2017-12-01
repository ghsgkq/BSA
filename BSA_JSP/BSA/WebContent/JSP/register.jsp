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

<script type="text/javascript">
  function mySubmit(index) {
		if(index == 1){
			document.register_form.action='${pageContext.request.contextPath}/idcheck.do'
		}
		if(index == 2){
			document.register_form.action='${pageContext.request.contextPath}/emailcheck.do'
		}
		if(index == 3){
			document.register_form.action='${pageContext.request.contextPath}/registerPro.do'
		}
	  document.register_form.submit();
	}
  </script>

  <c:if test="${idcheck == 4 }">
  <script type="text/javascript">
  alert("아이디가 존재합니다!!");
  </script>
  </c:if>
  <c:if test="${idcheck == 1 && !(anser>=1 && anser<=11) && (emailcheck != 1 && emailcheck != 2 && emailcheck != 3)}">
  <script type="text/javascript">
  alert("사용가능한 아이디입니다!");
  </script>
  </c:if>
  <c:if test="${idcheck == 2 }">
  <script type="text/javascript">
  alert("아이디는 5~15 영문 소문자,숫자로만 구성할수있습니다!");
  </script>
  </c:if>
  <c:if test="${idcheck == 3 }">
  <script type="text/javascript">
  alert("아이디 체크를 하셔야합니다!");
  </script>
  </c:if>
  <c:if test="${passcheck == 1 }">
  <script type="text/javascript">
  alert("패스워드는 10~25 공백을 제외한 모든 문자로 구성할 수 있습니다!")
  </script>
  </c:if>
  <c:if test="${emailcheck == 1 && !(anser>=1 && anser<=11) && (idcheck != 4 && idcheck != 2 && idcheck != 3)}">
  <script type="text/javascript">
  alert("사용가능한 이메일입니다.");
  </script>
  </c:if>
  <c:if test="${emailcheck == 2 }">
  <script type="text/javascript">
  alert("이메일이 존재합니다.")
  </script>
  </c:if>
  <c:if test="${emailcheck == 3 }">
  <script type="text/javascript">
  alert("이메일 양식이 잘못되었습니다.");
  </script>
  </c:if>
  
  
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
              <form name="register_form" method="post">
                <c:if test="${idcheck != 1 }">
                <div class="form-group"> <label>아이디</label>
                <input type="text" name="id" class="form-control" placeholder="아이디" value="${id}"></div>
                <input type="button" class="btn btn-secondary" onclick="return mySubmit(1)" value="id중복확인">
                <br><br>
                </c:if>
                <c:if test="${idcheck == 1 }">
                 <div class="form-group"> <label>아이디</label>
                <input type="text" name="id" class="form-control" placeholder="아이디" value="${id}" readonly="readonly"></div>
                </c:if>
                <input type="hidden" name="idcheck" value="${idcheck}">
                <div class="form-group"> <label>비밀번호</label>
                  <input type="password" name="password" class="form-control" placeholder="비밀번호" value="${password }"> </div>
                <div class="form-group"> <label>비밀번호 확인</label>
                  <input type="password" name="re_password" class="form-control" placeholder="비밀번호 확인" value="${re_password }"> </div>
               <div class="form-group"> <label>이름</label>
                 <input type="text" name="first_name" class="form-control" placeholder="이름" value="${first_name }"> </div>
                 <div class="form-group"> <label>성</label>
                 <input type="text" name="last_name" class="form-control" placeholder="성" value="${last_name }"> </div>
                 <div class="form-group"> <label>전화번호</label>
                 <input type="text" name="phone" class="form-control" placeholder="- 포함 작성" value="${phone }"> </div>
                <c:if test="${emailcheck != 1 }">
                <div class="form-group"> <label>이메일</label>
                <input type="email" name="email" class="form-control" placeholder="이메일" value="${email}"> </div>
                <input type="button" class="btn btn-secondary" onclick="return mySubmit(2)" value="email중복확인">
                </c:if>
                <c:if test="${emailcheck == 1 }">
                <div class="form-group"> <label>이메일</label>
                <input type="email" name="email" class="form-control" placeholder="이메일" value="${email}" readonly="readonly"> </div>
                </c:if>
                <br><br>
                <input type="hidden" name="emailcheck" value="${emailcheck }">
              <c:if test="${anser != 10 and anser != 11}">
                <div class="form-group">
                  <input type="radio" name="what" value="true"> 이메일로 본인확인 문자가 가는것을 허락합니까? </div>
              </c:if>
              <c:if test="${anser == 10 or anser == 11}">
              <div class="form-group"> <label>코드입력</label>
              <input type="text" name="anser_code" class="form-control" placeholder="코드입력"> 
              <input type="hidden" name="code" value="${code}">
              <input type="hidden" name="what" value="true">
              </div>
              </c:if>
                <button type="button" onclick="return mySubmit(3)" class="btn btn-secondary">회원가입</button>
                &nbsp;&nbsp;<input type="reset" class="btn btn-secondary" value="다시입력">
              </form>
              <br><br>
              <c:if test="${anser == 1 }">
              이름을 입력하세요!
              </c:if>
              <c:if test="${anser == 2 }">
              성을 입력하세요!
              </c:if>
              <c:if test="${anser == 3 }">
              전화번호를 입력하세요!
              </c:if>
              <c:if test="${anser == 4 }">
              아이디 입력하지 않았거나 중복확인을 하지않았습니다!!
              </c:if>
              <c:if test="${anser == 5 }">
              비밀번호를 입력하세요!
              </c:if>
              <c:if test="${anser == 6 }">
              비밀번호확인란을 입력하세요!
              </c:if>
              <c:if test="${anser == 8 }">
              이메일 본인확인란을 체크해주세요!!
              </c:if>
              <c:if test="${anser == 9 }">
              비밀번호와 비밀번호확인란이 같지않습니다!.
              </c:if>
              <c:if test="${anser == 10}">
              이메일로 코드 전송했습니다. 확인후 입력해주세요!
              </c:if>
              <c:if test="${anser == 11 }">
              코드입력이 잘못되었습니다!
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