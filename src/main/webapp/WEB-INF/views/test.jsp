<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/test.css">
<script type="text/javascript" src="js/test.js"></script>
<title>test</title>
</head>
<body>
	<div id=contents>
	</div>
	<button type="button" onclick="{showUsers()}" id="btn_user">사용자 조회</button>
	<table>
		<tr>
			<td>아이디</td>
			<td>이메일</td>
		</tr>
		<tr>
			<c:forEach var="user" items="${loginIdList}" varStatus="status">
				<td>${user}</td>
			</c:forEach>
		</tr>
	</table>

	<div>
		내가왔다!
	</div>
</body>
<script type="text/javascript">
function showUsers() {
	console.log('사용자 조회 클릭');
	$.ajax({
		type:"POST",
		url:"/viewUser",
		success:(data) => {
			console.log('조회 성공');
			location.href = "/viewTest.jsp";
		}
	})	
}

</script>

</html>