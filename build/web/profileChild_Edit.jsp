<%-- 
    Document   : profileChild_Edit
    Created on : Jun 2, 2023, 10:49:42 PM
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
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin"
                                     class="rounded-circle p-1 bg-primary" width="110">
                                <div class="mt-3">
                                    <h4>${u.getFullName()}</h4>
                                    <p class="text-secondary mb-1">ID: @${u.getIdUser()}</p>
                                </div>
                            </div>
                            <hr class="my-4">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                          viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                                          stroke-linecap="round" stroke-linejoin="round"
                                                          class="feather feather-twitter me-2 icon-inline text-info">
                                        <path
                                            d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z">
                                        </path>
                                        </svg>Class</h6>
                                    <span class="text-secondary"><a href="#">17A01</a></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="card">
                        <form action="UpdateProfileParent" method="POST">
                            <div class="card-body">
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0 pt-2">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text" class="form-control input_form" value="${u.getFullName()}" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0 pt-2">Birthday</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input name="dob" class="form-control input_form" type="date" value="${u.getDob()}" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0 pt-2">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <select class="form-select col-sm-12 py-2 form-control custom-select input_form" name="gender" value="F">
                                            <option value="M"  >Male</option>
                                            <option value="F"  >Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0 pt-2">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text" class="form-control input_form" value="${u.getAddress()}" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">

                                        <span class="navbar-text">
                                            <a data-toggle="modal" data-target="#confirmEditProfile">
                                                <input type="button" class="btn btn-primary px-4"  value="Save Changes">
                                            </a>
                                            <span class="text-danger ">${msq}</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <!--Start  confirm edit--> 
                <div id="confirmEditProfile" class="modal fade" role="dialog">
                    <div class="modal-dialog modal-lg" role="content">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Confirm Edit</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <form action="UpdateProfileParent" method="POST">
                                    <div class="form-row row container">
                                        <div class="row mb-3 col-12">
                                            <div class="col-sm-3 col-12">
                                                <h6 class="mb-0 pt-2">Full Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name ="fullName" class="form-control input_confirm" value="${u.getFullName()}"required>
                                            </div>
                                        </div>
                                        <div class="row mb-3 col-12">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0 pt-2">Birthday</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input name ="dob" class="form-control input_confirm"  type="date" value="${u.getDob()}" required>
                                            </div>
                                        </div>
                                        <div class="row mb-3 col-12">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0 pt-2">Gender</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <select class="form-select col-sm-12 py-2 form-control custom-select input_confirm" name="gender" value="F">
                                                    <option value="M"  >Male</option>
                                                    <option value="F"  >Female</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3 col-12">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0 pt-2">Address</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input type="text" name ="address" class="form-control input_confirm" value="${u.getAddress()}"required>
                                                <input type="hidden" name ="idUser" class="form-control input_confirm" value="${u.getIdUser()}">
                                            </div>
                                        </div>
                                        <div class="form-row text-left col-12">
                                            <button type="button" class="btn btn-secondary btn-sm ml-auto"
                                                    data-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-primary btn-sm ml-3 px-5">Save</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End  confirm edit--> 
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">

    </script>
    <script>
        var inputForms = document.querySelectorAll('.input_form');
        var inputConfirms = document.querySelectorAll('.input_confirm');

        for (let i = 0; i < inputForms.length; i++) {
            inputForms[i].addEventListener('change', function () {
                console.log(i);
                inputConfirms[i].value = inputForms[i].value;
            });
        }
    </script>
</body>
</html>