<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Viện nghiên cứu</title>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">


<!-- Mainly scripts -->
<script src="<c:url value="/style/js/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/bootstrap.min.js" />"></script>


<div class="middle-box text-center loginscreen ">
	<p><h3>Mạng thông tin kinh tế  </h3></p>

<p><h3><b> Viện Nghiên Cứu và Phát Triển </b></h3></p>

    <p><h3> <b>TP. Hồ Chí Minh</h3></p>
    <div>
        <h2 class="text-success">Đăng nhập</h2>

        <form class="m-t" role="form" action="./jsp/VNC/vnc-00-trangchu.jsp">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Tên đăng nhập" >
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Mật khẩu" >
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">Đăng nhập</button>
        </form>
    </div>
</div>
<br/><br/>
