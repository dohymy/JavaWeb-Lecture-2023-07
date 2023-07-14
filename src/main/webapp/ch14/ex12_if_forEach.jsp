<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
	pageContext.setAttribute("pid", "페이지 아이디");
%>
<c:set var="cid" value="코어 아이디"></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL</title>
	<style>
		td {padding: 3px;}
	</style>
</head>
<body style="margin: 40px; margin-bottom: 100px">
	<h1>JSTL(JSP Standard Tag Library)</h1>
	<hr>
	<table border="1">
		<tr><th>아이디</th><th>이름</th><th>주소</th></tr>
	<c:forEach var="member" items="${members}" varStatus="loop">
		<tr>
			<td>
				<c:if test="${member.id % 2 == 1}">
					<span style="color:blue">${member.id}</span>
				</c:if>
				<c:if test="${member.id % 2 == 0}">
					<span style="color:red">${member.id}</span>
				</c:if>
			</td>
			<td>
				<c:if test="${loop.first}">
					<span style="background: yellow">${member.name}</span>
				</c:if>
				<c:if test="${loop.last}">
					<span style="background: cyan">${member.name}</span>
				</c:if>
				<c:if test="${not loop.first and not loop.last}">
					${member.name}
				</c:if>
			</td>
			<td>
				<c:if test="${member.addr.country eq '한국'}">
					<span style="color:orange">${member.addr}</span>
				</c:if>
				<c:if test="${member.addr.country eq '미국'}">
					<span style="color:cyan">${member.addr}</span>
				</c:if>
			</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>