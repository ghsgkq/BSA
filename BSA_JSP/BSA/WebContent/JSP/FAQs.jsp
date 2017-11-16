<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="style/style_index.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("top.jsp");
    	$("#bt").load("bottom.jsp");
    });
  </script>
</head>
<body style="margin-top: 40pt;">
  <div id="contents"></div>
  <div class="py-5"></div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-1 text-center">FAQs</h1>
          <p class="text-center lead">자주 묻는 질문 목록입니다. 혹시 여기서 문제를 찾을수 없다면
            <br>
            <a href="">이곳</a>을 클릭해주세요.
            <br> </p>
        </div>
      </div>
    </div>
    <hr color="black"> </div>
  <div class="py-5 text-center bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="pb-3 text-secondary">자주 묻는 질문</h1>
        </div>
      </div>
      <div class="row">
        <div class="text-right col-md-6">
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa fa-calendar-check-o fa-4x"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h4 class="text-primary">예약은 어떻게 하나요?</h4>
              <p>우측 상단을 보시면 BookNow를 클릭하시면 됩니다.&nbsp;
                <br>그 이후는 BookNow 안에서 보시면 되겠습니다.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa fa-4x fa-car"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h4 class="text-primary">여행 도중 일정이 변경되면요?</h4>
              <p>일정이 변경 되신다면 저희 이메일 airpot@naver.com 또는&nbsp;
                <br>(한국 기준)010-5555-5555로 연락주시기 바랍니다.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa  fa-3x fa-firefox"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h4 class="text-primary">애완 동물을 동승 시켜도 괜찮을까요?</h4>
              <p>죄송합니다. 애완동물은 동승 시킬수가 없습니다.
                <br>
                <br> </p>
            </div>
          </div>
        </div>
        <div class="text-left col-md-6">
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa fa-4x fa-chrome"></i></div>
            <div class="col-10">
              <h4 class="text-primary">예약 버튼을 눌렀는데 반응이 없어요</h4>
              <p>혹시 익스프롤러를 사용하고 계신다면
                <br>구글 크롬이나 파이어 폭스를 이용해 보세요.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block mx-auto fa  fa-4x fa-bus"></i></div>
            <div class="col-10">
              <h4 class="text-primary">차량 안에 wi-fi가 있나요?</h4>
              <p>물론 있습니다.
                <br>게다가 무료입니다.&nbsp;</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa  fa-3x fa-bath"></i></div>
            <div class="col-10">
              <h4 class="text-primary">화장실은 달려있나요?</h4>
              <p>죄송합니다. 화장실은 달려있지 않습니다.
                <br>가는 도중에 한번씩 휴게소에 들리니 그때 해결해주시면 감사하겠습니다.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1>연락처</h1>
          <p class="lead">저희와 연락을 하시려면 여기에 연락을 넣어주시기 바랍니다.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 p-4">
          <img class="img-fluid d-block rounded-circle mx-auto" src="https://pingendo.github.io/templates/sections/assets/test_meow.jpg">
          <p class="my-4"><i>회사 대표 김 아무개 입니다. 혹시나 불편하신 사항이 있으시다면 여기로 전화 주시면 빠른시일 내에 해결해 드리겠습니다.</i></p>
          <p><b>김 아무개</b>&nbsp;
            <br>010-5053-3171</p>
        </div>
        <div class="col-md-4 p-4">
          <img class="img-fluid d-block rounded-circle mx-auto" src="https://pingendo.github.io/templates/sections/assets/test_fish.jpg">
          <p class="my-4"><i>회사에 궁금하신 사항이 있으시면 저한테 연락주시면 바로 알려드리겠습니다.</i></p>
          <p><b>박 아무개</b>
            <br>010-1111-1111</p>
        </div>
        <div class="col-md-4 p-4">
          <img class="img-fluid d-block rounded-circle mx-auto" src="https://pingendo.github.io/templates/sections/assets/test_carlito.jpg">
          <p class="my-4"><i>회사&nbsp;</i></p>
          <p><b>회사 안내 센터</b>&nbsp;
            <br>070-5555-8888</p>
        </div>
      </div>
    </div>
  </div>
  <div id="bt"></div>
</body>

</html>