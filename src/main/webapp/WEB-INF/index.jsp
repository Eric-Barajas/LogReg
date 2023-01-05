<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach JSP tags etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Registration</h1>
		<form:form action="/register" method="post" modelAttribute="newUser">
			<p>
				First Name:
				<form:input path="firstName" />
				<form:errors path="firstName" />
			</p>
			<p>
				Last Name:
				<form:input path="lastName" />
				<form:errors path="lastName" />
			</p>
			<p>
				Email:
				<form:input path="email" />
				<form:errors path="email" />
			</p>
			<p>
				Password:
				<form:input type="password" path="password" />
				<form:errors path="password" />
			</p>
			<p>
				Confirm Password:
				<form:input path="confirm" />
				<form:errors path="confirm" />
			</p>
			<button>Register</button>
		</form:form>
		<hr />
		<h1>Login</h1>
		<form:form action="/login" method="post" modelAttribute="newLogin">
			<p>
				Email:
				<form:input path="email" />
				<form:errors path="email" />
			</p>
			<p>
				Password:
				<form:input path="password" />
				<form:errors path="password" />
			</p>
			<button>Login</button>
		</form:form>	
	</div>
</body>
</html>