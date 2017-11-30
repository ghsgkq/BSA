<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="BSA.model.AdminDao"/>
	
	<%
		int result = dao.deleteArticle(request.getParameter("email"));
		
	String message="삭제되지 않았습니다.";
	if(result > 0){
		message = "삭제되었습니다.";
	}
	%>
	
	<script>
		alert("<%=message%>");
		location.href="memberbooking.jsp";
	</script>
</body>
</html>