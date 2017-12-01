<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page import="BSA.model.BookingDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BSA.model.AdminDao" %>



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
    	$("#contents").load("JSP/topa.jsp");
    	
    });
    

  </script>
<title>회원 예매 화면</title>
</head>
<body style="margin-top:80pt;">

<form>
<table>
		<tr>
			<th>코드</th>
			<td>${article.code}</td>
			<th>성함</th>
			<td>${article.first_name}${article.last_name}</td>
		</tr>
		<tr>
			<th>가격</th>
			<td>${article.money}</td>
			<th>카드번호</th>
			<td>${article.card_number}</td>
		</tr>
</table>
  
</form>
  <div id="bt"></div>
</body>
</html>