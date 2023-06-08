<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/header.jsp" %>


<body>

    <!-- Header Start -->
    <div class="container-fluid bg-primary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
            <h3 class="display-3 font-weight-bold text-white">Our Classes</h3>
            <div class="d-inline-flex text-white">
                <p class="m-0"><a class="text-white" href="">Home</a></p>
                <p class="m-0 px-2">/</p>
                <p class="m-0">Our Classes</p>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- Class Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center pb-2">
                <p class="section-title px-5"><span class="px-2">Popular Classes</span></p>
                <h1 class="mb-4">Classes for Your Kids</h1>
            </div>
            <div class="row">
                <c:forEach var="o" items="${listcl}" >
                    <div class="col-lg-4 mb-5">
                        <form method="POST" action="registerClass">

                            <div class="card border-0 bg-light shadow-sm pb-2">
                                <img class="card-img-top mb-2" src="img/class-1.jpg" alt="">
                                <div class="card-body text-center">
                                    <h4 class="card-title">Class ${o.getClassName()}</h4>
                                    <p class="card-text">Justo ea diam stet diam ipsum no sit, ipsum vero et et diam ipsum duo et no et, ipsum ipsum erat duo amet clita duo</p>
                                </div>
                                <div class="card-footer bg-transparent py-4 px-5">
                                    <div class="row border-bottom">
                                        <div class="col-6 py-1 text-right border-right"><strong>Skill Course</strong></div>
                                        <div class="col-6 py-1">${o.getSkillName()}</div>
                                    </div>
                                    <div class="row border-bottom">
                                        <div class="col-6 py-1 text-right border-right" for="seat"><strong>Total Seats</strong></div>
                                        <div class="col-6 py-1" name="seat">${o.getTotalSeat()}</div>
                                    </div>
                                    <div class="row border-bottom">
                                        <div class="col-6 py-1 text-right border-right"><strong>Time Start</strong></div>
                                        <div class="col-6 py-1">${o.getTimeStart1()}</div>
                                    </div>
                                    <div class="row border-bottom">
                                        <div class="col-6 py-1 text-right border-right"><strong>Time End</strong></div>
                                        <div class="col-6 py-1">${o.getTimeEnd1()}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6 py-1 text-right border-right"><strong>Tuition Fee</strong></div>
                                        <div class="col-6 py-1">${o.getTutionFee()}$/ Month</div>
                                    </div>
                                </div>
                                <span class="navbar-text text-center">
                                    <a data-toggle="modal" data-target="#confirmClass">
                                        <input type="button" class="btn btn-primary px-4 "  value="Join Now">
                                    </a>
                                    <span class="text-danger ">${msq}</span>
                                </span>
                            </div>

                        </form>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- Class End -->


    <div id="confirmClass" class="modal fade " role="dialog" >
        <div class="modal-dialog modal-lg" role="content">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Confirm Register Class</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="registerClass" method="POST">
                        <div class="form-row row container">
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3 col-12">
                                    <h6 class="mb-0 pt-2">Parent Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="text" name ="parent" class="form-control input_confirm" value="${u.getFullName()}"required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3 col-12">
                                    <h6 class="mb-0 pt-2">Child Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="text" name ="child" class="form-control input_confirm" value="${u.getFullName()}"required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3 col-12">
                                    <h6 class="mb-0 pt-2">Skill Course</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="text" name ="skillcourse" class="form-control input_confirm" value="${u.getFullName()}"required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3">
                                    <h6 class="mb-0 pt-2">Total Seats</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="number" name ="totalseat" class="form-control input_confirm" value="${seat}"required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3">
                                    <h6 class="mb-0 pt-2">Time Start</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="text" name ="timestart" class="form-control input_confirm" value="8:00"required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3">
                                    <h6 class="mb-0 pt-2">Time End</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="text" name ="timeend" class="form-control input_confirm" value="10:00"required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3">
                                    <h6 class="mb-0 pt-2">Tution Fee</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="number" name ="tutionfee" class="form-control input_confirm" value="${u.getPhoneNumber()}" disabled>
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
                            <h1 class="text-white m-0">Book A Seat</h1>
                        </div>
                        <div class="card-body rounded-bottom bg-primary p-5">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control border-0 p-4" placeholder="Your Name" required="required" />
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control border-0 p-4" placeholder="Your Email" required="required" />
                                </div>
                                <div class="form-group">
                                    <select class="custom-select border-0 px-4" style="height: 47px;">
                                        <option selected>Select A Class</option>
                                        <option value="1">Class 1</option>
                                        <option value="2">Class 1</option>
                                        <option value="3">Class 1</option>
                                    </select>
                                </div>
                                <div>
                                    <button class="btn btn-secondary btn-block border-0 py-3" type="submit">Book Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Registration End -->

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
