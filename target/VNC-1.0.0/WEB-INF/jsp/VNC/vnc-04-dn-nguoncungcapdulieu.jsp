<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-04-dn-nguoncungcapdulieu.css' />" rel="stylesheet">

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

 <!-- iCheck -->
<script src="<c:url value="/style/js/others/inspinia/plugins/iCheck/icheck.min.js" />"></script>
 	
<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Jquery Validate -->
 <script src="<c:url value="/style/js/others/inspinia/plugins/validate/jquery.validate.min.js" />"></script>
 
<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-04-dn-nguoncungcapdulieu.js" />"></script>


<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px ">
	<div class="col-lg-10">
		<h2 class="text-success">Danh Sách Đơn Vị</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right tooltip-demo">
		<button type="submit" class="btn btn-w-m btn-success"
			data-toggle="modal" data-target="#vnc04-tm-donvi">
			<div data-toggle="tooltip" data-placement="left" title="Thêm mới đơn vị"><i class="fa fa-file"></i> Thêm mới</div>
		</button>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
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
											title="Tìm kiếm đơn vị theo tên và địa chỉ">
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
		<div class="ibox-title blue-div">
			<h3>Danh Sách Đơn Vị</h3>
		</div>
		<div class=" form-group">
			<div class="ibox-content">
				<div class="row">
					<div class="table-responsive col-lg-12">
						<table id="vnc04-table" class="table table-striped table-bordered">
							<thead >
								<tr class="text-success">
									<th class="text-center">Tên đơn vị</th>
									<th class="text-center">Địa chỉ</th>
									<th class="text-center">Số điện thoại</th>
									<th class="text-center">Ngày tạo</th>
									<th class="text-center">Người sửa</th>
									<th class="text-center">Bộ chỉ tiêu</th>
									<th class="text-center">Người dùng</th>
									<th class="text-center">Phòng ban</th>
								</tr>
							</thead>
							<tbody>
								<tr class="tooltip-demo">
									<td data-toggle="tooltip" data-placement="top"
												title="Xem và cập nhật thông tin đơn vị" ><a data-toggle="modal" data-target="#vnc04-tm-donvi"><span class="text-success">Sở công thương</span></a></td>
									<td>333/22 Đường 3/2 Phường 12,Quận 10</td>
									<td>265645814</td>
									<td>22/11/201</td>
									<td>Trần Văn A</td>
									<td class="text-center"><a
										href="./vnc-01-dn-nhomchitieu.jsp"><button
												type="button" data-toggle="tooltip" data-placement="top"
												title="Xem bộ chỉ tiêu của đơn vị">
												<i class="fa fa-list"></i>
											</button></a></td>
									<td class="text-center">
										<button type="button" data-toggle="modal"
											data-target="#vnc04-ds-nhanvien">
											<i class="fa fa-user" data-toggle="tooltip"
												data-placement="top"
												title="Xem danh sách nhân viên của đơn vị"></i>
										</button>
									</td>
									<td class="text-center"><a
										href="./vnc-14-dn-nguoncungcapdulieudangvanban.jsp"><button
												type="button" data-toggle="tooltip" data-placement="top"
												title="Xem danh sách phòng ban của đơn vị">
												<i class="fa fa-users"></i>
											</button></a></td>
								</tr>
								<tr class="tooltip-demo">
									<td data-toggle="tooltip" data-placement="top"
												title="Xem và cập nhật thông tin đơn vị"><a data-toggle="modal" data-target="#vnc04-tm-donvi"><span class="text-success">Sở tài nguyên và môi trường</span></a></td>
									<td>333/22 Đường 3/2 Phường 12,Quận 10</td>
									<td>265645814</td>
									<td>22/11/201</td>
									<td>Trần Văn A</td>
									<td class="text-center"><a
										href="./vnc-01-dn-nhomchitieu.jsp"><button
												type="button" data-toggle="tooltip" data-placement="top"
												title="Xem bộ chỉ tiêu của đơn vị">
												<i class="fa fa-list"></i>
											</button></a></td>
									<td class="text-center">
										<button type="button" data-toggle="modal"
											data-target="#vnc04-ds-nhanvien">
											<i class="fa fa-user" data-toggle="tooltip"
												data-placement="top"
												title="Xem danh sách nhân viên của đơn vị"></i>
										</button>
									</td>
									<td class="text-center"><a
										href="./vnc-14-dn-nguoncungcapdulieudangvanban.jsp"><button
												type="button" data-toggle="tooltip" data-placement="top"
												title="Xem danh sách phòng ban của đơn vị">
												<i class="fa fa-users"></i>
											</button></a></td>
								</tr>
							</tbody>
						</table>
						<div class="modal inmodal " id="vnc04-ds-nhanvien"
							tabindex="-1" role="dialog" aria-hidden="true">
							<%@ include file="../VNC/vnc04-ds-nhanvien-modal.jsp"%>
						</div>
						<div class="modal inmodal " id="vnc04-tm-donvi" tabindex="-1"
							role="dialog" aria-hidden="true">
							<%@ include file="../VNC/vnc04-tm-donvi-modal.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->