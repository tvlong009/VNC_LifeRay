<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />

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

 <!-- Sweet Alert -->
<link href="<c:url value='/style/css/others/inspinia/plugins/sweetalert/sweetalert.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-24-dm-trangthai.css' />" rel="stylesheet">


<portlet:actionURL var="ThemMoiTrangThai">
<portlet:param name="action" value="themMoiTrangTrhai"></portlet:param>
</portlet:actionURL>

<portlet:actionURL var="CapNhatTrangThai">
<portlet:param name="action" value="capNhatTrangThai"></portlet:param>
</portlet:actionURL>

<div class="top-navigation" id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<!-- A PART HEADER -->
			<div class="row border-bottom white-bg ">
				<%@ include file="../VNC/nav/headerTemp.jsp"%>
			</div>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px tooltip-demo">
	<div class="col-lg-10">
		<h2 class="text-success">Danh Mục Trạng Thái</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right">
		<button type="submit" class="btn btn-w-m btn-success" data-toggle="modal" typeaction="themTrangThai" onclick="showTrangThaiModal(this)">
			<div data-toggle="tooltip" data-placement="top" title="Thêm mới">
				<i class="fa fa-file"></i> Thêm mới
			</div>
		</button>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px tooltip-demo">
<div class="col-lg-12">
		<div class="ibox-title green-div">
			<h3>Tra Cứu</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content">
				<div class="row">
					<form id="vnc04-tracuu-form">
						<div class="form-group">
							<div class="col-sm-7">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Từ Khóa"> <span
										class="input-group-btn tooltip-demo">
										<button type="submit" class="btn btn-w-m btn-success"
											data-toggle="tooltip" data-placement="right"
											title="Tìm kiếm theo từ khóa">
											<i class="fa fa-search"></i> Tìm Kiếm
										</button>
									</span>
								</div>
							</div>
							<div class="col-lg-5"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-12">
	
		<div class="">
			<div class="ibox-title blue-div">
				<h3>Danh Sách Trạng Thái</h3>
			</div>
			<div class=" ibox-content">
				<div class="form-group ">
					<div class="row">
						<div class="table-responsive col-lg-12">
							<table id="vnc24-table"	class="table table-striped table-bordered">
								<thead>
									<tr class="text-success">
										<th class="text-center">STT</th>
										<th class="text-center">Mã</th>
										<th class="text-center">Tên</th>
										<th class="text-center">Ngày Tạo</th>
										<th class="text-center">Ngày Sửa</th>
										<th class="text-center">Thao Tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="trangthai" items="${params }">
													<tr >
														<td class="text-center">${trangthai.getIdTrangThai() }</td>
														<td class="text-center">${trangthai.getMaTrangThai() }</td>
														<td class="text-center">${trangthai.getTenTrangThai() }</td>
														<td class="text-center"></td>
														<td class="text-center"></td>
														<td class="text-center">
														<button type="button" data-toggle="modal" typeaction="suaTrangThai" onclick="showTrangThaiModal(this)">
															<i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa" ></i>
														</button>
														<button type="button" class="delete_confirm">
															<i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="Xóa"></i>
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
<!-- THE END A PART CONTENT -->
<div class="modal inmodal" id="vnc24-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<%@ include file="../VNC/vnc24-dm-trangthai-modal.jsp"%>
</div>
<!-- THE END A PART CONTENT -->
							<!-- A PART FOOTER -->
								<%@ include file="./nav/footerTemp.jsp"%>
							<!-- END FOOTER -->
</div></div>
<!-- JS -->
<!-- Main JS -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

 <!-- Data picker -->
<script src="<c:url value="/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js" />"></script>
<script  charset="UTF-8" src="<c:url value="/style/js/others/datepicker/bootstrap-datepicker.vi.js" />"></script>
 	 
<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Sweet alert -->
<script src="<c:url value="/style/js/others/inspinia/plugins/sweetalert/sweetalert.min.js" />"></script>

 <!-- Jquery Validate -->
 <script src="<c:url value="/style/js/others/inspinia/plugins/validate/jquery.validate.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.js" />"></script>
<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-24-dm-trangthai.js" />"></script>
