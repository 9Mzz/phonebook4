<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>[phonebook4]</h1>

	<h2>전화번호 리스트</h2>

	<p>입력한 정보 내역입니다.</p>

	<c:forEach items="${personList}" var="personVo">
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td>${personVo.name}</td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td>${personVo.hp}</td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td>${personVo.company}</td>
			</tr>
			<tr>
				<td>삭제(company)</td>
				<td><a href="/phonebook4/phone/delete?personId=${personVo.personId}">[삭제]</td>
			</tr>

		</table>
		<br>
	</c:forEach>

	<a href="">번호등록</a>

</body>
</html>