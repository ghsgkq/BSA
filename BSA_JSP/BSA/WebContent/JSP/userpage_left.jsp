<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP/style/USERPAGE.css" type="text/css">
<title>left</title>
</head>
<body>


          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a href="#" class="active nav-link bg-dark"><i class="fa fa-home fa-home text-warning"></i>&nbsp;Information</a>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}/userpage.do" class="nav-link ">ChangeInfo</a>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}/changepw.do" class="nav-link">ChangePw</a>
            </li>
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}/unregister.do" class="nav-link">Resign</a>
            </li>
           
          </ul>
</body>
</html>