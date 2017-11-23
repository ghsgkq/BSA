<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
  </head>

<body style="margin-top: 80px;">
  <div id="contents"></div>
  <form action="${pageContext.request.contextPath}/paymentPro.do" method="post">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
                <h1><b> 예약 확인 </b></h1>
            </div>
            
            <div class="card-body">
              <ul class="list-group"></ul>
            </div>
            <div class="form-group"> <label><p class="lead"><h2><b> ${where_trip} </b></h2></p></label><br><br>
           	<input type="hidden" name="where_trip" value="${where_trip }">
           
           	<div class="form-group"> <label><h2><b> 이름 </b></h2><p class="lead">${first_name } </p></label></div>
           	<input type="hidden" name="first_name" value="${first_name }">
           	
           	<div class="form-group"> <label><h2><b> 성 </b></h2><p class="lead">${last_name } </p></label></div>
           	<input type="hidden" name="last_name" value="${last_name }">
           	
           	<div class="form-group"> <label><h2><b> 휴대폰번호 </b></h2><p class="lead">${phone } </p></label></div>
           	<input type="hidden" name="phone" value="${phone }">
           	
           	<div class="form-group"> <label><h2><b> 이메일 </b></h2><p class="lead">${email } </p></label></div>
           	<input type="hidden" name="email" value=${email }>
           	
           	<div class="form-group"> <label><h2><b> from </b></h2><p class="lead">${where_from } </p></label></div>
           	<input type="hidden" name="where_from" value=${where_from }>
           	
           	<c:if test="${where_to != '' }">
           	<div class="form-group"> <label><h2><b> to </b></h2><p class="lead">${to } </p></label></div>
           	<input type="hidden" name="where_to" value="${where_to }">
           	</c:if>
           	
           	<c:if test="${pickup != '' }">
           	<div class="form-group"> <label><h2><b> 태울장소 </b></h2><p class="lead">${pickup } </p></label></div>
           	<input type="hidden" name="pickup" value="${pickup }">
           	<div class="form-group"> <label><h2><b> 항공이름  </b></h2><p class="lead">${start_airline_name } </p></label></div>
           	<input type="hidden" name="start_airline_name" value="${start_airline_name }">
           	<div class="form-group"> <label><h2><b> 비행기넘버  </b></h2><p class="lead">${start_airline_no } </p></label></div>
           	<input type="hidden" name="start_airline_no" value="${start_airline_no }">
           	<div class="form-group"> <label><h2><b> 비행기예약시간  </b></h2><p class="lead">${start_airline_time } </p></label></div>
           	<input type="hidden" name="start_airline_time" value="${start_airline_time }">
           	<div class="form-group"> <label><h2><b> 버스예약시간  </b></h2><p class="lead">${bus_time_pickup } </p></label></div>
           	<input type="hidden" name="bus_time_pickup" value="${bus_time_pickup }">
           	<div class="form-group"> <label><h2><b> 예약날짜  </b></h2><p class="lead">${start_date } </p></label></div>
           	<input type="hidden" name="start_date" value="${start_date }">
           	</c:if>

           	
           	<c:if test="${dropft != '' }">
           	<div class="form-group"> <label><h2><b> 내릴장소 </b></h2><p class="lead">${dropft } </p></label></div>
           	<input type="hidden" name="dropft" value="${dropft}">
           	<div class="form-group"> <label><h2><b> 항공이름  </b></h2><p class="lead">${arrival_airline_name } </p></label></div>
           	<input type="hidden" name="arrival_airline_name" value="${arrival_airline_name }">
           	<div class="form-group"> <label><h2><b> 비행기넘버  </b></h2><p class="lead">${arrival_airline_no } </p></label></div>
           	<input type="hidden" name="arrival_airline_no" value="${arrival_airline_no }">
           	<div class="form-group"> <label><h2><b> 비행기예약시간  </b></h2><p class="lead">${arrival_airline_time } </p></label></div>
           	<input type="hidden" name="arrival_airline_time" value="${arrival_airline_time }">
           	<div class="form-group"> <label><h2><b> 버스예약시간  </b></h2><p class="lead">${bus_time_dropft } </p></label></div>
           	<input type="hidden" name="bus_time_dropft" value="${bus_time_dropft }">
           	<div class="form-group"> <label><h2><b> 예약날짜  </b></h2><p class="lead">${arrival_date } </p></label></div>
           	<input type="hidden" name="arrival_date" value="${arrival_date }">
           	</c:if>
          	
        
          	
              <h3><b>어른</b></h3>
              <div class="blockquote-footer">${adults }명</div>
              <input type="hidden" name="adults" value="${adults }">
              
              <h3><b>청소년</b></h3>
              <div class="blockquote-footer">${young }명</div>
              <input type="hidden" name="young" value="${young }">
              
              <h3><b>어린이</b></h3>
              <div class="blockquote-footer">${child }명</div>
              <input type="hidden" name="child" value="${child }">
              
              <h3><b>유아</b></h3>
              <div class="blockquote-footer">${infatns}명</div>
              <input type="hidden" name="infatns" value="${infatns }">
              
              <input type="hidden" name="name_on_card" value="${name_on_card }">
              <input type="hidden" name="card_number" value="${card_number }">
              <input type="hidden" name="expiry_year" value="${expiry_year }">
              <input type="hidden" name="expiry_month" value="${expiry_month }">
              <input type="hidden" name="csv_number" value="${csv_number }">
              <div class="form-group"> <label><h2><b> 하고싶은말  </b></h2><p class="lead">${comm } </p></label></div>
              <input type="hidden" name="comm" value="${comm }">
              <div class="form-group"> <label><h2><b> 가격  </b></h2><p class="lead">${money } </p></label></div>
           	<input type="hidden" name="money" value="${money }">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <input type="submit" class="btn btn-primary" value="예약하기">
         </form>
         <form action="${pageContext.request.contextPath}/Booking.do" method="post">
            <input type="submit" class="btn btn-primary" value="다시입력">
 	 
   		</form>
        </div>
      </div>
    </div>
  </div>
  
  <div id="bt"></div>
</body>

</html>