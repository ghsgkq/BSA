<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page import="BSA.model.BookingDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BSA.model.AdminDao" %>



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
                <font size="20"> 예매 목록(예매 수 :${count} )</font>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </center>
  <c:if test="${count == 0}">
    <div class="wrap">
      <div class="box">현재 예매가 없습니다.</div>
    </div>
  </c:if>
  <c:if test="${count > 0}">
    <table id="customers">
      <tbody>
        <tr>
          <th class="text-center" id="first_name">성함</th>
          <th class="text-center" id="phone">연락처</th>
          <th class="text-center" id="email_address">이메일</th>
          <th class="text-center" id="pickup">픽업</th>
          <th class="text-center" id="dropft">내릴곳</th>
          <th class="text-center" id="start_airline_time">공항출발시간</th>
          <th class="text-center" id="arrival_airline_time">공항도착시간</th>
          <th class="text-center" id="start_date">출발날짜</th>
          <th class="text-center" id="arrival_date">도착날짜</th>
          <th class="text-center" id="bus_time_pickup">버스픽업시간</th>
          <th class="text-center" id="adults">성인</th>
          <th class="text-center" id="young">청소년</th>
          <th class="text-center" id="child">어린이</th>
          <th class="text-center" id="infatns">유아</th>
          <th class="text-center" id="name_on_card">카드회사</th>
          <th class="text-center" id="card_number">카드번호</th>
          <th class="text-center" id="expiry_year">년도</th>
          <th class="text-center" id="expiry_month">개월</th>
          <th class="text-center" id="csv_number">보안번호</th>
          <th class="text-center" id="comm">커멘트</th>
          <th class="text-center" id="money">가격</th>
          <th class="text-center" id="delete">예매삭제</th>
          
          
        </tr>
        <c:forEach var="article" items="${articleList}">
        	<tr>
       			<td><a href="${pageContext.request.contextPath}/content.do?code=${article.code}&pageNum=${currentPage}">${article.first_name}${article.last_name}</a></td>
       			<td>${article.phone}</td>
       			<td>${article.email}</td>
       			<td>${article.pickup}</td>
       			<td>${article.dropft}</td>
       			<td>${article.start_airline_time}</td>
       			<td>${article.arrival_airline_time}</td>
       			<td>${article.start_date}</td>
       			<td>${article.arrival_date}</td>
       			<td>${article.bus_time_pickup}</td>
       			<td>${article.adults}</td>
       			<td>${article.young}</td>
       			<td>${article.child}</td>
       			<td>${article.infatns}</td>
       			<td>${article.name_on_card}</td>
       			<td>${article.card_number}</td>
       			<td>${article.expiry_year}</td>
       			<td>${article.expiry_month}</td>
       			<td>${article.csv_number}</td>
       			<td>${article.comm}</td>
       			<td>${article.money}</td>
       			<td><input type="button" value="삭제" onClick="delSubmit(1)"></td>
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
		<a aria-label="Next" href="${pageContext.request.contextPath}/memberbooking.do?pageNum=${startPage + pageBlock }"><span aria-hidden="true">다음</span></a>
	</c:if>
</c:if>
</ul>
</nav>
</div>
</div>
<br><br><br><br><br><br>
<footer>
	<div class="text-white bg-dark">
    <div class="container">
      <div class="row">
        <div class="p-5 col-md-3"> <i class="fa fa-5x mb-5 fa-diamond"></i>
          <h3 class="mb-4">Pingendo</h3>
          <ul class="list-unstyled">
            <a href="#" class="text-white">Home</a>
            <br>
            <a href="#" class="text-white">About us</a>
            <br>
            <a href="#" class="text-white">Our services</a>
            <br>
            <a href="#" class="text-white">Testimonials</a>
          </ul>
        </div>
        <div class="p-5 col-md-4">
          <h3 class="mb-4">Latest post</h3>
          <p>"<i>Here you can insert the latest news from your business. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</i>" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <br>
            <br>
            <br>"<i>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat</i>"</p>
        </div>
        <div class="p-5 col-md-5">
          <h3>Get in touch</h3>
          <form class="my-4">
            <fieldset class="form-group"> <label for="exampleInputEmail1">Get monthly updates</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email"> </fieldset>
            <button type="submit" class="btn btn-outline-light">Submit</button>
          </form>
          <h3 class="mt-5">Social</h3>
          <div class="align-self-center col-12 my-4">
            <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook d-inline fa-lg mr-3 text-white"></i></a>
            <a href="https://twitter.com" target="_blank"><i class="fa fa-twitter d-inline mx-3 fa-lg text-white"></i></a>
            <a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram d-inline mx-3 fa-lg text-white"></i></a>
            <a href="https://plus.google.com" target="_blank"><i class="fa fa-google-plus-official d-inline mx-3 fa-lg text-white"></i></a>
            <a href="https://pinterest.com" target="_blank"><i class="fa fa-pinterest-p d-inline mx-3 fa-lg text-white"></i></a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center">© Copyright 2017 Pingendo - All rights reserved. </p>
        </div>
      </div>
    </div>
  </div>
  </footer>
</form>
  <div id="bt"></div>
</body>
</html>