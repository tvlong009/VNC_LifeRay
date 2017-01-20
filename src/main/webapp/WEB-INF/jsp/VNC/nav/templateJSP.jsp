<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
<%@ include file="./css_library.jsp"%>

</head>

<body class="top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<!-- A PART HEADER -->
			<div class="row border-bottom white-bg">
				<%@ include file="./headerTemp.jsp"%>
			</div>
			<!-- THE END A PART HEADER -->

			<!-- A PART CONTENT -->
			<div class="row m-t">
				<div class="col-xs-12"></div>
			</div>
			<!-- THE END A PART CONTENT -->

			<!-- A PART FOOTER -->
				<%@ include file="./footerTemp.jsp"%>
			<!-- END FOOTER -->
		</div>
	</div>

	<!-- JS -->
	<%@ include file="./js_library.jsp"%>
</body>
</html>
