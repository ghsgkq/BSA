<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <title>checking_page</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/style_index.css" type="text/css"> 
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
   <script type="text/javascript">
   window.history.forward(0);
   function noBack(){window.history.forward();}
  </script>
  
   <script>
    function fnTest1(divName) {
      var frm = document.getElementById(divName);
      
      if (frm.style.display != "block") {
       frm.style.display = "block";
      } else {
       frm.style.display = "none";
      }
     }
  </script>
  </head>

<body class="bg-light" style="margin-top:100px;" onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<nav class="navbar navbar-expand-md bg-dark navbar-dark my-3">
    <div class="container" style="margin-top: 10px;">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <a class="ml-3 btn navbar-btn btn-dark border border-warning" href="${pageContext.request.contextPath}/index.do">Home</a>&nbsp;&nbsp; <a class="navbar-brand" ><b class="text-light" >1.STEP&nbsp;</b><b></b><i class="fa fa-forward fa-lg d-inline text-muted"></i>&nbsp;<b class="text-light">2.STEP&nbsp;</b><i class="fa fa-forward fa-lg d-inline text-muted"></i>&nbsp;<b class="text-danger">3.STEP&nbsp;</b></a><i class="fa fa-lg d-inline text-white fa-globe"></i> 
        </div>
    </div>
  </nav>
  <div id="contents"></div>
  <form action="${pageContext.request.contextPath}/paymentPro.do" method="post">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12 border border-dark bg-warning">
          <h2 class="pb-3 text-capitalize bg-dark text-center text-light my-2">Check your Reserver (예약 확인)
            <br> </h2>
        </div>
      </div>
    </div>
  </div>
  <div class="text-center p-1">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-muted border border-dark">
          <h4 class="text-left text-dark"><i class="d-block fa fa-columns">First Name (이름) : ${first_name }</i>
            <br>&nbsp;&nbsp;<i class="d-block fa fa-columns">Last Name (성) : ${last_name }</i>
            <br>&nbsp;&nbsp;<i class="fa fa-columns d-block">Phone Number (휴대폰번호) : ${phone }</i>
            <br>&nbsp;&nbsp;<i class="d-block fa fa-columns">E-mail : ${email }</i>
            <br>&nbsp;&nbsp;<i class="d-block fa fa-columns">Round & Oneway (왕복&편도) : ${where_trip }</i>
            <br>&nbsp;&nbsp;</h4>
        </div>
        <div class="text-muted col-md-6 border border-dark">
          <h4 class="text-left text-dark"><i class="d-block fa fa-user">Adults (어른) : ${adults }</i>
            <br>&nbsp;&nbsp;<i class="d-block fa fa-user">Young (청소년) : ${young }</i>
            <br>&nbsp;&nbsp;<i class="fa d-block fa-user">Child (어린이) : ${child }</i>
            <br>&nbsp;&nbsp;<i class="d-block fa fa-user">Infatns (유아) : ${infatns }</i>
            <br>&nbsp;&nbsp;<i class="d-block fa fa-viacoin text-danger">Price (가격) : ${money }</i> </h4>
        </div>
      </div>
      
      <div class="row">
      <c:if test="${pickup != ''}">
        <div class="text-right col-md-4 border border-dark">
          <div class="row my-5">
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="text-center text-danger">From (출발)<i class="d-block fa fa-2x fa-arrows-h text-secondary"></i></h5>
              <p class="text-center">${where_from }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa fa-2x fa-arrow-circle-o-up"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="text-right">Pickup Location (탑승장소) </h5>
              <p class="text-center">${pickup }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa fa-plane fa-2x"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="text-right">Airline Name (항공사 이름)</h5>
              <p class="text-center">${start_airline_name }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="fa  fa-2x d-block fa-plane"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="text-right" contenteditable="true">Airline Number (항공기 번호)</h5>
              <p class="text-center">${start_airline_no }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa  fa-2x fa-plane"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="text-right">Arrival Time (비행 도착시간)</h5>
              <p class="text-center">${start_airline_time }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa  fa-2x fa-bus"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="" contenteditable="true">Take a Bus (버스 탑승시간)&nbsp;</h5>
              <p class="text-center">${bus_time_pickup }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa  fa-2x fa-calendar-check-o"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h5 class="" contenteditable="true">Booking Date (예약 날짜)</h5>
              <p class="text-center">${start_date }</p>
            </div>
          </div>
        </div>
        </c:if>

        <div class="my-3 col-md-4 bg-warning">
         <c:if test="${dropft != ''}">
          <img class="d-block ml-1 h-100 img-fluid mx-auto" src="${pageContext.request.contextPath}/JSP/img/map.jpg "> </div>
        <div class="text-left col-md-4 border border-dark">
          <div class="row my-5">
            <div class="col-10">
              <h5 class="text-center text-danger">To (도착)<i class="d-block fa fa-2x fa-arrows-h text-secondary"></i></h5>
              <p class="text-center">${where_to }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa fa-2x fa-arrow-circle-o-down"></i></div>
            <div class="col-10">
              <h5 class="text-left">(내릴 장소) Dropft Location</h5>
              <p class="text-center">${dropft }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block mx-auto fa  fa-2x fa-plane"></i></div>
            <div class="col-10">
              <h5 class="" contenteditable="true">(항공사 이름) Airline Name</h5>
              <p class="text-center">${arrival_airline_name }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa  fa-2x fa-plane"></i></div>
            <div class="col-10">
              <h5 class="" contenteditable="true">(항공기 번호) Airline Number</h5>
              <p class="text-center">${arrival_airline_no }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa  fa-2x fa-plane"></i></div>
            <div class="col-10">
              <h5 class="" contenteditable="true">(비행 도착시간) Arrival Time</h5>
              <p class="text-center">${arrival_airline_time }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa  fa-2x fa-bus"></i></div>
            <div class="col-10">
              <h5 class="" contenteditable="true">(버스 탑승시간) Take a Bus</h5>
              <p class="text-center">${bus_time_dropft }</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa  fa-2x fa-calendar-check-o"></i></div>
            <div class="col-10">
              <h5 class="">(예약 날짜) Booking Date&nbsp;</h5>
              <p class="text-center">${arrival_date }</p>
            </div>
          </div>
        </div>
      </div>
    </div>
 </c:if>
  </div>
      <input type="hidden" name="where_trip" value="${where_trip }">
      <input type="hidden" name="first_name" value="${first_name }">
      <input type="hidden" name="last_name" value="${last_name }">
      <input type="hidden" name="phone" value="${phone }">
      <input type="hidden" name="email" value=${email }>
      <input type="hidden" name="where_from" value=${where_from }>
      <input type="hidden" name="where_to" value="${where_to }">
      <input type="hidden" name="pickup" value="${pickup }">
      <input type="hidden" name="start_airline_name" value="${start_airline_name }">
      <input type="hidden" name="start_airline_no" value="${start_airline_no }">
      <input type="hidden" name="start_airline_time" value="${start_airline_time }">
      <input type="hidden" name="start_date" value="${start_date }">
      <input type="hidden" name="bus_time_pickup" value="${bus_time_pickup }">
      <input type="hidden" name="dropft" value="${dropft}">
      <input type="hidden" name="arrival_airline_name" value="${arrival_airline_name }">
      <input type="hidden" name="arrival_airline_no" value="${arrival_airline_no }">
      <input type="hidden" name="arrival_airline_time" value="${arrival_airline_time }">
      <input type="hidden" name="bus_time_dropft" value="${bus_time_dropft }">
      <input type="hidden" name="arrival_date" value="${arrival_date }">
      <input type="hidden" name="adults" value="${adults }">
      <input type="hidden" name="young" value="${young }">
      <input type="hidden" name="infatns" value="${infatns }">
      <input type="hidden" name="child" value="${child }">
      <input type="hidden" name="name_on_card" value="${name_on_card }">
      <input type="hidden" name="card_number" value="${card_number }">
      <input type="hidden" name="expiry_year" value="${expiry_year }">
      <input type="hidden" name="expiry_month" value="${expiry_month }">
      <input type="hidden" name="csv_number" value="${csv_number }">
      <input type="hidden" name="comm" value="${comm }">
      <input type="hidden" name="money" value="${money }">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <input type="submit" class="btn btn-outline-dark" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="${pageContext.request.contextPath}/index.do" class="btn btn-outline-dark"><b>Return</b></a>
        </div>
        
        
      </div>
    </div>
  </div>
  </form>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark my-2">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <h4 class="m-0 text-light">Busan Airporter Shuttle</h4><i class="fa fa-fw fa-3x d-inline pull-right bg-dark text-white fa-life-ring"></i> </div>
    </div>
  </nav>
  <div id="bt"></div>
</body>

</html>