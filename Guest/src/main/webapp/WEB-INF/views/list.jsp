<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/script_files/sc.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>[ 방명록 ]</h2>
		<input type="button" value="글쓰기" onclick="writeboard()">
		<c:forEach items="${guestbook }" var="book">
			<table>
				<tr>
					<td align="center">작성자</td>
					<td>${book.name}</td>
				</tr>
				<tr>
					<td align="center">날짜</td>
					<td><fmt:formatDate value="${book.inputdate}" type="both"
							dateStyle="full" /></td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="20" cols="50"
							readonly="readonly">${book.content}</textarea></td>
				</tr>
				<tr>
					<td align="center">비밀번호</td>
					<td><input type="password" id="pwcheck${book.num }"> <input
						type="button" value="삭제" onclick="del('${book.num}')"><input
						type="button" value="수정" onclick="up('${book.num}')"></td>
				</tr>
			</table>
		</c:forEach>
	</div>
	<form action="" method="post" id="form">
		<input type="hidden" id="num" name="num"> <input type="hidden"
			id="password" name="password">
	</form>
</body>
</html>