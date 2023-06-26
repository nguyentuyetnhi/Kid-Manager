<%-- 
    Document   : profileParent
    Created on : May 26, 2023, 5:15:06 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="include/header.jsp" %>

<head>
    <title>My Profile</title>
    <link href="css/styleMyProfileParent.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="main-body">
            <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                                <a data-toggle="modal" data-target="#confirmImg">
                                    <img src="./img/${childRequest.getImgAvt().trim()}"  class="rounded-circle p-1 bg-primary" width="150" height="150">
                                </a>
                                <div class="mt-3">
                                    <h4>${childRequest.childName.trim()}</h4>
                                    <p class="text-secondary mb-1">ID: @${childRequest.getIdChild()}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <ul class="list-group list-group-flush">


                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info">
                                    <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">

                                    </path>
                                    </svg>
                                    Class
                                </h6>

                                <span class="text-secondary"><a href="#">17A01</a></span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info">
                                    <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                    </path>
                                    </svg>
                                    birth certificate
                                </h6> 
                                <span class="text-secondary"><a data-toggle="modal" data-target="#confirmImgDob" href="#">birth certificate </a></span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Parent Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${userRequest.getFullName()}
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Full Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${childRequest.childName.trim()}
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Birthday</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${childRequest.getDob()}
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Gender</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <c:choose>
                                        <c:when test="${childRequest.gender.trim().equals('M')}">
                                            Male
                                        </c:when>
                                        <c:when test="${childRequest.gender.trim().equals('F')}">
                                            Female
                                        </c:when>
                                    </c:choose>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Address</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    ${userRequest.getAddress()}
                                </div>
                            </div>
                            <hr>
                            <c:if test="${u.idUser.trim() == userRequest.getIdUser().trim()}">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <a class="btn btn-primary px-5" href="ProfileChildByIdEdit?idChild=${childRequest.idChild.trim()}&idUser=${userRequest.idUser}">Edit</a>
                                        <span class=" ml-5 text-success ">${msq}</span>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="confirmImg" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="content">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Change avatar</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form method="post" action="FileUpLoadChild" enctype="multipart/form-data">
                        <input type="hidden" name ="idChild" class="form-control input_confirm" value="${childRequest.getIdChild()}">
                        <input type="hidden" name ="idUser" class="form-control input_confirm" value="${userRequest.getIdUser().trim()}">
                        <input type="file" name="file" value="" placeholder="edit"/>
                        <input type="submit" value="Upload" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div id="confirmImgDob" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="content">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add birth certificate</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form method="post" action="FileUploadDob" enctype="multipart/form-data">
                        <div>
                              <img src="./img/${childRequest.getImgDob().trim()}"  class=" p-1 bg-primary" width="200" height="200"><br>
                        </div>
                        <input type="hidden" name ="idChild" class="form-control input_confirm" value="${childRequest.getIdChild()}">
                        <input type="hidden" name ="idUser" class="form-control input_confirm" value="${userRequest.getIdUser().trim()}">
                        <input type="file" name="file" value="" placeholder="edit"/>
                        <input type="submit" value="Upload" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">

    </script>
</body>
</html>