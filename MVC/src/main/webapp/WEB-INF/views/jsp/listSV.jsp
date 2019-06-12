<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring MVC - Display Collection</title>
</head>
<body>
  <h1>Spring MVC - Display Collection</h1>
  <br/>
  <h2>Display List: </h2>
  <c:if test="${not empty listUser}">
    <ul>
      <c:forEach var="student" items="${listUser}">
        <li>${student.name} - ${student.mark} - ${student.major}</li>
      </c:forEach>
    </ul>
  </c:if>
</body>
</html>