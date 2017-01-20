<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- CSS -->
	<title>Demo Viện nghiên cứu</title>
	<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
	<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
	<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
	<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">
	
	<!-- Date picker -->
	<link href="<c:url value='/style/css/others/inspinia/plugins/datapicker/datepicker3.css' />" rel="stylesheet">
	
	<!-- Data Tables -->
	<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
	<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
	<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">
	
	<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
	<link href="<c:url value='/style/css/vnc/vnc-01-dn-nhomchitieu.css' />" rel="stylesheet">
	<link rel="shortcut" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&subset=cyrillic,latin">
<style>
#wrapper {
   padding-top: 0px;

}
.container-fluid{
	margin-right: auto; 
    margin-left: auto; 
    padding-left: 0px;
    padding-right: 0px;
}
</style>

</head>

<portlet:renderURL var="renderURL">
	<portlet:param name="action" value="showThemMoiNhomChiTieu"/>
</portlet:renderURL>

<body>
	<div class="top-navigation" id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<!-- A PART CONTENT -->

			<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px">
				<div class="col-lg-10">
					<h2 class="text-success">Định nghĩa nhóm chỉ tiêu</h2>
				</div>
				<br />
				<div class="col-lg-2 text-right">
					<a href="<%=renderURL.toString()%>"><button type="submit" class="btn btn-w-m btn-success">
						<div data-toggle="tooltip" data-placement="top" title="Thêm mới">
							<i class="fa fa-file"></i> Thêm mới
						</div>
					</button></a>
				</div>
			</div>
			<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
				<div class="col-lg-12">
					<div class="">
						<div class="ibox-title blue-div">
							<h3>Danh Sách Bộ Chỉ Tiêu</h3>
						</div>
						<div class=" ibox-content">
							<div class="form-group ">
								<div class="row">
									<div class="table-responsive col-lg-12">
										<table id="vnc01-table" class="table table-striped table-bordered">
											<thead>
												<tr class="text-success">
													<th class="text-center">STT</th>
													<th class="text-center">Tên bộ chỉ tiêu</th>
													<th class="text-center">Ngày Tạo</th>
													<th class="text-center">Người Sửa</th>
													<th class="text-center">Thao Tác</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="chitieu" items="${params }">
													<tr >
														<td class="text-center">${chitieu.getIdBoChiTieu() }</td>
														<td class="text-center">${chitieu.getTenBoChiTieu() }</td>
														<td class="text-center"></td>
														<td class="text-center"></td>
														<td class="text-center">
															<button type="button">
																<a href="./vnc-02-dn-chitieu.jsp"><i class="fa fa-edit"></i></a>
															</button>
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
				</div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<script type="text/javascript">
 $(document).ready(function() {
  $('html body .portlet .portlet-content h2.portlet-title-text').remove();
 });
</script>
	<!-- Main JS -->
	<script
		src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

	<!-- Custom and plugin javascript -->
	<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

	<!-- Data picker -->
	<script
		src="<c:url value="/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js" />"></script>
	<!-- Data Tables -->
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.js" />"></script>
	<!-- MyJS-->
	<script src="<c:url value="/style/js/vnc/vnc-01-dn-nhomchitieu.js" />"></script>
</body>
</html>
