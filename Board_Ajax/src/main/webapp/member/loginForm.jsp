<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="css/login.css" type="text/css" rel ="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script>
	$(function() {
		$('.join').click(function(){
			location.href = 'join.net';
		
		});
		
		const id = '${id}';
		if (id){
			$('#id').val(id);
			$('#remember'),prop('checked', true);
		}
	
	})
</script>
</head>
<body>
 <form name="loginform" action="loginProcess.net" method="post">
	<h1>로그인</h1>
	<hr>
	<b>아이디</b>
	<input type="text" name="id" placeholder="Enter id" id="id" required>
	
	<b>Password</b>
	<input type="password" name="pass" placeholder="Enter password" required>
	<input type="checkbox" id="remember" name="remember" value="store">
	<span>remember</span>
	
	<div class="clearfix">
		<button type="submit" class="submitbtn">로그인</button>
		<button type="button" class="join">회원가입</button>
	</div>
	
</form>
</body>
</html>