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

	<title>Admin_List</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="${pageContext.request.contextPath}/JSP/img/adminb.png">
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
  <script type = "text/javascript" >
function changeHashOnLoad() {
     window.location.href += "#";
     setTimeout("changeHashAgain()", "50"); 
}

function changeHashAgain() {
  window.location.href += "1";
}

var storedHash = window.location.hash;
window.setInterval(function () {
    if (window.location.hash != storedHash) {
         window.location.hash = storedHash;
    }
}, 50);


</script>
  
<title>회원 예매 화면</title>
<style type="text/css">
    .my-box {
      border: 1px solid;
      padding: 10px;
    }

    table {
      width: 100%;
      border: 1px solid #444444;
      border-collapse: collapse;
    }

    th{
    	color: #ffffff;
    	background: #172A40;
    	border: 1px solid #172A40;
    	padding: 10px;
    }
    td {
      font-weight:600;
      border: 1px solid #444444;
      padding: 10px;
    }

    #customers {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      width: 100%;
      border-collapse: collapse;
    }

    #customers td,
    #customers th {
      font-size: 1em;
      border: 1px solid #172A40;
      padding: 3px 7px 2px 7px;
    }

    #customers th {
      font-size: 1.1em;
      text-align: left;
      padding-top: 5px;
      padding-bottom: 4px;
      background-color: #172A40;
      color: #ffffff;
    }

    #customers .c1 {
      width: 500px;
      background-color: #e0e023;
    }

    #customers .c2 {
      width: 500px;
    }

    #customers .c3 {
      width: 500px;
    }

    #customers tr.alt td {
      color: #000000;
      background-color: #EAF2D3;
    }

    .container-1 {
      width: 300px;
      vertical-align: middle;
      white-space: nowrap;
      position: relative;
    }
    
    .example .pagination>la>a,
	.example .pagination>li>span{
	border: 1px solid #172A40;
	}
	.pagination>li.active>a{
		background:#172A40;
		color: #ffff;
	}
  </style>
  
  <script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(function() {
  $('#button1').click( function() {
    if( $(this).html() == '접기' ) {
      $(this).html('펼치기');
    }
    else {
      $(this).html('접기');
    }
  });
});
</script> 
  
</head>


<body style="margin-top:80pt;" onload="changeHashOnLoad(); ">

<div id="contents"></div>
  <center>
    <div style="border:4px solid; padding:10px;">
      <table class="null">
        <tbody>
          <tr>
            <td>
              <div style="text-align:center">
                <font size="15"> User(Email :${email} )</font>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </center>



<!-- 선 긋기(검색 기능 폼) ====================================== -->
<form>
<table>
<tr>
		  
          <th class="text-center" >Name</th>
          <th class="text-center" >Phone_Number</th>
          <th class="text-center" >E-mail</th>        
          <th class="text-center" >Card_On_Name</th>
          <th class="text-center" >Card_Number</th>
          <th class="text-center" >Card_Year</th>
          <th class="text-center" >Card_Month</th>
          <th class="text-center" >Csv_Number</th>
          <th class="text-center" >Payment</th>
          
</tr>

<c:forEach items="${bdto}" var="arr">
	<tr>
		<!--  <th>${arr.start_date}</th> -->
				
       			<td class="text-center"><a href="${pageContext.request.contextPath}/content.do?code=${arr.code}">${arr.first_name}${arr.last_name}</a></td>
       			<td class="text-center">${arr.phone}</td>
       			<td class="text-center">${arr.email}</td>	
       			<td class="text-center"> ${arr.name_on_card}</td>
       			<td class="text-center">${arr.card_number}</td>
       			<td class="text-center">${arr.expiry_year}</td>
       			<td class="text-center">${arr.expiry_month}</td>
       			<td class="text-center">${arr.csv_number}</td>
       			<td class="text-center">${arr.money}</td>
       			
	</tr>
	
</c:forEach>

</table>

<!-- 선 긋기 ====================================== -->


</form>
<form method= "post" name="Admin_Checked" action="${pageContext.request.contextPath}/admincheck.do">
<div id="contents"></div>
  <div class="container">
    <div class="row"> &nbsp;
      <div class="span12"> &nbsp;Search(Only Email)&nbsp;
          <input type="text" name="email" class="form-control" placeholder="이메일 입력" value="${email}"><a href="javascript:document.Admin_Checked.submit()" class="btn btn-outline-dark"><b>Search</b></a>
         	 <a class="ml-3 btn navbar-btn btn-light" href="${pageContext.request.contextPath}/memberbooking.do">List</a>
      </div>
    </div>
  </div>

</form>
  <div id="bt"></div>
</body>
</html>