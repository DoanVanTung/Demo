<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<img src="/spring-mvc-example/image/${name}">
<ul>
<li>File name ${name }</li>
<li>File size ${size }</li>
<li>File type ${size }</li>
</ul>

<form action="TrangChu" method="post">
<button>Trang Chu</button>
</form>

</body>
</html>