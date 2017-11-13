<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link href="<c:url value='/resources/css/common.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/resources/css/dashboard.css'/>" rel="stylesheet" type="text/css" />
<title>Dashboard</title>
</head>
<body>

  <header>
    <div class="logo"><img src="<c:url value='/resources/images/logo.png'/>"  width="250" height="28" /></div>
    <div class="rightSection">
      <div class="changeProperty">
        <label for="ddlChangeProperty">Change Property</label>
        <select id="ddlChangeProperty" name="ddlChangeProperty">
          <option value="none">Happinest</option>
          <option value="none">Happinest</option>
        </select>
      </div>
      <div class="toggleMenu">Welcome <span class="username">Administrator</span>
        <div class="toogleMenuItem">
          <ul>
            <li><a href="javascript:void(0);" title="Change Password">Change Password</a></li>
            <li><a href="javascript:void(0);" title="Logout">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </header>
  <div class="wrapper">
    <h1>Dashboard</h1>
    <div class="db-row">
      <div class="db-table">
        <div class="db-table-row">
          <div class="db-table-col"><a href="dashboard/manageGroup"> <img  src="<c:url value='/resources/images/group.png'/>" alt="Manage Group"><br>Manage Groups</a></div>
          <div class="db-table-col"><a href="dashboard/manageEvents"> <img  src="<c:url value='/resources/images/event.png'/>" alt="Manage Event"><br>Manage events </a> </div>
          <div class="db-table-col"><a href="#"> <img src="<c:url value='/resources/images/notices.png'/>" alt="Manage Notices"><br>Manage notices </a> </div>
          <div class="db-table-col"><a href="manage-site.html"> <img src="<c:url value='/resources/images/site-visit.png'/>" alt="Manage site visit"><br>Manage site visit </a> </div>
        </div>
        <div class="db-table-row">
          <div class="db-table-col"> <a href="manage-booking.html"> <img src="<c:url value='/resources/images/booking.png'/>" alt="Manage clubhouse booking"><br>Manage clubhouse booking </a> </div>
          <div class="db-table-col"> <a href="manage-cassified.html"> <img src="<c:url value='/resources/images/classified.png'/>" alt="Manage classifieds"><br>Manage classifieds </a> </div>
          <div class="db-table-col"> <a href="manage-vas.html"> <img src="<c:url value='/resources/images/vas.png'/>" alt="Value Added Services"><br>Value Added Services </a> </div>
          <div class="db-table-col"> <a href="manage-notification.html"> <img src="<c:url value='/resources/images/notifications.png'/>" alt="Manage notifications"><br> Manage notifications </a> </div>
        </div>
        <div class="db-table-row">
          <div class="db-table-col"> <a href="manage-bills.html"> <img src="<c:url value='/resources/images/bills.png'/>" alt="Manage bills"><br> Manage bills </a> </div>
          <div class="db-table-col"> <a href="manage-callback.html"> <img src="<c:url value='/resources/images/callback.png'/>" alt="Manage Call Back "><br> Manage Call Back </a> </div>
          <div class="db-table-col"> <a href="manage-callback.html"> <img src="<c:url value='/resources/images/mdl.png'/>" alt="Manage Call Back "><br> Manage MLDL Projects </a> </div>
        </div>
      </div>
      <div class="clearBoth"></div>
    </div>
  </div>
   
  <footer> Copyrights &copy; 2017 Developers Ltd. </footer>

 <div class="clearBoth"></div>
<script src="<c:url value='/resources/js/lib/jquery-1.12.4/jquery-1.12.4.min.js'/>"  type="text/javascript"></script> 
<script src="<c:url value='/resources/js/common.js'/>" type="text/javascript"></script>



  
</body>
</html>
