<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	         <% if(session.getAttribute("admin_id")==null){ %>
	로그인 안됨
	<%}else{ %>	
	
	<form action="${pageContext.request.contextPath}/adminlogin.do" method="post">
	<input type="submit" name="logout" value="로그아웃">
	
	</form>
<% }%>
	<%=session.getAttribute("admin_id") %>


</body>
</html>