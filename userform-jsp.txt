<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>
<header>
	<nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
		<div>
			<a class="navbar-brand">User Management App</a>
        </div>
		<ul class="navbar-nav">
			<li><a href="list" class="nav-link">Users</a></li>
		</ul>
	</nav>
</header>
<br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                    
                    	<c:if test="${u == null}">
                        	<form action="insert" method="post">
                        </c:if>
                        <c:if test="${u != null}">
                        	<form action="update" method="post">
                        </c:if>
              

                        <caption>
	                        <c:if test="${u == null}">
	                        	<h2>
	                                    Add New User
	                            </h2>
	                        </c:if>
	                        <c:if test="${u != null}">
	                        	<h2>
	                                    Edit User
	                            </h2>
	                        </c:if>
                        </caption>
						
						<br/>
						<input type="hidden" value="<c:out value="${u.id}"></c:out>" name="id"/>
						
                        <fieldset class="form-group">
                            <label>User Name</label> 
                            <input type="text" value="<c:out value="${u.name}"></c:out>"  class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>User Email</label> 
                            <input type="text" value="<c:out value="${u.email}"></c:out>" class="form-control" name="email">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>User Country</label> 
                            <input type="text" value="<c:out value="${u.country}"></c:out>" class="form-control" name="country">
                        </fieldset>
                        
						<br/>
						
                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                  </div>
            </div>
        </div>                    
</body>
</html>