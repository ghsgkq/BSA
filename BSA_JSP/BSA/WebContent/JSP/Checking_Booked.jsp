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
<body style="margin-top:80pt;">
<form method="post" name="checking_Booked" action="${pagecontext.request.contextpath}/checkbooked.do">
<div id="contents"></div>
 <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h4>1. Resvervation(예약 내역)</h4>
        </div>
        <div class="col-md-4">
          <a href="#" class="btn btn-outline-dark"><b>Cancel (예약취소)</b></a><br></br>
          <a href="#" class="btn btn-outline-dark"><b>Change Booking (예약 변경)</b></a>
        </div>
        <div class="col-md-4">
          <b>Insert Name(이름 입력)</b><input type="text" name="email" class="form-control" placeholder="insert your Name">
          <b>Insert Phone Number(휴대번호 입력)</b><input type="text" class="form-control" placeholder="insert your Phone Number"><br></br>
          <a href="#" class="btn btn-outline-dark"><b>Search Your Booked (예약 찾기)</b></a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container h-25">
      <div class="border-dark">
        <table class="table">
          <thead>
            <tr>
              <th class="text-center text-secondary"> 예약일자/요일</th>
              <th class="text-center text-secondary">Round/OneWay(왕복/편도)</th>
              <th class="text-center text-secondary">Bus Time(탑승시간)</th>
              <th class="text-center text-secondary">Pickup(탑승장소)</th>
              <th class="text-center p-4 text-secondary">Dropft(내릴장소)</th>
              <th class="text-center text-secondary">People(탑승객수)</th>
              <th class="text-center text-secondary">Payment(금액)</th>
            </tr>
            <tr>
              <th class="text-center">#</th>
              <th class="text-center">First Name</th>
              <th class="text-center">fd</th>
              <th class="text-center">fdfd</th>
              <th class="text-center">왕복일때 시간입력 두개</th>
              <th class="text-center">fdfd</th>
              <th class="text-center">Last Name</th>
            </tr>
            <tr></tr>
          </thead>
          <tbody>
            <tr></tr>
            <tr></tr>
            <tr></tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <input type="reset" class="btn btn-outline-dark" value="Refresh"></a>
        </div>
      </div>
    </div>
  </div>
  </form>
  <div id="bt"></div>
</body>

</html>