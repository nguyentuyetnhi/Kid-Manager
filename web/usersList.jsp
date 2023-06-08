<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="include/header.jsp" %>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/stylesChild.css" rel="stylesheet">
<body>

    <!-- Header Start -->
    <div class="container-fluid bg-primary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 350px">
            <h3 class="display-3 font-weight-bold text-white">User Management</h3>

        </div>
    </div>
    <!-- Header End -->


    <!-- Team Start -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-item nav-link " href="admin-list?role=${'Teacher'}" >Teacher</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-item nav-link" href="admin-list?role=${'Parent'}" >Parent</a>
                    </li>

                </ul>
                <div class="main-box clearfix">
                    <div class="able-responsive"  >
                        <table class="table user-list">
                            <thead>
                                <tr>
                                    <th>Index</th>
                                    <th><span>Name</span></th>
                                    <th>Dob</th>
                                    <th>Gender</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th>Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <%int count = 0;%>
                                    <c:forEach var="o" items="${listA}" >
                                            <td><%count++;
                                    out.print(count);%></td>
                                        <td>
                                            <img src="./img/${o.getImgAvt()}" alt="">
                                            <p>${o.getFullName()}</p>
                                        </td>
                                        <td>
                                            <p>${o.getDateOB()}</p>
                                        </td>
                                        <td>
                                            <c:if test="${o.gender == 'M'}">
                                                Male
                                            </c:if>
                                            <c:if test="${o.gender == 'F'}">
                                                Female
                                            </c:if>
                                        </td>
                                        <td>
                                            <p>${o.getAddress()}</p>
                                        </td>
                                        <td>
                                            <p>${o.getPhoneNumber()}</p>
                                        </td>
                                        <td style="width: 20%;">
                                            <a href="profileParent.jsp" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>

                        </table>
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
                </div>
            </div>
        </div>
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
    <
</body>

</html>