<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>Busan Shuttle Airporter</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
  <meta property="og:url"           content="http://www.your-domain.com/your-page.html" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="Busan Shuttle Airporter" />
  <meta property="og:description"   content="Your description" />
  

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/style_index.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/tooltip.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
  
  	<link rel="stylesheet" href="http://cdn.jsdelivr.net/bxslider/4.2.5/jquery.bxslider.css">
	<script src="http://cdn.jsdelivr.net/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://cdn.jsdelivr.net/bxslider/4.2.5/jquery.bxslider.min.js"></script>
	<script type="text/javascript">
  		
		$(document).ready(function(){
     		$('#slider').bxSlider({
     	
    		minSlides:1,
    		maxSlides:2,
    		slideWidth:700,
    		speed:35000,
    		ticker:true,
			tickerHover: true
  		});
  		});
		</script>
  
  
  
  <c:if test="${un_check == 1 }"> 
  <script type="text/javascript">
  alert("회원탈퇴 되었습니다.");
  </script>
  </c:if>
  
   <style type="text/css">
  .main-content {
  	width: 100%;
 	 color: #555;
  	font-size: 12px;
 	 position: fixed;
 	 z-index: 999;
 	 top: 0px;
 	 left: 0px;
 	 -webkit-box-shadow: 0 1px 2px 0 #777;
 	 box-shadow: 0 1px 2px 0 #777;
 	 background-color: #ccc; 
 	 }
  
  </style>
  
      <style type="text/css">
     a#imD
{
	animation: demo-scale ease-in-out 2.33s  infinite;
}
a#imD.begin {animation: 0s}
@keyframes demo-scale
{
	from {transform: scale(1);}
	40% {transform: scale(1);}
	70% {transform: scale(0.001);}
	70% {transform: scale(1.4);}
	100% {transform: scale(1);}
	to {transform: rotate(1);}
}
     
     </style>

  <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/us_US/sdk.js#xfbml=1&version=v2.11';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
 
  </script>
  
</head>
<body class="bg-light" style="margin-top:0px;">
<div id="contents"></div>
<nav class="navbar main-content navbar-expand-md navbar-light" style="margin-top:100px; background-color:#819FF7">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav"></ul><i class="d-block fa pull-right fa-fw fa-lg text-dark fa-car"></i>
        <p class="text-light m-2">You can now book book private sedans at
          <a class="ml-3 btn navbar-btn btn-sm ml-auto text-white  border border-light btn-sm" style="background-color:#819FF7" href="${pageContext.request.contextPath}/Booking.do"><b>Busan Shuttle Airporter</b></a>&nbsp;</p><i class="d-block fa pull-right fa-fw fa-lg text-dark text-left fa-spinner"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a  id="imD" onclick="move('imD');" href="${pageContext.request.contextPath}/checkbooked.do" class="btn btn-outline-warning text-dark border-dark"><b>Checking Booked</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="fb-like" data-href="http://blog.naver.com/josh008/221149775358" data-layout="box_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>

  <div id="fb-root"></div>
  <div class="fb-like" 
    data-href="http://www.your-domain.com/your-page.html" 
    data-layout="standard" 
    data-action="like" 
    data-show-faces="true">
  </div>
      </div>
    </div>
  </nav>
  
  <div class="gradient-overlay px-5" style="background-image: url(&quot;JSP/img/sol2.jpg&quot;); height:800px;">
    <div class="py-5 m-5 text-left container-fluid text-capitalize h-100">
      <div class="row h-100 text-center text-capitalize py-5">
        <div class="col-md-12 text-white align-self-center text-left h-25">
          <h1 class="display-3 mb-4"><i class="d-block fa fa-play-circle"><span style="color: inherit; font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 4.5rem;">&nbsp; a New face of luxury</span></i></h1>
        </div>
      </div>
    </div>
  </div>
  <nav class="navbar navbar-expand-md navbar-light" style="background-color:#5858FA">
    <a class="navbar-brand" href="#"></a>
    
      <ul class="navbar-nav"></ul>
    <div class="tip text-center w-50">  <a class="ml-3 btn navbar-btn  w-50 text-white" style="background-color:#5858FA" href="#a" name="btnTest1_1" >Power Outlet<i class="d-block fa fa-3x fa-plug text-white"></i>     
    <span>차량내부에 전자제품 관련 
  <br>  장비들이 구비되어있습니다.</br></span>  
    
    </a></div>
    
  <div1 class="tip text-center w-50">    <a class="ml-3 btn navbar-btn  w-50 text-white" style="background-color:#5858FA" href="#a" name="btnTest1_1" >Bottle Water<i class="d-block fa fa-3x text-white fa-bitbucket"></i>  
   <span>고객들을 위해 항상 차량
   <br>  내부에 음료가 준비되어있습니다.</br></span>   
   </a></div1>
   
   <div2 class="tip text-center w-50">   <a class="ml-3 btn navbar-btn  w-50 text-white" style="background-color:#5858FA" href="#a" name="btnTest1_1" >Reclining Seat<i class="d-block fa fa-3x text-white fa-wheelchair"></i>   
  <span>키 높이에 따라 의자 조절이
  <br>  Auto 방식으로 조절이 가능합니다</br></span>    
  </a></div2>
  
     <div3 class="tip text-center w-50">  <a class="ml-3 btn navbar-btn  w-50 text-white" style="background-color:#5858FA" href="index.do#route anchor"  >Route Map<i class="d-block fa fa-3x text-white fa-map-marker"></i>
        
     <span> </span> </a></div3>
     <div4 class="tip text-center w-50">  <a class="ml-3 btn navbar-btn  w-50 text-white" style="background-color:#5858FA" href="index.do#schedule anchor"  >Dayily Schedule<i class="d-block fa fa-3x text-white fa-calendar-check-o"></i>
       
    <span> </span>  </a></div4>
   
  </nav>
  <nav class="navbar-expand-md navbar-dark">
    <div class="container">
     <a class="btn navbar-btn text-warning btn-light border border-success btn-sm text-center" href="#a" onClick="window.open('https://www.tripadvisor.com/','win','width=600,height=1000,toolbar=0,scrollbars=0,resizable=0')";>Trip Advisor<i class="d-block fa fa-tripadvisor fa-lg text-dark"></i></a>
      <div class="collapse navbar-collapse justify-content-top" id="navbar3SupportedContent">      
        <div id="slider" class="">
          <a href="#" style="color:black" class="mx-5"><b class="">"Grate bus Service to the Busan Airporter!"&nbsp;&nbsp;&nbsp;&nbsp;Welcom to Busan Airporter Service!</b></a>
          <a href="#"> </a>
        </div>
       
      </div>
    </div>
  </nav>
  <div  style="background-color:#E0E6F8">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item">
                <img class="d-block img-fluid rounded-circle w-100" src="JSP/img/car.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h3>First slide picture</h3>
                  <p>Reclinig seat Comfort Zone </p>
                </div>
              </div>
              <div class="carousel-item active">
                <img class="d-block img-fluid rounded-circle w-100" src="JSP/img/car1.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h3>Second slide picture</h3>
                  <p>Luxry Design for Business men</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center bg-light h-100">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="pb-3 text-secondary">Dependent Your Option</h1>
        </div>
      </div>
      <div class="row">
        <div class="text-right col-md-6">
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa fa-columns fa-3x"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h4 class="text-primary">Responsive&nbsp;</h4>
              <p>고객의 요청에 신속히 응답해 드립니다.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa fa-circle-thin fa-4x"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h4 class="text-primary">Customized settings</h4>
              <p>개인의 요구에따라 일정을 맞춰드립니다.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 order-lg-2 col-2 text-center"><i class="d-block fa  fa-comment-o fa-3x"></i></div>
            <div class="col-10 text-lg-right text-left order-lg-1">
              <h4 class="text-primary">Connect</h4>
              <p>언제든지 저희에게 문의 주시기 바랍니다.</p>
            </div>
          </div>
        </div>
        <div class="text-left col-md-6">
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa fa-3x fa-battery-full"></i></div>
            <div class="col-10">
              <h4 class="text-primary">Battery-friendly</h4>
              <p>객석 내부에서 배터리 충전을 할수 있습니다.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block mx-auto fa  fa-clone fa-3x"></i></div>
            <div class="col-10">
              <h4 class="text-primary">Multilayers</h4>
              <p>객석 내부에서 다양한 정보들을 제공해 드립니다.</p>
            </div>
          </div>
          <div class="row my-5">
            <div class="col-2 text-center"><i class="d-block fa  fa-heart-o fa-3x"></i></div>
            <div class="col-10">
              <h4 class="text-primary">Share the love</h4>
              <p>서로간의 소통을 원활히 할수 있습니다.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="text-center text-white bg-light gradient-overlay p-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="mb-4">Airporter</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div id="carouselArchitecture" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselArchitecture" data-slide-to="0" class=""><i></i></li>
              <li data-target="#carouselArchitecture" data-slide-to="1" class=""><i></i></li>
              <li data-target="#carouselArchitecture" data-slide-to="2" class="active"><i></i></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item">
                <img class="d-block img-fluid w-100" src="JSP/img/ben.jpg" data-holder-rendered="true"> </div>
              <div class="carousel-item">
                <img class="d-block img-fluid w-100" src="JSP/img/car2.jpg" data-holder-rendered="true"> </div>
              <div class="carousel-item active">
                <img class="d-block img-fluid w-100" src="JSP/img/airporter.jpg" data-holder-rendered="true"> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center text-dark">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <a id="schedule anchor">
            <h1 class="text-center display-3 text-primary">Schedule &amp; Rates</h1>
          </a>
          <h5>
            <p class="">김해 공항에서 부산 지역까지 출발하는 시간은 07:00 부터 23:00 까지 부산 지역에서 김해공항까지 출발 하는 시간은 7:00 부터 23:00 까지 입니다. 특별 요청시간은 예약 하실때 따로 적어주시기 바랍니다.</p>
          </h5>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 text-danger">
          <div class="btn-group">
            <button class="btn btn-outline-primary dropdown-toggle" data-toggle="dropdown"> 김해 공항 </button> 김해공항 ▶▶ 부산 전지역
            <div class="dropdown-menu">
              <a class="dropdown-item">김해공항 출발 07:00 8:00 9:00 10:00 11:00 13:00 14:00 15:00 16:00 17:00 19:00 20:00 21:00 22:00 23:00 </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item">부산지역 출발 07:00 8:00 9:00 10:00 11:00 13:00 14:00 15:00 16:00 17:00 19:00 20:00 21:00 22:00 23:00 </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 text-danger">
          <div class="btn-group">
            <button class="btn btn-outline-primary dropdown-toggle" data-toggle="dropdown"> 부산 전지역 </button> 부산 전지역 ▶▶ 김해공항
            <div class="dropdown-menu">
              <a class="dropdown-item">부산지역 출발 07:00 8:00 9:00 10:00 11:00 13:00 14:00 15:00 16:00 17:00 19:00 20:00 21:00 22:00 23:00 </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item">김해공항 출발 07:00 8:00 9:00 10:00 11:00 13:00 14:00 15:00 16:00 17:00 19:00 20:00 21:00 22:00 23:00</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="p-5 gradient-overlay bg-secondary">
    <div class="container">
      <div class="row">
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1 class=""><i class="d-block mx-auto fa fa-3x fa-male"></i><span style="font-size: 30px;" class="">&nbsp; Senior</span></h1>
              <h4 class="text-center">어른(20+)</h4>
              <hr>
              <p class="">ONE-WAY
                <br> </p>
              <div><span style="font-size: 1rem;" class="">편도: \ 20000</span></div>
              <br>
              <br>
              <br>RETURN
              <br>왕복: \ 35000 </div>
          </div>
        </div>
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1><i class="d-block mx-auto fa fa-3x fa-street-view"></i>
                <div style="text-align: center;" class=""><span style="color: inherit; font-size: 30px;" class="">Young</span></div>
              </h1>
              <h4>청소년(13-20)</h4>
              <hr>
              <p>ONE-WAY
                <br>
                <br> </p>
              <div class="">편도: \ 15000
                <br>
                <br>
                <br>RETURN
                <br>왕복:\ 25000</div>
            </div>
          </div>
        </div>
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1 class="text-center"><i class="d-block mx-auto fa fa-3x fa-child"></i><span style="font-size: 30px;">Child</span></h1>
              <h4 class="text-center">어린이(2-12)</h4>
              <hr>
              <p>ONE-WAY
                <br>
                <br>편도:\ 10000
                <br>
                <br>
                <br>RETURN
                <br>왕복: \15000</p>
            </div>
          </div>
        </div>
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1 class="text-center"><i class="d-block mx-auto fa fa-3x fa-reddit"></i><span style="font-size: 30px;">Infatns</span></h1>
              <h4 class="text-center" contenteditable="true">유아(0-2)</h4>
              <hr>
              <p>ONE-WAY
                <br>
                <br>편도:\ FREE
                <br>
                <br>
                <br>RETURN
                <br>왕복:\ FREE</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-light">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1 class="mb-4 text-primary">Your Experience</h1>
          <p class="lead">부산 Airporter 를 통한 여정을 즐기실수 있습니다. 저희는 고객들의 여행 일정과 안전한 이동을 기억하도록 할것입니다
            <br> </p>
          <div>전체적인 여행 시간을 관리 할 수 있습니다. 저희는 편한한 좌석을 권유드립니다. 고객님의 일정동안 많은 관광명소를 보실수 있습니다. 고객님의 여행은 저희 부산 Airporter 와 함께 하십니다.</div>
          <div class="row text-left mt-5">
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-bus"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>Professional Drivers</b></h5>
                </div>
              </div>
              <p>고객님의 안전을 위해 전문적인 운전사를 고용하였습니다. &nbsp;출발 부터 목적지까지 안전을 위해 최선을 다하겠습니다.</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-unlock"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>Door to Door Service</b></h5>
                </div>
              </div>
              <p>저희는 목적지까지 편안히 모셔다 드리면서 문열림 서비스까지 해드리고 있습니다.
                <br> </p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-window-close"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>No Parking Fees</b></h5>
                </div>
              </div>
              <p>부산지역은 주차공간이 많지 않고 주차요금이 비싸다 보니 저희 Airporter를 이용하시면 더 저렴하게 이용하실수 있습니다.</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-users"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>More trips than competitors</b></h5>
                </div>
              </div>
              <p>저희는 항상 고객분들을 위해 준비하고 있씁니다.&nbsp;</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-american-sign-language-interpreting"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>We operate everyday</b></h5>
                </div>
              </div>
              <p>저희는 고객분들의 요청사항에 따라서 특별한 시간에도 운행을 합니다.</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-recycle"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>Modern &amp; clean transportation</b></h5>
                </div>
              </div>
              <p>청결한 내부를 보실수 있씁니다. 편안한 자리르 제공해 드립니다. 항상 새로운 마음으로 최상으로 모시겠씁니다.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-dark text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <table cellpadding="0" cellspacing="0" width="462" align="center">
            <tbody>
              <tr>
                <td style="border:1px solid #cecece;">
                  <a id="route anchor" href="http://map.naver.com/?mpx=08260750%3A35.1899268%2C129.1123347%3AZ12%3A0.0165051%2C0.0078744&amp;searchCoord=104778cc46a253d284a65ffc8206bf8fb28e53bb5491e758949a82a04c4f469c&amp;query=7JWE7J207Yuw67GF7YGs&amp;menu=location&amp;tab=1&amp;lng=85f7bfac309db2fcdd677e36bef730f4&amp;mapMode=0&amp;lat=173e8a005a9756c7aa8bf51262d076d9&amp;dlevel=12&amp;enc=b64"
                    target="_blank">
                    <img src="http://prt.map.naver.com/mashupmap/print?key=p1510191746028_2143875559" width="460" height="340" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;" class="mx-auto"> </a>
                </td>
              </tr>
              <tr>
                <td>
                  <table cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr>
                        <td height="30" bgcolor="#f9f9f9" align="left" style="padding-left:9px; border-left:1px solid #cecece; border-bottom:1px solid #cecece;"> <span style="font-family: tahoma; font-size: 11px; color:#666;">2017.11.9</span>&nbsp;<span style="font-size: 11px; color:#e5e5e5;">|</span>&nbsp;
                         <a style="font-family: dotum,sans-serif; font-size: 11px; color:#666; text-decoration: none; letter-spacing: -1px;"
                            href="http://map.naver.com/?mpx=08260750%3A35.1899268%2C129.1123347%3AZ12%3A0.0165051%2C0.0078744&amp;searchCoord=104778cc46a253d284a65ffc8206bf8fb28e53bb5491e758949a82a04c4f469c&amp;query=7JWE7J207Yuw67GF7YGs&amp;menu=location&amp;tab=1&amp;lng=85f7bfac309db2fcdd677e36bef730f4&amp;mapMode=0&amp;lat=173e8a005a9756c7aa8bf51262d076d9&amp;dlevel=12&amp;enc=b64"
                            target="_blank">지도 크게 보기</a>
                        </td>
                        <td width="98" bgcolor="#f9f9f9" align="right" style="text-align:right; padding-right:9px; border-right:1px solid #cecece; border-bottom:1px solid #cecece;"> <span style="float:right;"><span style="font-size:9px; font-family:Verdana, sans-serif; color:#444;">©&nbsp;</span>&nbsp;
                          <a style="font-family:tahoma; font-size:9px; font-weight:bold; color:#2db400; text-decoration:none;" href="http://www.nhncorp.com"
                            target="_blank">NAVER Corp.</a>
                        </td>
                      </tr>
                      </span>
                    </tbody>
                  </table>
                </td>
              </tr>
               <tr>
                      <td>
                     <div class="col-md-12">
            			<h1 class="text-center">오시는 길</h1>
          			</div>
          			</td>
          			</tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div id="bt"></div>
</body>

</html>