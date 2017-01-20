<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
<title>Demo Viện nghiên cứu</title>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- I check -->
<link href="<c:url value='/style/css/others/inspinia/plugins/iCheck/custom.css' />" rel="stylesheet">

<!-- Date picker -->
<link href="<c:url value='/style/css/others/inspinia/plugins/datapicker/datepicker3.css' />" rel="stylesheet">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">

<!-- I check -->
<link href="<c:url value='/style/css/others/inspinia/plugins/iCheck/custom.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- Sweet Alert -->
<link href="<c:url value='/style/css/others/inspinia/plugins/sweetalert/sweetalert.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-14-dn-nguoncungcapdulieudangvanban.css' />" rel="stylesheet">

<!-- JS -->
	<!-- Main JS -->
	<script
		src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
	<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

	<!-- Custom and plugin javascript -->
	<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
	<script
		src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

<!-- iCheck -->
<script src="<c:url value="/style/js/others/inspinia/plugins/iCheck/icheck.min.js" />"></script>

<!-- Data picker -->
<script src="<c:url value="/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js" />"></script>
<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Jquery Validate -->
<script src="<c:url value="/style/js/others/inspinia/plugins/validate/jquery.validate.min.js" />"></script>

<!-- Sweet alert -->
<script src="<c:url value="/style/js/others/inspinia/plugins/sweetalert/sweetalert.min.js" />"></script>

<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-14-dn-nguoncungcapdulieudangvanban.js" />"></script>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px tooltip-demo">
	<div class="col-lg-10">
		<h2 class="text-success">Danh Sách Phòng Ban</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right" >
		<button type="submit"  class="btn btn-w-m btn-success" data-toggle="modal" data-target="#vnc14-tm-phongban">
			<div data-toggle="tooltip" data-placement="left"
												title="Thêm mới phòng ban"><i class="fa fa-file" ></i> Thêm mới</div>
		</button>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-12 padding-bottom-10px">
		<div class="ibox-title green-div">
			<h3>Tra Cứu</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content col-lg-12 tooltip-demo">
				<form id="vnc05-tracuu-form">
					<div class="row">
						<div class="form-group">
							<div class="col-lg-1">
								<label>Đơn Vị</label>
							</div>
							<div class="col-lg-3 text-center">
								<div class="form-group " data-toggle="tooltip" data-placement="right" title="Chọn đơn vị tra cưú" >
									<select class="form-control m-b" name="vnc14-donvi">
										<option > -- Chọn đơn vị -- </option>
										<option>Sở Công Thương</option>
										<option>Sở Ngoại Vụ</option>
										<option>Sở Tài Nguyên Và Môi Trường</option>
										<option>Sở Tài Chính</option>
									</select>
								</div>
							</div>
							<div class="col-lg-8"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="col-lg-12">
			<div class="ibox-title blue-div">
				<h3>Danh Sách Đơn Vị</h3>
			</div>
			<div class=" ibox-content">
				<div class="form-group ">
					<div class="row">
						<div class="table-responsive col-lg-12">
							<table id="vnc14-table" class="table table-striped tooltip-demo table-bordered">
								<thead>
									<tr class="text-success">
										<th>STT</th>
										<th>Tên Phòng Ban</th>
										<th>Số Điện Thoại</th>
										<th>Điện Thoại Nội Bộ</th>
										<th class="text-center">Cho Phép Kích Hoạt</th>
										<th class="text-center">Thao Tác</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td data-toggle="tooltip" data-placement="top" title="Xem thông tin phòng ban"><a data-toggle="modal" data-target="#vnc14-tm-phongban" >Phòng Công Nghệ Thông Tin</a></td>
										<td>-</td>
										<td>104</td>

										<td class="text-center">
											<div class="i-checks" data-toggle="tooltip" data-placement="top" title="Tích chọn hoặc bỏ chọn trạng thái kích hoạt cho phép sử dụng">
												<label> <input
													type="checkbox">
												</label>
											</div>
										</td>
										<td class="text-center">
											<button type="button" data-toggle="modal" data-target="#vnc14-tm-phongban">
												<a href="#" data-toggle="tooltip" data-placement="top" title="Cập nhật phòng ban"> <i class="fa fa-edit"></i></a>
											</button>
											<button type="button" class="delete_confirm" data-toggle="tooltip" data-placement="top" title="Xóa phòng ban">
												<i class="fa fa-trash"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td data-toggle="tooltip" data-placement="top" title="Xem thông tin phòng ban"><a data-toggle="modal" data-target="#vnc14-tm-phongban">Phòng Kinh Tế Ngành</a></td>
										<td>-</td>
										<td>104</td>

										<td class="text-center">
											<div class="i-checks" data-toggle="tooltip" data-placement="top" title="Tích chọn hoặc bỏ chọn trạng thái kích hoạt cho phép sử dụng">
												<label> <input
													type="checkbox">
												</label>
											</div>
										</td>
										<td class="text-center">
											<button type="button" data-toggle="modal" data-target="#vnc14-tm-phongban">
												<a href="#" data-toggle="tooltip" data-placement="top" title="Cập nhật phòng ban"> <i class="fa fa-edit"></i></a>
											</button>
											<button type="button" class="delete_confirm" data-toggle="tooltip" data-placement="top" title="Xóa phòng ban">
												 <i class="fa fa-trash"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						<div class="modal inmodal " id="vnc14-tm-phongban" tabindex="-1" role="dialog" aria-hidden="true">
							<%@ include file="../VNC/vnc14-tm-phongban-modal.jsp"%>
						</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->