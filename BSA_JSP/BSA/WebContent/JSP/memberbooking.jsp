<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/topa.jsp");
    	
    });
  </script>
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
    
    .example .pagination>la>a,
	.example .pagination>li>span{
	border: 1px solid pruple;
	}
	.pagination>li.active>a{
		background:purple;
		color: #fff;
	}
  </style>
</head>
<body style="margin-top:80pt;">
<form method="post" name="checking_Booked" action="${pagecontext.request.contextpath}/checkbooked.do">
<div id="contents"></div>
  <center>
    <div style="border:4px solid; padding:10px;">
      <table class="null">
        <tbody>
          <tr>
            <td>
              <div style="text-align:center">
                <font size="20"> 예매 목록(전체 회원 또는 비회원 예매 수 :${count} )</font>
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
          <th class="text-center" id="first_name"> 성</th>
          <th class="text-center" id="last_name"> 이름</th>
          <th class="text-center" id="phone_number"> 연락처</th>
          <th class="text-center" id="email_address"> 이메일</th>
          <th class="text-center"> 예매 번호</th>
          <th class="text-center"> 예매 시간</th>
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
      <div class="span12"> &nbsp;검색&nbsp;
        <form method="get" action="/" class="form-inline">
          <input name="loc" class="span5" type="text" placeholder="Search">
          <input type="button" value="Search"> </form>
      </div>
    </div>
  </div>
  <div class="wrap">
  </div>
  
        
        <!-- 페이지 넘기기 -->
    <div class="container">
    <div class="example">
    	<nav>
    		<ul class="pagination">
    			<li class="disabled">
    					
    	
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
	
		<a aria-label="Previous" href="${pageContext.request.contextPath}/memberbooking.do?pageNum=${startPage - pageBlock }"><span aria-hidden="true">이전</span></a>
	</c:if>
	
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<li class="active"><a href="${pageContext.request.contextPath}/memberbooking.do?pageNum=${i}">[${i}]</a>
	</c:forEach>
	
	<c:if test="${endPage < pageCount}">
		<a aria-label="Next" href="${pageContext.request.contextPath}/memberboooking.do?pageNum=${startPage + pageBlock }"><span aria-hidden="true">다음</span></a>
	</c:if>
</c:if>
</ul>
</nav>
</div>
</div>
		
</form>
  <div id="bt"></div>
</body>
</html>