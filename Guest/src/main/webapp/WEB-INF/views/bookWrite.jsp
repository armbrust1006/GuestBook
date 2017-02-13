<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<h2>[ 글쓰기 ]</h2>
		<form action="write" method="post">
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>방명록</td>
					<td><textarea rows="5" cols="20" name="content"></textarea></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="등록"><input
						type="button" value="취소" onclick="location.href='list'"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>