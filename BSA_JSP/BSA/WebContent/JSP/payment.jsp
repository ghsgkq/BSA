<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Payment</title>
<link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}style/style_index.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<script type="text/javascript">
  $(document).ready( function() {
  	$("#contents").load("JSP/top.jsp");
  	$("#bt").load("JSP/bottom.jsp");
  });

</script>

<c:choose>

<c:when test="${first_name_check == 1 }">
<script type="text/javascript">
alert("이름을 입력하세요");
</script>
</c:when>

<c:when test="${last_name_check == 1 }">
<script type="text/javascript">
alert("성을 입력하세요");
</script>
</c:when>

<c:when test="${phone_check == 1 }">
<script type="text/javascript">
alert("전화번호를 입력하세요")
</script>
</c:when>

<c:when test="${phone_check == 2}">
<script type="text/javascript">
alert("전화번호 최소길이는 11자,최대길이는 13자이며(-포함) \n 숫자와 -(2번)만 적으실수 있습니다.");
</script>
</c:when>

<c:when test="${email_check == 1 }">
<script type="text/javascript">
alert("이메일을 입력하세요");
</script>
</c:when>

<c:when test="${email_check == 2 }">
<script type="text/javascript">
alert("이메일에는 숫자와 영문(대문자,소문자) @(1번)와 .(1번)만 쓰실수 있습니다.")
</script>
</c:when>

<c:when test="${comm_check == 1 }">
<script type="text/javascript">
alert("의견을 적어주세요");
</script>
</c:when>

<c:when test="${name_on_card_check == 1}">
<script type="text/javascript">
alert("카드사 이름을 입력하세요");
</script>
</c:when>

<c:when test="${card_number_check == 1 }">
<script type="text/javascript">
alert("카드번호를 입력하세요");
</script>
</c:when>

<c:when test="${card_number_check == 2 }">
<script type="text/javascript">
alert("카드번호는 19자리수입니다(-포함) \n 숫자와 -(3)만 적으실수 있습니다.");
</script>
</c:when>

<c:when test="${expiry_year_check == 1 }">
<script type="text/javascript">
alert("카드유효년도를 선택하세요");
</script>
</c:when>

<c:when test="${expiry_month_check == 1 }">
<script type="text/javascript">
alert("카드유효달을 선택하세요");
</script>
</c:when>

<c:when test="${csv_number_check == 1 }">
<script type="text/javascript">
alert("csv를 입력하세요");
</script>
</c:when>

<c:when test="${csv_number_check == 2}">
<script type="text/javascript">
alert("csv는 3자리수를 입력해야하고 \n 숫자만 입력가능합니다.");
</script>
</c:when>


<c:when test="${bus_time_pickup_check == 1 }">
<script type="text/javascript">
alert("버스 시간(puckup)을 선택하세요")
</script>
</c:when>

<c:when test="${bus_time_dropft_check == 1}">
<script type="text/javascript">
alert("버스 시간(dropft)을 선택하세요")
</script>
</c:when>

</c:choose>

</head>
<body class="bg-light" style="margin-top:83px;">



  <div id="contents"></div>
  <nav class="navbar navbar-expand-md navbar-dark bg-secondary">
    <div class="container">
      <a class="navbar-brand w-100" href="#"><i class="fa mx-5 px-5 fa-calculator fa-2x"></i><i class="fa d-inline mx-5 px-5 fa-cc-visa fa-2x"></i><i class="fa d-inline w-100 mx-5 px-5 fa-cc-mastercard fa-2x"></i><i class="fa mx-5 px-5 fa-id-card-o fa-2x"></i></a>
      <button class="navbar-toggler navbar-toggler-right"
        type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
        <ul class="navbar-nav" style="opacity: 0.5;">
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa d-inline fa-bookmark-o fa-2x"></i>&nbsp;Map</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa d-inline fa-envelope-o fa-2x"></i>&nbsp;Contacts</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <form method="post" name="paymentForm" action="${pageContext.request.contextPath}/payment.do">
  <div class="py-5 h-50 w-100 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card border border-light">
            <div class="card-body">
            <h6 class="text-muted">버스시간대를 골라주세요</h6>
            <br><br>
      		<c:if test="${start_time_list != '' && start_time_list != null }">
      		<div class="form-group"><h2><b> ${where_from }  </b></h2></div>
      		<br>
            <select name="bus_time_pickup" class="form-control-sm px-3 mx-2">
            <c:forEach var="bus_time" items="${start_time_list }">
            <option value="${bus_time }">${bus_time }</option>
            </c:forEach>
            </select>
            <br><br>
            </c:if>
            
            <c:if test="${arrival_time_list != '' && arrival_time_list != null }">
            <div class="form-group"><h2><b> ${where_to }  </b></h2></div>
            <br>
            <select name="bus_time_dropft" class="form-control-sm px-3 mx-2">
            <c:forEach var="bus_time" items="${arrival_time_list }">
            <option value="${bus_time }">${bus_time }</option>
            </c:forEach>
            </select>
            </c:if>
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="h-100 text-muted border border-dark bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 h-100 m-5">
          <div class="card-body w-75">
            <h4 class="text-dark">Please &nbsp;Enter Your Details</h4>
            <label>First name *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-user fa-2x"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="이름을 입력해주세요." name="first_name" value="${first_name}"></div>
              <label><br>Last name *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-user"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="성을 입력해주세요." name="last_name" value="${last_name}"> </div>
              <label><br>TelePhone *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-volume-control-phone fa-2x"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="휴대폰 번호를 입력해주세요." name="phone" value="${phone}"> </div>
              <label><br>Email address *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-envelope-open-o fa-2x"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="이메일을 입력해주세요." name="email" value="${email }"> </div>
              <label><br>Comment *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-comment-o"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="요청사항을 적어주세요." name="comm" value="${comm }"> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="p-5 text-muted bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 m-5">
          <div class="card-body w-75">
            <h4 class="text-dark">Please &nbsp;Enter Your Payment Details</h4><label>Name On Credit Card<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-angellist"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="카드에 적힌 이름을 입력해주세요." name="name_on_card" value="${name_on_card }"> </div><label><br>Caredit Card Number<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-angellist"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="카드 번호를 입력해주세요." name="card_number" value="${card_number }"> </div><label><br>Expiry Date<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-angellist"></i> <select name="expiry_month" class="form-control-sm px-3 mx-2">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            
              
              </select> </div>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-angellist"></i> <select name="expiry_year" class="form-control-sm mx-2">
                <option value="2017">2017</option>
                <option value="2018">2018</option>
                <option value="2019">2019</option>
            		<option value="2020">2020</option>
            		<option value="2021">2021</option>
            		<option value="2022">2022</option>
            		<option value="2023">2023</option>
            		<option value="2024">2024</option>
            		<option value="2025">2025</option>
            		<option value="2026">2026</option>
            		<option value="2027">2027</option>
            		
            
              </select> </div><label><br>CSV number<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-angellist"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="CSV 번호를 입력해주세요." name="csv_number"> </div>
              <br><br>
              <div class="form-group"><h2><b> 결제금액  </b></h2></div>
              <br><br>
              <div class="form-group"><h2><b> ${money }  </b></h2></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center border border-dark bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="form-inline justify-content-center">
           <input type="hidden" name="where_trip" value="${where_trip }">
           <input type="hidden" name="where_from" value="${where_from }">
           <input type="hidden" name="where_to" value="${where_to }">
           <input type="hidden" name="pickup" value="${pickup }">
           <input type="hidden" name="start_airline_name" value="${start_airline_name }">
           <input type="hidden" name="start_airline_no" value="${start_airline_no }">
           <input type="hidden" name="start_airline_time" value="${start_airline_time }">
           <input type="hidden" name="start_date" value="${start_date }">
           <input type="hidden" name="dropft" value="${dropft }">
           <input type="hidden" name="arrival_airline_name" value="${arrival_airline_name }">
           <input type="hidden" name="arrival_airline_no" value="${arrival_airline_no }">
           <input type="hidden" name="arrival_airline_time" value="${arrival_airline_time }">
           <input type="hidden" name="arrival_date" value="${arrival_date }">
           <input type="hidden" name="adults" value="${adults }">
           <input type="hidden" name="young" value="${young }">
           <input type="hidden" name="child" value="${child }">
           <input type="hidden" name="infatns" value="${infatns }">
           <input type="hidden" name="money" value="${money }">
           <input type="hidden" name="arrival_time_list" value="${arrival_time_list }">
           <input type="hidden" name="start_time_list" value="${start_time_list }">
            <button type="submit" class="btn btn-secondary btn-lg p-4">next</button>
          </div>
            
        </div>
      </div>
    </div>
  </div>
  </form>
    <div id="bt"></div>
   
</body>

</html>