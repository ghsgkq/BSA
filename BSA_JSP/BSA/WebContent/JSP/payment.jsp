<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
  <div class="py-5 h-50 w-100 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card border border-light">
            <div class="card-body">
              <h2 class="text-left text-secondary">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your payment</h2>
              <h6 class="text-muted">여기는 시간 &nbsp;그리고 출발 도착 글자 날짜 순으로 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h6>
              <p class=" p-y-1" style="opacity: 0.5;">어디서 출발하는 시간 도착하는 시간 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <a class="btn btn-lg active border border-dark btn-light text-secondary" href="" data-toggle="">Remove&nbsp;</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <form method="post" name="paymentForm" action="${pageContext.request.contextPath}/nonMemberPro.do">
  <div class="h-100 text-muted border border-dark bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 h-100 m-5">
          <div class="card-body w-75">
            <h4 class="text-dark">Please &nbsp;Enter Your Details</h4><label>First name *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-user fa-2x"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="이름을 입력해주세요." name="first_name"> </div><label><br>Last name *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-user"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="성을 입력해주세요." name="last_name"> </div><label><br>TelePhone *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-volume-control-phone fa-2x"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="휴대폰 번호를 입력해주세요." name="phone_number"> </div><label><br>Email address *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-envelope-open-o fa-2x"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="이메일을 입력해주세요." name="email_address"> </div><label><br>Comment *<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-comment-o"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="요청사항을 적어주세요." name="comm"> </div>
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
              <input type="text" class="form-control mr-3 my-1" placeholder="카드에 적힌 이름을 입력해주세요." name="name_on_card"> </div><label><br>Caredit Card Number<br></label>
            <div class="input-group w-100"> <i class="fa d-inline fa-2x fa-angellist"></i>
              <input type="text" class="form-control mr-3 my-1" placeholder="카드 번호를 입력해주세요." name="card_number"> </div><label><br>Expiry Date<br></label>
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
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center border border-dark bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p class="lead mb-4 text-dark">
            <input type="checkbox" name="check" value="#" class="mx-3 text-secondary border border-secondary">I agree with the payment (결제에 동의 하시겠습니까?)</p>
          <form class="form-inline justify-content-center">
            <button type="submit" class="btn btn-secondary btn-lg p-4">Payment (결제)</button>
          </form>
            </form>
        </div>
      </div>
    </div>
  </div>
  
    <div id="bt"></div>
   
</body>

</html>