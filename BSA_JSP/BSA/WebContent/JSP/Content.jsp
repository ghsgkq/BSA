<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
  <script type="text/javascript">
    $(document).ready( function() {
    	$("#contents").load("JSP/topa.jsp");
    	
    });
   
  </script>
  </head>

<body class="">
<nav class="navbar navbar-expand-md navbar-dark bg-warning">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav"></ul>
        <a class="ml-3 btn navbar-btn btn-light" href="${pageContext.request.contextPath}/memberbooking.do">List</a>
        <a class="ml-3 btn navbar-btn btn-light" href="#">Delete</a>
      </div>
    </div>
  </nav>
  <div class="py-5">
  
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <table width="300" class="table h-100">
            <thead class="text-center">
            
              <tr>
                <th class="text-danger text-center bg-dark border border-info w-25">Table</th>
                <th class="text-center text-danger bg-dark border border-info">Contents</th>
              </tr>
            <form action="${pageContext.request.contextPath}/content.do" method="post">
              <tr>
                <th class="text-secondary text-left">Where_Trip</th>
                
                <th class="text-center">${article.where_trip}</th>
                
              </tr>
              <tr>
                <th class="text-secondary text-left">Where_form</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Where_to</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Pickup</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Dropft</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Start_Airline_name</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Start_Airline_no</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Start_Airline_time</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Arrival_Airline_name</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Arrival_Airline_no</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Arrival_Airline_time</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Bus_time_pickup</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Bus_time_dropft</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Start_date</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">Arrival_date</th>
                <th class="text-center">여기다가</th>
              </tr>
              <tr>
                <th class="text-secondary text-left">People</th>
                <th class="text-center">여기다가</th>
              </tr>
              </form>
            </thead>
          </table>
          
        </div>
      </div>
    </div>
  </div>
  
</body>
</html>