<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link href="<c:url value='/resources/css/jquery.datetimepicker.min.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/resources/css/common.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/resources/css/events.css'/>" rel="stylesheet" type="text/css" />
<title>Manage Events</title>
</head>
<body>
<header>
  <div class="logo"><img src="<c:url value='/resources/images/logo.png'/>" width="250" height="28" /></div>
  <div class="rightSection">
         <a href="dashboard" class="pull-left mar-r-20 pad-all-20 mar-t-10">Home</a>
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
          <li><a href="javascript:void(0);" title="Notifications">Notifications</a></li>
          <li><a href="javascript:void(0);" title="Change Password">Change Password</a></li>
          <li><a href="javascript:void(0);" title="Logout">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>
</header>
<div class="wrapper">
  <h1>Manage Events</h1>
  <h2 class="pull-left mar-t-20">Total Events: 1903</h2>
  <a href="javascript:void(0);" data-toggle="modal" data-target="#createEvent" class="btn-auto bg-red pull-right">Create New Event</a>
  <div class="eventsListing">
    <ul>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
      <li><span class="eventsTitle"><a href="javascript:void(0);">Scheduled maintenance of parking area</a></span><span class="eventDateTime">30 Sep. 2017, 6:30 PM</span></li>
    </ul>
  </div>
  <div class="loadMore">Load More...</div>
  <div class="clearBoth"></div>
</div>
<footer> Copyrights &copy; 2017 Mahindra Lifespaces Developers Ltd. </footer>
<div id="createEvent" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title text-primary">Create Event</h2>
      </div>
      <div class="modal-body">
        <div class="panel pad-all-20 mar-b-20">
          <div class="row">
            <div class="col-6">
              <input type="text" id="txtEventTitle" name="txtEventTitle" maxlength="100" placeholder="Event Title" />
            </div>
            <div class="col-6">
              <input type="text" id="txtEventLocation" name="txtEventLocation" maxlength="100" placeholder="Event Location" />
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <div class="input-group mar-b-20">
                <input  class="form-control"  type="text" value="" name="search" placeholder="Event Date/ Time" id="datetimeCreateEvent">
                <span class="input-btn">
                <button class="btn open" type="button"><img src="images/calendar.png"></button>
                </span> </div>
            </div>
          </div>
          <textarea id="txtEventDesc" name="txtEventDesc" placeholder="Event Description"></textarea>
          <div class="clearBoth"></div>
          <input type="submit" id="btnSubmit" name="btnSubmit" class="btn bg-red" value="Create New Event"/>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clearBoth"></div>
<script src="<c:url value='/resources/js/lib/jquery-1.12.4/jquery-1.12.4.min.js'/>" type="text/javascript"></script> 
<script src="<c:url value='/resources/js/common.js'/>" type="text/javascript"></script> 
<script src="<c:url value='/resources/js/events-listing.js'/>" type="text/javascript"></script> 
<script src="<c:url value='/resources/js/bootstrap.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/jquery.datetimepicker.full.min.js'/>" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('#datetimeCreateEvent').datetimepicker();
         
    });
    $('.open').click(function(){
         $('#datetimeCreateEvent').datetimepicker('show');
    });
</script>
</body>
</html>
