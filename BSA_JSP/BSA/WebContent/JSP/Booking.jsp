<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.3/jquery.timepicker.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.3/jquery.timepicker.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP/Booking_script.js"></script>
  <!-- test -->
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="David Bushell">
    <link rel="stylesheet" href="JSP/style/pikaday.css">
    <link rel="stylesheet" href="JSP/style/site.css">
    
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/style_index.css" type="text/css">
  
  <style type="text/css">
    .my-box {
      border: 1px solid;
      padding: 100px;
    }
  </style>
  <style type="text/css">
    .my-box2 {
      border: 1px solid;
      padding: 200px;
    }
  </style>
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
</head>

<body style="margin-top: 83px;">
  <div id="contents"></div>
  <nav class="navbar navbar-expand-md bg-dark navbar-dark my-3">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <a class="ml-3 btn navbar-btn btn-dark border border-warning" href="#">Reservation</a><i class="fa fa-stack-exchange fa-fw fa-3x d-inline pull-right bg-dark text-white"></i> </div>
    </div>
  </nav>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header py-4">
              <h5 class=""> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
              
                <input type="radio" id="round" name="type" value="0" class="triptype" onclick="div_OnOff(this.value,'con');"> Round Trip( 왕복) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <input
                  type="radio" id="oneway" name="type" value="1" class="triptype" onclick="div_OnOff(this.value,'con');">&nbsp;One Way (편도) </h5>
            </div>
            
             <form method="post" name="Booking" action="${pageContext.request.contextPath}/BookingPro.do" onsubmit="return Booking_Save()">
            <div class="card-body">
              <h4 class="my-5">Select your destination &nbsp;(목적지를 선택해주세요.)</h4>
              <h6 class="text-muted">From (출발)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-right fa-lg"></i> <select name="from" class="form-control-sm px-3 mx-2">
                <option value="1">Gimhea Airporter (김해공항)</option>
                <option value="2">Busan (부산)</option>
            
            
              
              </select> </div>
              <p class=" p-y-1">&nbsp;</p>
              <div id="con" style="display:none">
              <h6 class="text-muted">to (도착)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-left fa-lg"></i> <select name="to" class="form-control-sm px-3 mx-2">
                <option value="1">Busan (부산)</option>
           			<option value="1">Gimhea Airporter (김해공항)</option>
            
              
              </select> </div></div>
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">Pickup Loaction &nbsp;(태울장소)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-up fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="input text (태울 장소를 입력해주세요.)" name="pickup"> </div>
              <p class=" p-y-1">&nbsp;</p>
              
              <h6 class="text-muted">Dropft Location (내려줄 장소)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-down fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="input text (내릴 장소를 입력해주세요.)" name="dropft"> </div>
              <h4 class="my-5">Airline and Flight Details &nbsp;(비행편을 적어주세요.)</h4>
              <h6 class="text-muted">Outbound/Departing Airline (비행편을 선택해주세요.)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-plane fa-lg"></i> <select name="start_airline_name" class="form-control-sm px-3 mx-2">
                <option value="#">-- select airline --</option>
                <option value="1">에어부산 </option>
            		<option value="1">아시아나항공 </option>
                <option value="1">제주항공 </option>
                <option value="1">중화항공 </option>
                <option value="1">대한항공 </option>
                <option value="1">이스타항공 </option>
                <option value="1">중국동방항공 </option>
                <option value="1">일본항공 </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                
            
              
              </select><i class="fa d-inline fa-hashtag fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="Flight No (비행 번호를 입력해주세요.)" name="start_airline_no"> </div>
              <h6 class="text-muted">Flight Time (비행 출발시간)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-tachometer fa-lg"></i>
                <input type="text" id="timepicker" class="from-control text-left w-50 m-2 border border-dark" name="start_flight_time">
                <script type="text/javascript">
                  $( "#timepicker" ).timepicker();
                </script>
              </div>
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">Inbound/Arrival Airline (비행편을 선택헤주세요.)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-plane fa-lg"></i> <select name="arrival_airline_name" class="form-control-sm px-3 mx-2">
                <option value="#">-- select airline --</option>
                <option value="1">에어부산 </option>
            		<option value="1">아시아나항공 </option>
                <option value="1">제주항공 </option>
                <option value="1">중화항공 </option>
                <option value="1">대한항공 </option>
                <option value="1">이스타항공 </option>
                <option value="1">중국동방항공 </option>
                <option value="1">일본항공 </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                <option value="1"> </option>
                
            
              
              </select><i class="fa d-inline fa-hashtag fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="Flight No (비행 번호를 입력해주세요.)" id="firstname" name="arrival_airline_no"> </div>
              <h6 class="text-muted">Flight Time (비행 도착시간)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-tachometer fa-lg"></i>
                <input type="text" id="timepicker1" class="from-control text-left w-50 m-2 border border-dark" name="arrival_airline_time">
                <script type="text/javascript">
                  $( "#timepicker1" ).timepicker();
                </script>
              </div>

              <h4 class="my-5">Date &nbsp;(날짜를 선택해주세요.)</h4>
              <h6 class="text-muted">Departing (출발 날짜를 선택해주세요.)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-lg fa-calendar"></i>
                <input type="text" id="datepicker" name="start_date">
               
                 <script src="JSP/pikaday.js"></script>
             <script>

   		 var picker = new Pikaday(
    {
        field: document.getElementById('datepicker'),
        firstDay: 1,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        yearRange: [2000,2020]
    });

    </script>
               
              </div>
              
            
              <p class=" p-y-1">&nbsp;</p>
            
              <h6 class="text-muted">Returning (Same day return) &nbsp;(도착날짜를 선택해주세요.)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-lg fa-calendar"></i>
                <input type="text" id="datepicker1" name="arrival_date">
                
             <script src="JSP/pikaday.js"></script>
             <script>

   		 var picker = new Pikaday(
    {
        field: document.getElementById('datepicker1'),
        firstDay: 1,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        yearRange: [2000,2020]
    });

    </script>
    
    <script>
function div_OnOff(v,id){
 // 라디오 버튼 value 값 조건 비교
 if(v == "0"){
  document.getElementById(id).style.display = ""; // 보여줌
 }else{
  document.getElementById(id).style.display = "none"; // 숨김
 }
}
</script>
               </div>
              
              <p class=" p-y-1">&nbsp;</p>
              <p class=" p-y-1">&nbsp;</p>
              <h4 class="my-5">How many passengers? &nbsp;(승객수를선택해주세요.)</h4>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(어른)Adults 20+</h6>
                <input type="number" class="form-control" placeholder="0" name="adults"> </div>
              <p class="p-y-1">&nbsp;</p>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(청소년)Young 13-20</h6>
                <input type="number" class="form-control" placeholder="0" name="young"> </div>
              <p class="p-y-1">&nbsp;</p>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(어린이)Child 2-12</h6>
                <input type="number" class="form-control" placeholder="0" name="child"> </div>
              <p class="p-y-1">&nbsp;</p>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(유아)Infatns 0-2</h6>
                <input type="number" class="form-control" placeholder="0" name="infatns"> </div>
                
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-12 bg-light">
          <p class="lead bg-light">Sign up to our newsletter for the latest news</p>
          <form class="form-inline">
            <button type="submit" class="btn ml-3 btn-secondary">Next</button>
            
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3 text-center">
          <p>© Copyright 2017 Pingendo - All rights reserved.</p>
        </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-expand-md bg-dark navbar-dark my-2">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <h4 class="m-0 text-light">Busan Shuttle Airporter</h4><i class="fa fa-fw fa-3x d-inline pull-right bg-dark text-white fa-life-ring"></i> </div>
    </div>
  </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="bt"></div>
</body>

</html>