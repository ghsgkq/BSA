<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<title>booking</title>
<link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/timepicker/jquery.timepicker.css">
  <script src="${pageContext.request.contextPath}/JSP/timepicker/jquery.timepicker.min.js"></script>
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

<script type="text/javascript">	
function booking(){
	location.href="${pageContext.request.contextPath}/Bookinground.do";
	}
</script>

<!-- 잘못입력시 메시지 (편도) -->
<!-- 부산(편도) -->
<c:if test="${where_from_check == 1}">
<script type="text/javascript">
alert("목적지를 선택하세요");
</script>
</c:if>

<c:if test="${pickup_check == 1 }">
<script type="text/javascript">
alert("태울장소를 입력하세요");
</script>
</c:if>

<c:if test="${start_airline_name_check == 1 }">
<script type="text/javascript">
alert("비행편을 선택하세요");
</script>
</c:if>

<c:if test="${start_airline_no_check == 1}">
<script type="text/javascript">
alert("비행번호를 입력하세요");
</script>
</c:if>

<c:if test="${start_airline_no_check == 2 }">
<script type="text/javascript">
alert("비행번호에는 숫자,영대문자 소문자,- 만 들어갈수 있습니다 ");
</script>
</c:if>

<c:if test="${start_airline_time_check == 1}">
<script type="text/javascript">
alert("비행 출발시간을 입력하세요");
</script>
</c:if>

<c:if test="${start_date_check == 1 }">
<script type="text/javascript">
alert("출발날짜를 선택하세요");
</script>
</c:if>

<!-- 인천(편도) -->
<c:if test="${dropft_check == 1 }">
<script type="text/javascript">
alert("내려줄 장소를 입력하세요");
</script>
</c:if>

<c:if test="${arrival_airline_name_check == 1 }">
<script type="text/javascript">
alert("비행편을 선택하세요")
</script>
</c:if>

<c:if test="${arrival_airline_no_check == 1 }">
<script type="text/javascript">
alert("비행번호를 입력하세요");
</script>
</c:if>

<c:if test="${arrival_airline_no_check == 2 }">
<script type="text/javascript">
alert("비행번호에는 숫자,영대문자 소문자,- 만 들어갈수 있습니다 ");
</script>
</c:if>

<c:if test="${arrival_airline_time_check == 1 }">
<script type="text/javascript">
alert("비행 도착시간을 입력하세요");
</script>
</c:if>

<c:if test="${arrival_date_check == 1 }">
<script type="text/javascript">
alert("도착날짜를 선택하세요");
</script>
</c:if>

<c:if test="${passengers_check == 1 }">
<script type="text/javascript">
alert("승객수를 선택하세요");
</script>
</c:if>

</head>

<body>
  <div id="contents"></div>
  <nav class="navbar navbar-expand-md bg-dark navbar-dark my-3">
    <div class="container" style="margin-top: 60px;">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <a class="ml-3 btn navbar-btn btn-dark border border-warning" href="${pageContext.request.contextPath}/index.do">Home</a>&nbsp;&nbsp; <a class="navbar-brand" ><b class="text-danger" >1.STEP&nbsp;</b><b></b><i class="fa fa-forward fa-lg d-inline text-muted"></i>&nbsp;<b class="text-light">2.STEP&nbsp;</b><i class="fa fa-forward fa-lg d-inline text-muted"></i>&nbsp;<b class="text-light">3.STEP&nbsp;</b></a><i class="fa fa-lg d-inline text-white fa-globe"></i> 
        </div>
    </div>
  </nav>
  <form method="post" name="writeForm" action="${pageContext.request.contextPath}/BookingPro.do">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header py-4">
              <h5 class=""> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <input type="radio" value="왕복" name="where_trip"  class="triptype" onclick="booking()"> Round Trip( 왕복) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <input type="radio" value="편도" name="where_trip"  class="triptype" checked>&nbsp;One Way (편도) </h5>
           
            </div>
          
            
             
            <div class="card-body">
              <h4 class="my-5">Select your destination &nbsp;(목적지를 선택해주세요.)</h4>
              <h6 class="text-muted">From (출발)</h6>



              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-right fa-lg"></i> 
              <select id="select" name="where_from" class="form-control-sm px-3 mx-2">
            	<option id="1" value="#">-----select-----</option>
                <option id="2" value="Gimhean Airporter(김해공항)">Gimhea Airporter (김해공항)</option>
                <option id="3" value="Busan(부산)">Busan (부산)</option>
			</select> </div>

				 <div id="abc3">
              <p class=" p-y-1">&nbsp;</p>        
              <h6 class="text-muted">Pickup Loaction &nbsp;(태울장소)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-up fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="input text (태울 장소를 입력해주세요.)" name="pickup"> </div><br><br>
              <h6 class="text-muted">Outbound/Departing Airline (비행편을 선택해주세요.)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-plane fa-lg"></i> <select name="start_airline_name" class="form-control-sm px-3 mx-2">
                <option value="#">-- select airline --</option>
                <option value="에어부산">에어부산 </option>
            	<option value="아시아나항공">아시아나항공 </option>
                <option value="제주항공">제주항공 </option>
                <option value="중화항공">중화항공 </option>
                <option value="대한항공">대한항공 </option>
                <option value="이스타항공">이스타항공 </option>
                <option value="중국동방항공">중국동방항공 </option>
                <option value="일본항공1">일본항공 </option>
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
               <input type="text" class="form-control mr-3 my-1" placeholder="Flight No (비행 번호를 입력해주세요.)" name="start_airline_no"> </div><br><br>
              <h6 class="text-muted">Flight Time (비행 출발시간)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-tachometer fa-lg"></i>
                <input type="text" id="timepicker" class="from-control text-left w-50 m-2 border border-dark" name="start_airline_time">
                <script type="text/javascript">
                  $( "#timepicker" ).timepicker({
                	  step: 30,
                	  timeFormat: "H:i"
                  });
                  
                </script>
                </div><br><br>
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
               </div> 

               <div id="abc2">
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">Dropft Location (내려줄 장소)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-down fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="input text (내릴 장소를 입력해주세요.)" name="dropft"> </div><br><br>
                <h6 class="text-muted">Inbound/Arrival Airline (비행편을 선택헤주세요.)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-plane fa-lg"></i> <select name="arrival_airline_name" class="form-control-sm px-3 mx-2">
                <option value="#">-- select airline --</option>
                <option value="에어부산">에어부산 </option>
            		<option value="아시아나항공">아시아나항공 </option>
                <option value="제주항공">제주항공 </option>
                <option value="중화항공">중화항공 </option>
                <option value="대한항공">대한항공 </option>
                <option value="이스타항공">이스타항공 </option>
                <option value="중국동방항공">중국동방항공 </option>
                <option value="일본항공">일본항공 </option>
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
                <input type="text" class="form-control mr-3 my-1" placeholder="Flight No (비행 번호를 입력해주세요.)" id="firstname" name="arrival_airline_no"> </div> <br><br>
                <h6 class="text-muted">Flight Time (비행 도착시간)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-tachometer fa-lg"></i>
                <input type="text" id="timepicker1" class="from-control text-left w-50 m-2 border border-dark" name="arrival_airline_time">
                <script type="text/javascript">
                  $( "#timepicker1" ).timepicker({
                	  step: 30,
                	  timeFormat: "H:i"
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
               </div>
              </div>

              <p class=" p-y-1">&nbsp;</p>
              <p class=" p-y-1">&nbsp;</p>
              <h4 class="my-5">How many passengers? &nbsp;(승객수를선택해주세요.)</h4>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(어른)Adults 20+</h6>
                <input type="number" class="form-control" placeholder="0" name="adults" value="0"> </div>
              <p class="p-y-1">&nbsp;</p>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(청소년)Young 13-20</h6>
                <input type="number" class="form-control" placeholder="0" name="young" value="0"> </div>
              <p class="p-y-1">&nbsp;</p>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(어린이)Child 2-12</h6>
                <input type="number" class="form-control" placeholder="0" name="child" value="0"> </div>
              <p class="p-y-1">&nbsp;</p>
              <div class="input-group w-50 border border-dark"> <i class="fa d-inline fa-lg p-2 fa-user-circle"></i>
                <h6 class="text-muted p-2">(유아)Infatns 0-2</h6>
                <input type="number" class="form-control" placeholder="0" name="infatns" value="0"> </div>
                
                
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
          <div class="form-inline">       
            <button type="submit" class="btn ml-3 btn-secondary">Next</button>
            </div>

         
         
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
  </form>
  
  <div id="bt"></div>
  <script type="text/javascript">
    $("#abc2,#abc3").hide();
    $("#select").change(function () {
		$("#abc1, #abc2, #abc3").hide();
		$('#abc' + $(this).find('option:selected').attr('id')).show();
	});
                    
</script>
</body>

</html>