<%-- 
    Document   : header
    Created on : May 24, 2023, 8:41:52 AM
    Author     : ASUS-PRO
--%>
<%@page import="Model.UsersDB.*"%>
<%@page import="Model.User.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${USER}" var="u"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="user1" value="${u}"/>
        <c:set var="role" value="${u.getRole()}"/>
        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav font-weight-bold mx-auto py-0">
                <a href="index.jsp" class="nav-item nav-link">Home</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>
                <a href="class.jsp" class="nav-item nav-link">Classes</a>
                <a href="team.jsp" class="nav-item nav-link">Teachers</a>
                <a href="gallery.jsp" class="nav-item nav-link">Gallery</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="blog.jsp" class="dropdown-item">Blog Grid</a>
                        <a href="single.jsp" class="dropdown-item">Blog Detail</a>
                    </div>
                </div>
                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
            </div>
            <c:if test="${user1 == null}">
                <a href="login.jsp" class="btn btn-primary px-5">Login</a>
            </c:if>
            <c:if test="${user1 != null}">
                <div class="nav-item dropdown">
                    <a class="btn btn-primary px-5 nav-link dropdown-toggle" data-toggle="dropdown" href="#">${u.getFullName()}</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="logout" class="dropdown-item">Logout</a>
                    </div>
                </div>
            </c:if>
        </div>
    </body>
</html>
