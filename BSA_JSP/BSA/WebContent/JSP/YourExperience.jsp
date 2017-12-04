<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Your Experience</title>
<link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/airporter.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/style_index.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/top.jsp");
    	$("#bt").load("JSP/bottom.jsp");
    });
  </script>
  <script type="text/javascript">
   window.history.forward(0);
   function noBack(){window.history.forward(0);}
  </script>
  </head>

<body class="bg-light" style="margin-top:83px;"  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
  <div id="contents"></div>
  <div class="py-5 opaque-overlay" style="background-image: url(&quot;JSP/img/sol3.jpg&quot;); height:800px">
    <div class="container-fluid text-capitalize text-left h-100">
      <div class="row h-100 text-center text-capitalize py-5">
        <div class="text-white text-left col-xl-11 align-self-start col-md-6">
          <h1 class="display-3 mb-4"><i class="d-block fa fa-angle-double-right"><span style="color: inherit; font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 4.5rem;">&nbsp; Your Experience</span></i></h1>
        </div>
        <div class="col-md-6 col-xl-8">
          <h4>
            <p class="text-light h-75 text-left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <a href="${pageContext.request.contextPath}/Booking.do" class="btn btn-lg active btn-outline-secondary text-light">Book Now</a>&nbsp; You can experience our company.</p>
          </h4>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-light">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1 class="mb-4 text-primary">YourExperience</h1>
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
  <div class="py-5 text-center bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p class="lead">We grow together with the community</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 p-4">
          <img class="img-fluid d-block rounded-circle mx-auto" src="JSP/img/sol4.jpg">
          <p class="my-4"><i>계절 온도 변화에 따라서 쾌적한 환경 그리고 디저트와 함께 여행을 즐기실수 있습니다.</i></p>
          <p><b>Travel In Style</b>
            <br>
            <br> </p>
        </div>
        <div class="col-md-4 p-4">
          <img class="img-fluid d-block rounded-circle mx-auto" src="JSP/img/sol5.jpg">
          <p class="my-4"><i>고객님이 출발 목적지 시간 변화에 따라서 직접 찾아가는 서비스를 시행하고 있습니다.</i></p>
          <p><b>Door to Door Service</b>
            <br>
            <br> </p>
        </div>
        <div class="col-md-4 p-4">
          <img class="img-fluid d-block rounded-circle mx-auto" src="JSP/img/sol6.jpg">
          <p class="my-4"><i>저희 운전사들은 부산지역 &nbsp;사람들입니다. 가시는 목적지까지 안전하게 모셔다드립니다.</i></p>
          <p><b>Professional Drivers</b>
            <br>
            <br> </p>
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
                  <a href="http://map.naver.com/?mpx=08260750%3A35.1899268%2C129.1123347%3AZ12%3A0.0165051%2C0.0078744&amp;searchCoord=104778cc46a253d284a65ffc8206bf8fb28e53bb5491e758949a82a04c4f469c&amp;query=7JWE7J207Yuw67GF7YGs&amp;menu=location&amp;tab=1&amp;lng=85f7bfac309db2fcdd677e36bef730f4&amp;mapMode=0&amp;lat=173e8a005a9756c7aa8bf51262d076d9&amp;dlevel=12&amp;enc=b64"
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
                          </span>
                        </td>
                      </tr>
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