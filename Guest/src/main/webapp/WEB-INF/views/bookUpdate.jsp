<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/script_files/sc.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>[ 글수정 ]</h2>
		<form action="update" method="post" onsubmit="return upcheck()">
			<table border="1">
				<tr>
					<td>글번호</td>
					<td><input type="text" name="num" value="${guestUP.num }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${guestUP.name }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" id="password"
						value="${guestUP.password }"></td>
				</tr>
				<tr>
					<td>방명록</td>
					<td><textarea rows="5" cols="20" name="content" id="content">${guestUP.content }</textarea></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="수정"><input
						type="button" value="취소" onclick="location.href='list'"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>