<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<!--  <script src="/spring-mvc-example/js/jquery-3.3.1.slim.min.js"></script>-->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<title>Home</title>
<script>
$( document ).ready(function() {
	      $.ajax({                        
                url:"user1",
                type : "Get",
                contentType : "application/json",
                DataType : 'json',
                success:function(res){
                        var data="";
                        for(var i=0;i<res.length;i++){
                        data+="<tr><td>"+res[i].userName+"</td><td>"+res[i].location+"</td></tr>";
                        $('#content').html(data);
                    }
                },
                error:function() {
                      alert("error occurred");
                }
             });
});
</script>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</p>
	
	<form action="user" method="post">
		<input type="text" name="userName"><br> <input
			type="submit" value="Login">
	</form>
	
	<table border="1" width="500px;">
	<thead>
		<tr>
			<th>userName</th>
			<th>location</th>
			
		</tr>
	</thead>
	<tbody id="content">
			
	</tbody>
</table> 
</body>
</html>