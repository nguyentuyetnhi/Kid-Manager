<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="include/header.jsp" %>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/stylesChild.css" rel="stylesheet">
<body>

    <!-- Header Start -->
    <div class="container-fluid bg-primary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
            <h3 class="display-3 font-weight-bold text-white">Class Number</h3>

        </div>
    </div>
    <!-- Header End -->


    <!-- Team Start -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-box clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <tr>
                                    <th>Index</th>
                                    <th><span>Name</span></th>
                                    <th><span>DOB</span></th>
                                    <th class="text-center"><span>gender</span></th>
                                    <th><span>weight</span></th>
                                    <th><span>height</span></th>
                                    <th><span>health</span></th>
                                    <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%int count = 0;%>
                                <c:forEach var="o" items="${listA}" >
                                    <tr>
                                            <td><%count++;
                                        out.print(count);%></td>
                                        <td>
                                            <img src="./img/${o.imgAvt}" alt="">
                                            <p>${o.childName}</p>
                                        </td>
                                        <td>
                                            <p>${o.getDateOB()}</p>
                                        </td>
                                        <td>
                                            <c:if test="${o.getGender() == 'M'}">
                                                Male
                                            </c:if>
                                            <c:if test="${o.getGender() == 'F'}">
                                                Female
                                            </c:if>
                                        </td>

                                        <td >
                                            ${o.getWeight()}
                                        </td>
                                        <td>
                                            ${o.getHeight()}
                                        </td>
                                        <td>
                                            ${o.getHealth()}
                                        </td>
                                        <td style="width: 20%;">
                                                <a href="decision?id=${o.idChild}&status=Accept" class="btn btn-success" type="button"  >Yes</a>
                                                <a href="decision?id=${o.idChild}&status=NoAccept" class="btn btn-danger" type="button" >No</a>
                                        </td>
                                    </tr>
                                </c:forEach>



                            </tbody>
                        </table>
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
</body>

</html>