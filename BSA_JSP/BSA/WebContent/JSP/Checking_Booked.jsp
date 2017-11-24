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
          <a href="#" class="btn btn-outline-dark"><b>Cancel (예약취소)</b></a>
          <a href="#" class="btn btn-outline-dark"><b>Change Booking (예약 변경)</b></a>
        </div>
        <div class="col-md-4">
          <b>Insert Email(이메일 입력)</b><input type="email" name="email" class="form-control" placeholder="insert your email">
          <a href="#" class="btn btn-outline-dark"><b>Search Your Booked (예약 찾기)</b></a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="card">
        <div class="border border-dark">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"> 예약일자/요일 </li>&nbsp;&nbsp;&nbsp;Round/OneWay(왕복/편도)&nbsp;&nbsp;&nbsp;Pickup(탑승 장소) &nbsp;&nbsp;&nbsp;&nbsp;Dropft(내릴 장소) &nbsp;&nbsp;&nbsp;&nbsp;Bus Time(탑승시간) &nbsp;&nbsp;People(탑승객 수) &nbsp;&nbsp;Payment(금액) </ul>
          <div class="card">
            <div class="">
              <table class="table">
                <thead>
                  <tr>
                    <th class="text-center">#</th>
                    <th class="text-right">First Name</th>
                    <th class="text-right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fd</th>
                    <th class="text-right">&nbsp; &nbsp; &nbsp;fdfd</th>
                    <th class="text-right">왕복일때 시간입력 두개</th>
                    <th class="text-right">&nbsp;&nbsp;&nbsp;fdfd</th>
                    <th class="text-right">Last Name</th>
                  </tr>
                 
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