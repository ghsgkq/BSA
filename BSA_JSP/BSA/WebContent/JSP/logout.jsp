<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	session.invalidate();
%>
<script type="text/javascript">
alert("로그아웃 되었습니다.");
</script>
<meta http-equiv="Refresh" content="0;url=${pageContext.request.contextPath}/index.do">