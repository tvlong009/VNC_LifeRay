<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link href="<c:url value='/style/css/vnc/vnc-03-dn-donvichitieu.css' />" rel="stylesheet">

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

<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-03-dn-donvichitieu.js" />"></script>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px tooltip-demo">
	<div class="col-lg-10">
		<h2 class="text-success">Danh Mục Đơn Vị Tính</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right">
		<button type="submit" class="btn btn-w-m btn-success"  data-toggle="modal" data-target="#vnc03-tm-donvitinh">
			<div data-toggle="tooltip" data-placement="left"
				title="Thêm mới đơn vị tính">
				<i class="fa fa-file"></i> Thêm mới
			</div>
		</button>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px tooltip-demo">
	<div class="col-lg-12">
		<div class="">
			<div class="ibox-title blue-div">
				<h3>Danh Sách Đơn Vi Tính</h3>
			</div>
			<div class=" ibox-content">
				<div class="form-group ">
					<div class="row">
						<div class="table-responsive col-lg-12">
							<table id="vnc03-table" class="table table-striped table-bordered">
								<thead>
									<tr class="text-success">
										<th class="text-center">STT</th>
										<th class="text-center">Tên đơn vị tính</th>
										<th class="text-center">Ngày Tạo</th>
										<th class="text-center">Ngày Sửa</th>
										<th class="text-center">Trạng Thái</th>
										<th class="text-center">Thao Tác</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">1</td>
										<td class="text-center">!</td>
										<td class="text-center">21/12/2012</td>
										<td class="text-center">22/12/2012</td>
										<td class="text-center">Áp Dụng</td>
										<td class="text-center">
											<button type="button" data-toggle="modal" data-target="#vnc03-tm-donvitinh">
											 	<i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Chỉnh sửa đơn vị tính" ></i>
											</button>
											<button type="button" class="delete_confirm">
												<i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="Xóa đơn vị tính"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td class="text-center">2</td>
										<td class="text-center">@</td>
										<td class="text-center">21/12/2012</td>
										<td class="text-center">22/12/2012</td>
										<td class="text-center">Áp Dụng</td>
										<td class="text-center">
											<button type="button" data-toggle="modal" data-target="#vnc03-tm-donvitinh">
												 <i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Chỉnh sửa đơn vị tính" ></i>
											</button>
											<button type="button" class="delete_confirm" >
												<i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="Xóa đơn vị tính"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="modal inmodal " id="vnc03-tm-donvitinh"
							tabindex="-1" role="dialog" aria-hidden="true">
							<%@ include file="../VNC/vnc03-tm-donvitinh-modal.jsp"%>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->