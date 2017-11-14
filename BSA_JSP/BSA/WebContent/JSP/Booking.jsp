<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.3/jquery.timepicker.min.css">
  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.3/jquery.timepicker.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/style_index.css" type="text/css">
  <script src="click_cal.js"></script>
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
                <input type="radio" name="round" value="#" class=""> Round( 왕복) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <input
                  type="radio" name="oneway" value="#" class="">&nbsp;One Way (편도) </h5>
            </div>
            <div class="card-body">
              <h4 class="my-5">Select your destination &nbsp;(목적지를 선택해주세요.)</h4>
              <h6 class="text-muted">From (출발)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-right fa-lg"></i> <select name="date" class="form-control-sm px-3 mx-2">
                <option value="1">Gimhea Airporter (김해공항)</option>
                <option value="2">Busan (부산)</option>
            
            
              
              </select> </div>
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">to (도착)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-left fa-lg"></i> <select name="date" class="form-control-sm px-3 mx-2">
                <option value="1">Busan (부산)</option>
           			<option value="1">Gimhea Airporter (김해공항)</option>
            
              
              </select> </div>
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">Pickup Loaction &nbsp;(태울장소)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-up fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="input text (태울 장소를 입력해주세요.)" id="firstname"> </div>
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">Dropft Location (내려줄 장소)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-angle-double-down fa-lg"></i>
                <input type="text" class="form-control mr-3 my-1" placeholder="input text (내릴 장소를 입력해주세요.)" id="firstname"> </div>
              <h4 class="my-5">Airline and Flight Details &nbsp;(비행편을 적어주세요.)</h4>
              <h6 class="text-muted">Outbound/Departing Airline (비행편을 선택해주세요.)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-plane fa-lg"></i> <select name="date" class="form-control-sm px-3 mx-2">
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
                <input type="text" class="form-control mr-3 my-1" placeholder="Flight No (비행 번호를 입력해주세요.)" id="firstname"> </div>
              <h6 class="text-muted">Flight Time (비행 출발시간)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-tachometer fa-lg"></i>
                <input type="text" id="timepicker" class="from-control text-left w-50 m-2 border border-dark">
                <script type="text/javascript">
                  $( "#timepicker" ).timepicker();
                </script>
              </div>
              <p class=" p-y-1">&nbsp;</p>
              <h6 class="text-muted">Inbound/Arrival Airline (비행편을 선택헤주세요.)</h6>
              <div class="input-group w-100"> <i class="fa d-inline fa-plane fa-lg"></i> <select name="date" class="form-control-sm px-3 mx-2">
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
                <input type="text" class="form-control mr-3 my-1" placeholder="Flight No (비행 번호를 입력해주세요.)" id="firstname"> </div>
              <h6 class="text-muted">Flight Time (비행 도착시간)</h6>
              <div class="input-group w-25"> <i class="fa d-inline fa-tachometer fa-lg"></i>
                <input type="text" id="timepicker" class="from-control text-left w-50 m-2 border border-dark">
                <script type="text/javascript">
                  $( "#timepicker" ).timepicker();
                </script>
              </div>
              <h4 class="my-5">Date &nbsp;(날짜를 선택해주세요.)</h4>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="bt"></div>
</body>

</html>