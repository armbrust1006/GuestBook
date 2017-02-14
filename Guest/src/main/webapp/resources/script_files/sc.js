function upcheck() {
	var password = document.getElementById('password');
	var content = document.getElementById('content');

	if (password.value == '') {
		alert('패스워드 입력하세요!');
		return false;
	}

	if (content.value == '') {
		alert('내용 입력하세요!');
		return false;
	}

	alert('수정됨');
	return true;
}

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