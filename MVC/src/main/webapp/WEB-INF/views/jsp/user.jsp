<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
</head>
<body>
<h2>Login</h2>
${mess}
<form action="login" method="post">
<div>UserName</div>
<input name="id"/>
<div>PassWord</div>
<input name="pass"/>
<hr>
<button>Login</button>
</form>

</body>
</html>