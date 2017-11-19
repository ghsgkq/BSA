<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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