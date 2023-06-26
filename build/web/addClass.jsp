<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/header.jsp" %>
<%@page import="model.User.UsersDB"%>
<body>

    <!-- Header Start -->
    <div class="container-fluid bg-primary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
            <h3 class="display-3 font-weight-bold text-white">Our Courses</h3>
            <div class="d-inline-flex text-white">
                <p class="m-0"><a class="text-white" href="index.jsp">Home</a></p>
                <p class="m-0 px-2">/</p>
                <p class="m-0">Admin</p>
            </div>
        </div>
    </div>

    <!-- Class End -->


    <!-- Registration Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 mb-5 mb-lg-0">
                    <p class="section-title pr-5"><span class="pr-2">Book A Seat</span></p>
                    <h1 class="mb-4">Book A Seat For Your Kid</h1>
                    <p>Invidunt lorem justo sanctus clita. Erat lorem labore ea, justo dolor lorem ipsum ut sed eos,
                        ipsum et dolor kasd sit ea justo. Erat justo sed sed diam. Ea et erat ut sed diam sea ipsum est
                        dolor</p>
                    <ul class="list-inline m-0">
                        <li class="py-2"><i class="fa fa-check text-success mr-3"></i>Labore eos amet dolor amet diam</li>
                        <li class="py-2"><i class="fa fa-check text-success mr-3"></i>Etsea et sit dolor amet ipsum</li>
                        <li class="py-2"><i class="fa fa-check text-success mr-3"></i>Diam dolor diam elitripsum vero.</li>
                    </ul>
                    <a href="" class="btn btn-primary mt-4 py-2 px-4">Book Now</a>
                </div>
                <div class="col-lg-5">
                    <div class="card border-0">
                        <div class="card-header bg-secondary text-center p-4">
                            <h1 class="text-white m-0">Create</h1>
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-item nav-link "  href="#Class" >Class</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-item nav-link" href="#Course" >Course </a>
                                </li>

                            </ul>
                        </div>
                        <div class="card-body rounded-bottom bg-info p-5">
                           
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Name:</label>
                                    <input type="text" name="className" class="form-control border-0 p-4 input_form" placeholder="Enter  Name" required="required" />
                                </div>
                                <div class="form-group">
                                    <label class="text-white" for="CoursePrice">Teacher</label>
                                    <select class="form-select form-control input_form" name="idTeacher" >
                                        <c:forEach items="${UsersDB.getAllUsers()}" var="c">
                                            <option value="${c.idUser}">${c.fullName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Total Seat:</label>
                                    <input type="txt" name="totalSeat" class="form-control border-0 p-4 input_form" placeholder="Enter totalSeat" required="required" />
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Time Start Semester:</label>
                                    <input type="datetime-local" name="timeStartSemester" class="form-control border-0 p-4 input_form" placeholder="Enter  time start semester" required="required" />
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Time End Semester:</label>
                                    <input type="datetime-local" name="timeEndSemester" class="form-control border-0 p-4 input_form" placeholder="Enter  time end semester" required="required" />
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Time From:</label>
                                    <input type="datetime-local" name="timeFrom" class="form-control border-0 p-4 input_form" placeholder="Enter  time from" required="required" />
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Time To:</label>
                                    <input type="datetime-local" name="timeTo" class="form-control border-0 p-4 input_form" placeholder="Enter  time to" required="required" />
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Tuition:</label>
                                    <input type="text" name="tuition" class="form-control border-0 p-4 input_form" placeholder="Enter  tuition" required="required" />
                                </div>
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Condition:</label>
                                    <input type="txt" name="condition" class="form-control border-0 p-4 input_form" placeholder="Enter  condition" required="required" />
                                </div>
                                <span class="navbar-text">
                                    <a data-toggle="modal" data-target="#confirmCourse">
                                        <input type="button" class="btn btn-secondary px-4"  value="Save Changes">
                                    </a>
                                    <button class="text-success" style="border: none;">${msq}</button>
                                </span>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- comfirm course -->
    <div id="confirmCourse" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="content">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Confirm Course</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="addCourse" method="POST">

                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Name:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="className"  class="form-control border-0 p-4 input_confirm" placeholder="Enter  Name" required="required" />
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Teacher:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <select class="form-select form-control input_confirm" name="idTeacher"  >
                                    <c:forEach items="${UsersDB.getAllUsers()}" var="c">
                                        <option value="${c.idUser}" >${c.fullName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Total Seat:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="totalSeat" class="form-control border-0 p-4 input_confirm" required="required"  />                         
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Time Start Semester:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="txt" name="timeStartSemester" class="form-control border-0 p-4 input_confirm" required="required" />
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Time End Semester:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="txt" name="timeEndSemester" class="form-control border-0 p-4 input_confirm"  required="required" />
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Time From:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="txt" name="timeFrom" class="form-control border-0 p-4 input_confirm" required="required" />
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Time To:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="txt" name="timeTo" class="form-control border-0 p-4 input_confirm" required="required" />
                            </div>
                        </div>
                       <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Tuition:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" name="tuition" class="form-control border-0 p-4 input_confirm"required="required"   />
                            </div>
                        </div>
                        <div class="row mb-3 col-12">
                            <div class="col-sm-3 col-12">
                                <h6 class="mb-0 pt-2">Condition:</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="number" name="condition"  class="form-control border-0 p-4 input_confirm" required="required" />
                            </div>
                        </div>
                        <div class="form-row text-left col-12">
                            <button type="button" class="btn btn-secondary btn-sm ml-auto"
                                    data-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-primary btn-sm ml-3 px-5">Save</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Start -->
    <%@ include file="include/footer.jsp" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary p-3 back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
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