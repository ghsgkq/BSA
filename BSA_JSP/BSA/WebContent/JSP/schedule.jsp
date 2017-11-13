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

<body class="bg-light" style="margin-top:100px;">
  <div id="contents"></div>
  <div class="py-5 text-center text-dark">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center display-3 text-primary">Schedule &amp; Rates</h1>
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