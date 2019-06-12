<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Strudent</title>
</head>
<body>
<h2>Quản Lý Sinh Viên </h2>
<form:form action="listsv" modelAttribute="student">
<div>Ho Va Ten :</div>
<form:input path="name"/>
<div>Diem :</div>
<form:input path="mark"/>
<div>Chuyen Nganh :</div>
<form:select path="major" items="${majors }"/>
<c:if test="${student.mark >8 }">
<h2>xuất sắc </h2>
</c:if>
<c:choose>
<c:when test="${student.mark >9 }">Goi</c:when>
<c:when test="${student.mark >7 }">kha</c:when>
<c:when test="${student.mark >5 }">Trung Binh</c:when>
<c:otherwise>kém</c:otherwise>
</c:choose>
<br>
<button>Edit</button>
<table border="1" style="width: 100%;">
<tr>
<th>Ten</th>
<th>Diem</th>
<th>Chuyen nganh</th>
<th>Xep Loai</th>
</tr>
<tr>
<td>${student.name }</td>
<td>${student.mark }</td>
<td>${student.major }</td>
<td>
<c:choose>
<c:when test="${student.mark >9 }">Goi</c:when>
<c:when test="${student.mark >7 }">kha</c:when>
<c:when test="${student.mark >5 }">Trung Binh</c:when>
<c:otherwise>kém</c:otherwise>
</c:choose>
</form:form>   
</td>
</tr>
</table>
<a href="listsv">Quan ly sinh vien</a>
<h1>${company.name}</h1>
<!-- <img  src="${company.logo}">-->
<div>${company.slogan}</div>
<!--   <img src="<c:url value="/images/aodai.jpg"/>"/>-->
 <img src="/MVC/image/aodai.jpg" />


 
</body>
</html>