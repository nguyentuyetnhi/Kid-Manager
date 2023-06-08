<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="include/header.jsp" %>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="css/teacher.css" rel="stylesheet">
<body>

    <!-- Header Start -->
    <div class="container-fluid bg-primary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
            <h3 class="display-3 font-weight-bold text-white">Our Teachers</h3>
            <div class="d-inline-flex text-white">
                <p class="m-0"><a class="text-white" href="">Home</a></p>
                <p class="m-0 px-2">/</p>
                <p class="m-0">Our Teachers</p>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- Team Start -->
    <div class="container">
        <div class="mt-5">
            <div class="d-style  border-2 bgc-white  btn-h-outline-blue btn-a-outline-blue w-100 my-2 py-3 shadow-sm">
                <!-- Basic Plan -->
                <c:forEach var="o" items="${listA}">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-4 text-center">
                            <h4 class="pt-3 text-170 text-600 text-primary-d1 letter-spacing">
                              ${o.getNameClass()}
                            </h4>
                        </div>

                        <ul class="list-unstyled mb-0 col-12 col-md-4 text-dark-l1 text-90 text-left my-4 my-md-0">
                            <li>
                                <label class="btn-success "> Start Date</label>
                                <p>${o.getStartDate1()}</p>
                            </li>

                            <li>
                                <label class="btn-danger "> End Date</label>
                                <p>${o.getEndDate1()}</p>
                            </li>
                        </ul>

                        <div class="col-12 col-md-4 text-center">
                            <a href="child-list?id=${o.getIdChildCour()}" class="f-n-hover btn btn-info btn-raised px-4 py-25 w-75 text-600">Get Started</a>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>

        <nav>
            <ul class="pagination">
                <li class="page-item">
                    <c:if test="${tag > 1}">
                        <a href="class-list?page=${tag-1}" class="page-link" aria-label="Previous">
                            <span aria-hidden="true">«</span>
                        </a>
                    </c:if>

                </li>
                <c:forEach begin="1" end="${endPage}" var="i">
                    <li class="page-item "><a href="class-list?page=${i}" class="page-link ${tag==i? "active" : ""}">${i}</a></li>
                    </c:forEach>
                    <c:if test="${tag < endPage}">
                    <li class="page-item">
                    <a href="class-list?page=${tag+1}" class="page-link" aria-label="Next">
                        <span aria-hidden="true">»</span>
                    </a>
                </li>
                    </c:if>
                
            </ul>
        </nav>
    </div>
    <!-- Team End -->

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
</body>

</html>