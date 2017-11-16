<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <c:if test="${logincheck == 1 }">
  <%
  	String id = (String)request.getAttribute("id");
  	session.setAttribute("id", id);
  %>
  </c:if>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
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
</head>
<body>
  <nav class="navbar navbar-expand-md main-content navbar-light bg-warning">
    <div class="container-fluid">
      <a class="navbar-brand bg-warning" href="${pageContext.request.contextPath}/index.do"><i class="d-block fa fa-life-ring fa-3x pull-right fa-fw bg-warning text-dark"></i> </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto fixed-menu">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <h2><b class="p-3 text-white">Your Exprerience</b></h2>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link w-100 mx-3" href="#">
              <h2><b class="text-white">Schedule &amp; Rates &nbsp; &nbsp; &nbsp;&nbsp;</b></h2>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="href="${pageContext.request.contextPath}/FAQs.do"></a>
              <h2><b class="p-5 text-white">FAQS</b></h2>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <h2><b class="p-4 text-dark">Book Now &nbsp; &nbsp; &nbsp; &nbsp;</b></h2>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <c:choose>
    <c:when test="${id != null }">
    <a class="btn navbar-btn ml-2 text-white btn-secondary" href="${pageContext.request.contextPath}/login.do"><i class="fa d-inline fa-lg fa-user-circle-o"></i> Sign out</a>
    <a class="btn navbar-btn ml-2 text-white btn-secondary" href="${pageContext.request.contextPath}/register.do"><i class="fa d-inline fa-lg fa-plus-square"></i>&nbsp;my info</a>
    </c:when>
    <c:otherwise>
    <a class="btn navbar-btn ml-2 text-white btn-secondary" href="${pageContext.request.contextPath}/login.do"><i class="fa d-inline fa-lg fa-user-circle-o"></i> Sign in</a>
    <a class="btn navbar-btn ml-2 text-white btn-secondary" href="${pageContext.request.contextPath}/register.do"><i class="fa d-inline fa-lg fa-plus-square"></i>&nbsp;Register</a>
    </c:otherwise>
    </c:choose>
    <div id="google_translate_element" class="p-3"></div>
    <script type="text/javascript">
      function googleTranslateElementInit() {
        			new google.translate.TranslateElement({pageLanguage: 'ko', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
      				}
    </script>
  </nav>
</body>

</html>