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
        <link href="<c:url value='/resources/css/groups.css'/>" rel="stylesheet" type="text/css" />
        <title>Manage Groups</title>
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
            <h1>Manage Groups</h1>
            <h2 class="pull-left mar-t-20">Total Groups: 1903</h2>
            <a href="javascript:void(0);" data-toggle="modal" data-target="#createGroup" class="btn-auto bg-red pull-right">Create New Group</a>
            <div class="pendingGroups"><!--Pending Groups-->
                <h2>Groups Pending for Approval</h2>
                <img src="<c:url value='/resources/images/prev.png'/>" class="prev" /> <img src="<c:url value='/resources/images/next.png'/>" class="next" />
                <div class="carouselContainer">
                    <ul class="carousel">
                        <li>
                            <div class="group">
                                <h3>Travel1 and Photography</h3>
                                <div class="groupInfo">
                                    <div class="col"><span>Created By: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                                    <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                                    <div class="col"><a href="javascript:void(0);">Approve</a> <a href="javascript:void(0);">Edit</a></div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="group">
                                <h3>Travel2 and Photography</h3>
                                <div class="groupInfo">
                                    <div class="col"><span>Created By: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                                    <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                                    <div class="col"><a href="javascript:void(0);">Approve</a> <a href="javascript:void(0);">Edit</a></div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="group">
                                <h3>Travel3 and Photography</h3>
                                <div class="groupInfo">
                                    <div class="col"><span>Created By: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                                    <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                                    <div class="col"><a href="javascript:void(0);">Approve</a> <a href="javascript:void(0);">Edit</a></div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="group">
                                <h3>Travel4 and Photography</h3>
                                <div class="groupInfo">
                                    <div class="col"><span>Created By: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                                    <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                                    <div class="col"><a href="javascript:void(0);">Approve</a> <a href="javascript:void(0);">Edit</a></div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--/Pending Groups--></div>
            <div class="groupsListing" id="groupList"><!--All groups listing-->
                <h2>All Groups</h2>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
                <div class="group">
                    <h3>Travel and Photography</h3>
                    <div class="groupInfo">
                        <div class="col"><span>Group Admin: </span><span class="groupAdmin">Amanjeet Singh</span></div>
                        <div class="col"><span>Creation Date: </span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span></div>
                        <div class="col"><span>Total Members: </span><span class="groupMemberse">1035</span></div>
                        <div class="col"><a href="javascript:void(0);">View Details</a> <a href="javascript:void(0);">Edit</a> <a href="javascript:void(0);">Delete</a></div>
                    </div>
                </div>
               
                <div class="loadMore">Load More...</div>
                <!--/All groups listing--></div>
            <div class="clearBoth"></div>
        </div>
        <footer> Copyrights &copy; 2017 Mahindra Lifespaces Developers Ltd. </footer>
        <div id="createGroup" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" id="groupclosebtn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h2 class="modal-title text-primary">Create Group</h2>
                    </div>
                    <div class="modal-body">

                        <form  id="formCreateGroup" >
                            <div class="panel pad-all-20 mar-b-20">
                                <div class="row">
                                    <div class="col-6">
                                        <input type="text" id="txtGrpTitle" name="txtGrpTitle" maxlength="100"  placeholder="Group Title" />
                                    </div>
                                </div>
                                <textarea id="txtGrpDesc" name="txtGrpDesc" placeholder="Group Description"></textarea>
                                <label>Add/ Update:</label>
                                <div class="clearfix"></div>
                                <div class="row">
                                    <div class="img-box pull-left">
                                        <div class="img-content"> </div>
                                        <a href="javascript:void(0)" class="edit"><img src="<c:url value='/resources/images/edit.png'/>"></a> <a href="javascript:void(0)" class="delete"><img src="<c:url value='/resources/images/delete.png'/>"></a> </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="btn-upload pull-left mar-t-10">
                                    <label for="upload1" class="btn bg-red" type="button"> Upload</label>
                                    <input id="upload1" type="file" name="file-upload">
                                </div>

                                <div class="clearfix"></div>
                                <label for="chkNotify" class="mar-t-10">
                                    <input type="checkbox" id="chkNotify" name="chkNotify" />
                                    Notify all members </label>
                                <div class="clearBoth"></div>
                            </div>
                            <input class="btn bg-red" type="submit" id="btnSubmit" name="btnSubmit" value="Submit" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearBoth"></div>
        <script src="<c:url value='/resources/js/lib/jquery-1.12.4/jquery-1.12.4.min.js'/>" type="text/javascript"></script> 
        <script src="<c:url value='/resources/js/common.js'/>" type="text/javascript"></script>  
        <script src="<c:url value='/resources/js/bootstrap.js'/>" type="text/javascript"></script>
        <script>
            $('#formCreateGroup').on('submit', function(e){
            e.preventDefault();
            var form = document.getElementById("formCreateGroup");
            var formData = new FormData(form);
            $.ajax({

            type     : "POST",
                    url      : "createGroup",
                    data     : formData,
                    dataType : 'text',
                            processData: false,
                            contentType: false,
                    success  : function(msg) {
                    if (msg == "yes"){

                    $('#groupclosebtn').click();
                    // window.location.href="dashboard";
                    } else{

                    alert("Something went wrong please try after sometime.");
                    //    $('#labelError').html("Please check your email and password");
                    }

                    },
                    error: function (data, err) {
                    alert(err);
                    }
            });
            });
            
            
            function groupList(){
            $.ajax({

                    type     : "POST",
                    url      : "getGroupList",
                    dataType : 'text',
                            processData: false,
                            contentType: false,
                    success  : function(msg) {
                    if (msg == "true"){


        $("#groupList").append(

            <c:forEach  items="${groupList}" var="groupItem">


                    <div class = "group" >
                            <h3 > ${groupItem.gName} < /h3>
                            <div class = "groupInfo" >
                            <div class = "col" > < span > Group Admin: < /span><span class="groupAdmin">Amanjeet Singh</span > < /div>
                            <div class = "col" > < span > Creation Date: < /span><span class="groupCreationDate">19 Sep 2017, 6:30 PM</span > < /div>
                            <div class = "col" > < span > Total Members: < /span><span class="groupMemberse">1035</span > < /div>
                            <div class = "col" > < a href = "javascript:void(0);" > View Details < /a> <a href="javascript:void(0);">Edit</a > < a href = "javascript:void(0);" > Delete < /a></div >
                            </div>
                            </div>
            </c:forEach>

        );

                    // window.location.href="dashboard";
                    } else{

                    alert("Something went wrong please try after sometime.");
                    //    $('#labelError').html("Please check your email and password");
                    }

                    },
                    error: function (data, err) {
                    alert(err);
                    }
            });
            }


        $( document ).ready(function() {
             groupList();
        });


        </script>
    </body>
</html>
