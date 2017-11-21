<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/style_memberbooking.css" type="text/css">
<title>회원 예매 화면</title>
<style type="text/css">
    .my-box {
      border: 1px solid;
      padding: 10px;
    }

    table {
      width: 100%;
      border: 1px solid #444444;
      border-collapse: collapse;
    }

    th,
    td {
      border: 1px solid #444444;
      padding: 10px;
    }

    #customers {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      width: 100%;
      border-collapse: collapse;
    }

    #customers td,
    #customers th {
      font-size: 1em;
      border: 1px solid #98bf21;
      padding: 3px 7px 2px 7px;
    }

    #customers th {
      font-size: 1.1em;
      text-align: left;
      padding-top: 5px;
      padding-bottom: 4px;
      background-color: #A7C942;
      color: #ffffff;
    }

    #customers .c1 {
      width: 500px;
      background-color: #e0e023;
    }

    #customers .c2 {
      width: 500px;
    }

    #customers .c3 {
      width: 500px;
    }

    #customers tr.alt td {
      color: #000000;
      background-color: #EAF2D3;
    }

    .container-1 {
      width: 300px;
      vertical-align: middle;
      white-space: nowrap;
      position: relative;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-md bg-warning navbar-light main-content">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="img/BSA_Logo_intro.png"> </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto fixed-menu">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <h2><b class="p-3">예매 회원 목록</b></h2>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <h2><b class="p-4">회원 관리</b></h2>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <h2><b class="p-5">이벤트 관리</b></h2>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <h2><b class="p-4">셔틀 관리</b></h2>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <a class="btn navbar-btn ml-2 text-white btn-secondary"><i class="fa d-inline fa-lg fa-window-close"></i>로그아웃</a>
    <div id="google_translate_element" class="p-3"></div>
    <script type="text/javascript">
      function googleTranslateElementInit() {
        			new google.translate.TranslateElement({pageLanguage: 'ko', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
      				}
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
  </nav>
  <center>
    <div style="border:4px solid; padding:10px;">
      <table class="null">
        <tbody>
          <tr>
            <td>
              <div style="text-align:center">
                <font size="20">회원 예매 목록(전체 회원 예매 수 :${count} )</font>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </center>
  <c:if test="${count == 0}">
    <div class="wrap">
      <div class="box">현재 예매하신 회원은 없습니다.</div>
    </div>
  </c:if>
  <c:if test="${count > 0}">
    <table id="customers">
      <tbody>
        <tr>
          <th class="c1" id="first_name">회원님 성</th>
          <th class="c3" id="last_name">회원님 이름</th>
          <th class="c2" id="phone_number">회원님 연락처</th>
          <th class="c3" id="email_address">회원님 이메일</th>
          <th class="c1">회원 예매 번호</th>
          <th class="c3">회원 예매 시간</th>
        </tr>
        <c:forEach var="article" items="${articleList}">
        	<tr>
        		<td align="center" width="50"></td>
        			<c:out value="${number}"/>
        			<c:set var="number" value="${number -1}"/>
        	</tr>
        
        </c:forEach>
       </tbody>
    </table>
  </c:if>
  <div class="container">
    <div class="row"> &nbsp;
      <div class="span12"> &nbsp;회원 검색&nbsp;
        <form method="get" action="/" class="form-inline">
          <input name="loc" class="span5" type="text" placeholder="Search">
          <input type="button" value="Search"> </form>
      </div>
    </div>
  </div>
  <div class="wrap">
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 px-4">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span> </a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">5</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">6</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">7</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">8</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span> </a>
            </li>
          </ul>
        </div>
        
        <!-- 페이지 넘기기 -->
        <c:if test="${count > 0}">
	<c:set var="imsi" value="${count % pageSize == 0 ? 0 : 1 }"/>
	<c:set var="pageCount" value="${count / pageSize + imsi }"/>
	<c:set var="pageBlock" value="${3}"/>
	<fmt:parseNumber var="result" value="${currentPage / pageBlock}" 
	integerOnly="true"/>
	<c:set var="startPage" value="${result * pageBlock + 1 }"/>
	<c:set var="endPage" value="${startPage + pageBlock - 1 }"/>
	
	<c:if test="${endPage > pageCount}">
		<c:set var="endPage" value="${pageCount}"/>
	</c:if>
	
	<c:if test="${startPage > pageBlock}">
		<a href="${pageContext.request.contextPath}/board/list.do?pageNum=${startPage - pageBlock }">이전</a>
	</c:if>
	
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<a href="${pageContext.request.contextPath}/board/list.do?pageNum=${i}">[${i}]</a>
	</c:forEach>
	
	<c:if test="${endPage < pageCount}">
		<a href="${pageContext.request.contextPath}/board/list.do?pageNum=${startPage + pageBlock }">다음</a>
	</c:if>
</c:if>


        <div class="col-md-4"></div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>