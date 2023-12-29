<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>

<header>
	<nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
		<div>
			<a class="navbar-brand"> User Management App </a>
        </div>
		<ul class="navbar-nav">
			<li><a href="list" class="nav-link">Users</a></li>
		</ul>
	</nav>
</header>

<div class="container" style="width: 800px;">

<h1 align="center">List of Users</h1>
<hr>

<form action="newForm">
<button class="btn btn-success">Add New User</button>
</form>

<br>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Country</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
   <!-- JSTL -- Java Standard tag library -- it is used to write java in angular brackets  -->
   <c:forEach var="u" items="${users}">
   		<tr>
   			<td> <c:out value="${u.id}"></c:out> </td>
   			<td> <c:out value="${u.name}"></c:out> </td>
   			<td> <c:out value="${u.email}"></c:out> </td>
   			<td> <c:out value="${u.country}"></c:out> </td>
   			<td> 
   				 <a href="edit?id=<c:out value="${u.id}"></c:out>">Edit</a>
   				 &nbsp;&nbsp;&nbsp;&nbsp;
   				 <a href="delete?id=<c:out value="${u.id}"></c:out>">Delete</a> 
   			</td>
   		</tr>
   </c:forEach>
   
  </tbody>
</table>

</div>
</body>
</html>