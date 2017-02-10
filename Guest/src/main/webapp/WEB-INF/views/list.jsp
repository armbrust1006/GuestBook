<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/script/script.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>[ 방명록 ]</h2>
		<form action="">
			<input type="button" value="글쓰기" onclick="return write()">
		</form>
		<c:forEach items="${guestbook }" var="book">
			<table>
				<tr>
					<td align="center">작성자</td>
					<td>${book.name}</td>
				</tr>
				<tr>
					<td align="center">날짜</td>
					<td>${book.inputdate}</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="20" cols="50"
							readonly="readonly">${book.content}</textarea></td>
				</tr>
				<tr>
					<td align="center">비밀번호</td>
					<td><input type="password" name="password"></td>
					<td><a onclick="deleteBook">삭제</a></td>
				</tr>
			</table>

		</c:forEach>
	</div>
</body>
</html>