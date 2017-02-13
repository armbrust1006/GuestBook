<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function writeboard() {
		location.href = 'write';
	}
	function del(num) {
		var form = document.getElementById('form');
		var pwcheck = document.getElementById('pwcheck' + num);
		var boardnum = document.getElementById('num');
		var password = document.getElementById('password');

		if (pwcheck.value == '') {
			alert('작성 시 지정한 비밀번호를 입력하세요.');
			return;
		}

		if (confirm('삭제하시겠습니까?')) {
			boardnum.value = num;
			password.value = pwcheck.value;

			form.action = 'delete';
			form.submit(); // form onsubmit 과 동일한 기능
		}
	}
	function up(num) {
		var form = document.getElementById('form');
		var pwcheck = document.getElementById('pwcheck' + num);
		var boardnum = document.getElementById('num');
		var password = document.getElementById('password');

		if (pwcheck.value == '') {
			alert('작성 시 지정한 비밀번호를 입력하세요.');
			return;
		}

		boardnum.value = num;
		password.value = pwcheck.value;

		form.action = 'updatePage';
		form.submit(); // form onsubmit 과 동일한 기능
	}
</script>
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
					<td>${book.inputdate}</td>
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