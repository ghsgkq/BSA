<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<title>checking_booked</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
  <script type="text/javascript">
  function mySubmit(index) {
		if(index == 1){
			document.booking_form.action='${pageContext.request.contextPath}/deletebooking.do'
		}
	  document.booking_form.submit();
	}
  </script>
  
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
</head>
<body style="margin-top:80pt;">

<div id="contents"></div>
 <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h4>1. Resvervation(예약 내역)</h4>
        </div>
        <div class="col-md-4">
          
        </div>
        <div class="col-md-4">
        <form method="post" name="checking_Booked" action="${pageContext.request.contextPath}/checkbookedPro.do">
          <input type="radio" name="tripcheck" value="1" checked="checked">편도   <input type="radio" name="tripcheck" value="2">왕복<br><br>
          <b>Insert email(이메일 입력)</b><input type="text" name="email" class="form-control" placeholder="insert your email" value="${email }"><br></br>
          <a href="javascript:document.checking_Booked.submit()" class="btn btn-outline-dark"><b>Search Your Booked (예약 찾기)</b></a>
        </form>
        </div>
      </div>
    </div>
  </div>
  <form method="post" name="booking_form">
  <div class="py-5">
    <div class="container h-25">
      <div class="border-dark">
      <c:if test="${tripcheck == 1 }">
        <table class="table" >
          <thead>  
            <tr>
              <th class="text-center text-secondary">Choice</th>
              <th class="text-center text-secondary"> 예약일자/요일</th>
              <th class="text-center text-secondary">Round/OneWay</th>
              <th class="text-center text-secondary">Bus Time</th>
              <th class="text-center text-secondary">Pickup</th>
              <th class="text-center p-4 text-secondary">Dropft</th>
              <th class="text-center text-secondary">People</th>
              <th class="text-center text-secondary">Payment</th>
            </tr>
             <c:forEach items="${arrbdto }" var="arr">
             <c:if test="${arr.where_trip == '편도'}">
            <tr> 
            	<th class="text-center"><input type="radio" name="code" value="${arr.code }"></th>
           	  <c:if test="${arr.pickup != null}">
              <th class="text-center">${arr.start_date }</th>
              </c:if>
              <c:if test="${arr.dropft != null}">
              <th class="text-center">${arr.arrival_date }</th>
              </c:if>
              <th class="text-center">${arr.where_trip }</th>
              <c:if test="${arr.pickup != null}">
              <th class="text-center">${arr.bus_time_pickup }</th>
              <th class="text-center">${arr.pickup }</th>
              <th class="text-center">${arr.where_from }</th>
              </c:if>
              <c:if test="${arr.dropft != null }">
              <th class="text-center">${arr.bus_time_dropft }</th>
              <th class="text-center">${arr.where_from }</th>
              <th class="text-center">${arr.dropft }</th>
              </c:if>
              <th class="text-center">${arr.adults+arr.young+arr.child+arr.infatns }</th>
              <th class="text-center">${arr.money }</th>
            </tr>
            </c:if>
            </c:forEach>
          
          </thead>
        </table>
        </c:if>
        
        <c:if test="${tripcheck == 2 }">
        <table class="table">
          <thead>  
            <tr> 
              <th class="text-center text-secondary">Choice</th>
              <th class="text-center text-secondary"> 예약일자/요일</th>
              <th class="text-center text-secondary"> 도착일자/요일</th>
              <th class="text-center text-secondary">Round/OneWay</th>
              <th class="text-center text-secondary">Bus Time</th>
              <th class="text-center text-secondary">Pickup</th>
              <th class="text-center text-secondary">where_from</th>
              <th class="text-center text-secondary">Bus Time</th>
              <th class="text-center p-4 text-secondary">where_to</th>
              <th class="text-center p-4 text-secondary">Dropft</th>
              <th class="text-center text-secondary">People</th>
              <th class="text-center text-secondary">Payment</th>
            </tr>
            
            <c:forEach items="${arrbdto }" var="arr">
            <c:if test="${arr.where_trip == '왕복'}">
            <tr>
              <th class="text-center"><input type="radio" name="code" value="${arr.code }"></th>
              <th class="text-center">${arr.start_date }</th>
              <th class="text-center">${arr.arrival_date }</th>
              <th class="text-center">${arr.where_trip }</th>
              <th class="text-center">${arr.bus_time_pickup }</th>
              <th class="text-center">${arr.pickup }</th>
              <th class="text-center">${arr.where_from }</th>
              <th class="text-center">${arr.bus_time_dropft }</th>
              <th class="text-center">${arr.where_to }</th>
              <th class="text-center">${arr.dropft }</th>
              <th class="text-center">${arr.adults+arr.young+arr.child+arr.infatns }</th>
              <th class="text-center">${arr.money }</th>
            </tr>
            </c:if>
            </c:forEach>
            
            <tr></tr>
          </thead>
        </table>
        </c:if>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <input type="button" class="btn btn-outline-dark" value="Cancel (예약취소)" onclick="mySubmit(1)"> 
        </div>
      </div>
    </div>
  </div>
</form>
  <div id="bt"></div>

</body>

</html>