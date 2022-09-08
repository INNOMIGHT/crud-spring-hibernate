<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>From JSP</title>
</head>
<body>
<form action="login.do" method="post" >
	Name: <input type="text" value="name" name="name"/> Password: <input type="password" name="password"/><input type="submit" value="login"/>
	${errorMessage}
	
</form>
</body>
</html>