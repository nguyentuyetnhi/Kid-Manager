<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/header.jsp" %>

<body>

    <!-- Header Start -->
    <div class="container-fluid bg-primary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
            <h3 class="display-3 font-weight-bold text-white">Our Courses</h3>
            <div class="d-inline-flex text-white">
                <p class="m-0"><a class="text-white" href="">Home</a></p>
                <p class="m-0 px-2">/</p>
                <p class="m-0">Our Courses</p>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- Class Start -->

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
                            <h1 class="text-white m-0">Add Skill Course</h1>
                        </div>
                        <div class="card-body rounded-bottom bg-info p-5">
                            <form action="addCourse" method="post">
                                <div class="form-group">
                                    <label  class="text-white"  for="CourseName">Course Name:</label>
                                    <input type="text" name="CourseName" class="form-control border-0 p-4 input_form" placeholder="Enter Course Name" required="required" />
                                </div>
                                <div class="form-group">
                                    <label class="text-white" for="CoursePrice">Course Price:</label>
                                    <input type="number" name="CoursePrice" class="form-control border-0 p-4 input_form" placeholder="Enter Course Price" required="required" />
                                </div>
                                <span class="navbar-text">
                                    <a data-toggle="modal" data-target="#confirmCourse">
                                        <input type="button" class="btn btn-secondary px-4"  value="Save Changes">
                                    </a>
                                    <button class="text-success" style="border: none;">${msq}</button>
                                </span>
                            </form>
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
                        <div class="form-row row container">
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3 col-12">
                                    <h6 class="mb-0 pt-2">Course Name</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="text" name ="skillName" class="form-control input_confirm"  "required>
                                </div>
                            </div>
                            <div class="row mb-3 col-12">
                                <div class="col-sm-3">
                                    <h6 class="mb-0 pt-2">Price</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input type="number" name ="priceSkillCourse" class="form-control input_confirm""required>
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