<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<!-- I check -->
<link href="<c:url value='/style/css/others/inspinia/plugins/iCheck/custom.css' />" rel="stylesheet">

<!-- Sweet Alert -->
<link href="<c:url value='/style/css/others/inspinia/plugins/sweetalert/sweetalert.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-05-dn-thoidiemcungcapdulieu.css' />" rel="stylesheet">

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

<!-- Jquery Validate -->
<script src="<c:url value="/style/js/others/inspinia/plugins/validate/jquery.validate.min.js" />"></script>
<!-- iCheck -->
<script	src="<c:url value="/style/js/others/inspinia/plugins/iCheck/icheck.min.js" />"></script>
<!-- Sweet alert -->
<script	src="<c:url value="/style/js/others/inspinia/plugins/sweetalert/sweetalert.min.js" />"></script>
<!-- MyJS-->
<script	src="<c:url value="/style/js/vnc/vnc-05-dn-thoidiemcungcapdulieu.js" />"></script>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-10">
		<h2 class="text-success">Danh Sách Biểu Mẫu Báo Cáo</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right">
		<button type="button" class="btn btn-success" data-toggle="modal" id="vnc-05-themmoi" typeaction="add" onclick="clickShowModel(this)">
			<i class="fa fa-file"></i> Thêm mới
		</button>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-12 padding-bottom-10px">
		<div class="ibox-title green-div">
			<h3>Tra Cứu</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content col-lg-12">
				<form id="vnc05-tracuu-form">
					<div class="row">
						<div class="col-lg-1">
							<label>Ngày tạo</label>
						</div>
						<div class="col-lg-2">
							<div class="form-group" id="vnc05-ngaytao">
								<div class="input-group date">
									<input name="ngayTao" id="ngaytao" type="text" class="form-control date-picker" data-mask="99/99/9999" placeholder="">
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
								</div>
							</div>
						</div>
						<div class="col-lg-1 text-right">
							<label>Ngày đến</label>
						</div>
						<div class="col-lg-2">
							<div class="form-group" id="vnc05-ngayden">
								<div class="input-group date">
									<input name="ngayDen" id="ngayden" type="text" class="form-control date-picker" data-mask="99/99/9999" placeholder="">
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
								</div>
							</div>
						</div>
						<div class="col-lg-1 text-right">
							<label> Hiệu lực</label>
						</div>
						<div class="col-lg-2">
							<div class="form-group">
								<select class="form-control m-b" name="account">
									<option>Hiệu Lực</option>
									<option>...</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3"></div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="form-group">
								<label class="col-lg-1 control-label text-primary">Tên biểu mẫu</label>
								<div class="col-lg-2">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-1 control-label text-right">Số hiệu</label>

								<div class="col-lg-2">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-lg-1 text-right">
								<label> Kỳ báo cáo</label>
							</div>
							<div class="col-lg-2">
								<div class="form-group">
									<select class="form-control m-b" name="account">
										<option>Kỳ báo cáo</option>
										<option>...</option>
									</select>
								</div>
							</div>
							<div class="col-lg-3">
								<button type="submit" class="btn btn-w-m btn-success" onclick="timKiemTraCuu()">
									<i class="fa fa-search"></i> Tìm kiếm
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="col-lg-12">
		<div class="ibox-title blue-div">
			<h3>Danh Sách Biểu Mẫu Báo Cáo</h3>
		</div>
		<div class="ibox-content">
			<div class="form-group ">
				<div class="row">
					<div class="table-responsive col-lg-12">
						<table id="vnc05-table" class="table table-striped table-bordered">
							<thead>
								<tr class="text-success mid-text">
									<th>Số hiệu</th>
									<th>Tên biểu mẫu</th>
									<th>Đơn vị</th>
									<th>Kỳ Báo Cáo</th>
									<th>Ngày Tạo</th>
									<th>Người Sửa</th>
									<th>Hiệu Lực</th>
									<th class="text-center">Thao Tác</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="mid-text">SCT01</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)"
												 data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td class="mid-text">SCT02</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)" data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td class="mid-text">SCT03</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)" data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td class="mid-text">SCT04</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)"
												 data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td class="mid-text">SCT05</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)"
												 data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td class="mid-text">SCT06</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)"
												 data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
								<tr>
									<td class="mid-text">SCT07</td>
									<td class="mid-text">Biểu mẫu trưng thu</td>
									<td class="mid-text">Đơn vị trực thuộc</td>
									<td class="mid-text">Kỳ 1</td>
									<td class="mid-text">22/12/2012</td>
									<td class="mid-text">Super Admin</td>
									<td class="mid-text"><label class="checkbox-inline"><input  class="i-checks" type="checkbox" value="">&nbsp; Áp dụng</label></td>
									<td class="text-center mid-text tooltip-demo">
										<button type="button" typeaction="update" onclick="clickShowModel(this)"
												 data-toggle="tooltip" data-placement="top" title="Cập nhật biểu mẫu">
											<i class="fa fa-edit" data-toggle="modal"></i>
										</button>
										<button type="button" class="ktXoa" data-toggle="tooltip" data-placement="top" title="Xóa biểu mẫu">
											<i class="fa fa-trash"></i>
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->
<div class="modal inmodal" id="vnc-05-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<%@ include file="./vnc05-thoidiemcungcapdulieu-modal.jsp"%>
</div>