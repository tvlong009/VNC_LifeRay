<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->

<!-- Date picker -->
<link href="<c:url value='/style/css/others/inspinia/plugins/datapicker/datepicker3.css' />" rel="stylesheet">

<title>Demo Viện nghiên cứu</title>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">

 <!-- Sweet Alert -->
<link href="<c:url value='/style/css/others/inspinia/plugins/sweetalert/sweetalert.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-09-ht-nhacnhocacdonvibaocao.css' />" rel="stylesheet">

<!-- JS -->
<!-- Main JS -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Data picker -->
<script src="<c:url value="/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js" />"></script>
<script  charset="UTF-8" src="<c:url value="/style/js/others/datepicker/bootstrap-datepicker.vi.js" />"></script>
<!-- Jquery Validate -->
<script src="<c:url value="/style/js/others/inspinia/plugins/validate/jquery.validate.min.js" />"></script>
<!-- Sweet alert -->
 <script src="<c:url value="/style/js/others/inspinia/plugins/sweetalert/sweetalert.min.js" />"></script>
<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-09-ht-quytrinhluanchuyenbaocao.js" />"></script>


<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px tooltip-demo">
	<div class="col-lg-10">
		<h2 class="text-success">Hệ Thống Thông Báo</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right">
		<button type="submit" data-toggle="modal" data-target="#vnc09-tm-thongbao" class="btn btn-w-m btn-success">
			<div data-toggle="tooltip" data-placement="left" title="Thêm mới thông báo" ><i class="fa fa-file"></i> Thêm mới</div>
		</button>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px tooltip-demo">
	<div class="col-lg-12">
		<div class="ibox-title blue-div">
			<h3>Hệ Thống Thông Báo</h3>
		</div>
		<div class=" ibox-content">
			<div class="form-group ">
				<div class="row">
					<div class="table-responsive col-lg-12">
						<table id="vnc09-table"
							class="table table-striped table-bordered">
							<thead>
								<tr class="text-success">
									<th>Số hiệu</th>
									<th>Tên Thông Báo</th>
									<th>File đính kèm</th>
									<th>Đơn vị gửi</th>
									<th>Ngày tạo</th>
									<th>Người sửa</th>
									<th>Trạng thái</th>
									<th class="text-center">Thao Tác</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Số Hiệu 1</td>
									<td><a data-toggle="modal" data-target="#vnc09-tm-thongbao">Biểu mẫu trưng thu</a></td>
									<td>Đơn vị trực thuộc</td>
									<td>Kỳ 1</td>
									<td>22/12/2012</td>
									<td>Trần THị B</td>
									<td>Trang thai</td>
									<td class="text-center">
										<button data-toggle="modal" data-target="#vnc09-tm-thongbao" type="button">
											<i data-toggle="tooltip" data-placement="top" title="Chỉnh sửa thông báo"class="fa fa-edit"></i>
										</button>
										<button  type="button" class="delete_confirm">
											 <i data-toggle="tooltip" data-placement="top" title="Xóa thông báo"class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td>Số Hiệu 2</td>
									<td><a data-toggle="modal" data-target="#vnc09-tm-thongbao">Biểu mẫu trưng thu</a></td>
									<td>Đơn vị trực thuộc</td>
									<td>Kỳ 1</td>
									<td>22/12/2012</td>
									<td>Trần THị B</td>
									<td>Trang thai</td>
									<td class="text-center">
										<button data-toggle="modal" data-target="#vnc09-tm-thongbao"  type="button">
											 <i data-toggle="tooltip" data-placement="top" title="Chỉnh sửa thông báo" class="fa fa-edit"></i>
										</button>
										<button type="button" class="delete_confirm">
										<i data-toggle="tooltip" data-placement="top" title="Xóa thông báo" class="fa fa-trash"></i></a>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="modal inmodal " id="vnc09-tm-thongbao"
							tabindex="-1" role="dialog" aria-hidden="true">
							<%@ include file="../VNC/vnc09-tm-thongbao-modal.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- THE END A PART CONTENT -->