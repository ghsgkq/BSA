<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <script type="text/javascript">
  alert("비밀번호가 변경되었습니다.");
  </script>
  <%
  request.setAttribute("check", 100000);
  %>
<meta http-equiv="Refresh" content="0;url=${pageContext.request.contextPath}/userpage.do">