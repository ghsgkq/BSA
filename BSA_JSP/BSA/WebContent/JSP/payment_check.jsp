<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<body>
  <div id="contents"></div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <center>
                <h1><b> 예약 확인 </b></h1>
              </center>
            </div>
            <div class="card-body">
              <ul class="list-group"></ul>
            </div>
            <div class="form-group"> <label><h2><b> 목적지 </b></h2><p class="lead">Lead paragraph </p></label>
              <div class="form-group"> <label><h2><b> 출발 위치 </b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b> 도착 위치 </b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b> 탑승 장소 </b></h2></label>
                <p class="lead">Lead paragraph </p>
              </div>
              <div class="form-group"> <label><h2><b>하차 장소</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b>항공사</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b>비행 번호</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b>비행 도착시간</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b>출발 날짜</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b>도착 날짜</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <div class="form-group"> <label><h2><b>승객 수</b></h2><p class="lead">Lead paragraph </p></label> </div>
              <h3><b>어른</b></h3>
              <div class="blockquote-footer">Someone famous</div>
              <h3><b>청소년</b></h3>
              <div class="blockquote-footer">Someone famous</div>
              <h3><b>어린이</b></h3>
              <div class="blockquote-footer">Someone famous</div>
              <h3><b>유아</b></h3>
              <div class="blockquote-footer">Someone famous</div>
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
          <center>
            <a class="btn btn-primary" href="">Button </a>
            <a class="btn btn-primary" href="">Button </a>
          </center>
        </div>
      </div>
    </div>
  </div>
  <div id="bt"></div>
</body>

</html>