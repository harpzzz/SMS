<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link href="<c:url value='/resources/css/common.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/resources/css/login.css'/>" rel="stylesheet" type="text/css" />
<title>Mahindra CLAPP - Sign In</title>
</head>
<body>
<div class="container">
	<header>
    	<div class="logo"><img src="<c:url value='/resources/images/logo.png'/>" width="250" height="28" /></div>
    </header>
	<div class="wrapper">
    	<h1 class="loginHeading">Sign In to Admin Panel</h1>
        <div class="loginContainer clearBoth">
            <form method="post" action="dashboard">
        	<label for="txtUserName">Username*</label>
            <input type="text" id="txtUsername" name="txtUsername" maxlength="100" title="Please enter username" />
            <label for="txtPassword">Password*</label>
            <input type="text" id="txtPassword" name="txtPassword" maxlength="40" title="Please enter password" />
            <input type="submit" value="Sign In" id="btnLogin" name="btnLogin" title="Please click here to Sign In" />
            </form>
        </div>
    </div>
    <footer>
    	Copyrights &copy; 2017 Mahindra Lifespaces Developers Ltd.
    </footer>
</div>
</body>
</html>
