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

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-18-tk-theochitieutukhoa.css' />" rel="stylesheet">

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
<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-18-tk-theochitieutukhoa.js" />"></script>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px tooltip-demo">
	<div class="col-lg-10">
		<h2 class="text-success">Danh Sách Báo Cáo Ngành</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right ">
		<a href="./vnc-11-tx-solieubaocao.jsp"><button type="submit"
				class="btn btn-w-m btn-success">
				<div data-toggle="tooltip" data-placement="left"
					title="Thêm mới báo cáo ngành">
					<i class="fa fa-file"></i> Thêm mới
				</div>
			</button>
		</a>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px tooltip-demo">
	<div class="col-lg-12 padding-bottom-10px">
		<div class="ibox-title green-div">
			<h3>Tra Cứu</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content col-lg-12">
				<form id="vnc18-tracuu-form">
					<div class="row">
						<div class="form-group">
							<div class="col-lg-2">
								<label>Từ Khóa</label> <input type="text"
									class="form-control m-b">
							</div>

							<div class="col-lg-2">

								<label>Trạng Thái</label> <select class="form-control m-b"
									name="account">
									<option>-- Trạng Thái --</option>
									<option>Đang sử dụng</option>
									<option>Ngưng sử dụng</option>
									<option>Đang xem xét</option>
								</select>
							</div>
							<div class="col-lg-2">
								<label>Năm báo cáo</label> <select class="form-control m-b"
									name="account">
									<option>2016</option>
									<option>2015</option>
									<option>2014</option>
									<option>2013</option>
								</select>
							</div>
							<div class="col-lg-2">
								<label>Kỳ báo cáo</label> <select class="form-control m-b"
									name="account">
									<option>-- Kỳ Báo Cáo --</option>
									<option>option 2</option>
									<option>option 3</option>
									<option>option 4</option>
								</select>
							</div>
							<div class="col-lg-2">
								<label>&nbsp;</label> <select class="form-control m-b"
									name="account">
									<option>Tất Cả</option>
									<option>option 2</option>
									<option>option 3</option>
									<option>option 4</option>
								</select>
							</div>
							<div class="col-lg-1">
								<label>&nbsp;</label>
								<button type="submit" data-toggle="tooltip"
									data-placement="top" title="Tìm kiếm theo các tiêu chí"
									class="btn btn-w-m btn-success">
									<i class="fa fa-search"></i> Tìm Kiếm
								</button>
							</div>
							<div class="col-lg-1"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="col-lg-12">
		<div class="">
			<div class="ibox-title blue-div">
				<h3>Danh Sách Báo Cáo</h3>
			</div>
			<div class=" ibox-content">
				<div class="form-group ">
					<div class="row">
						<div class="table-responsive col-lg-12">
							<table id="vnc18-table"
								class="table table-striped table-bordered tooltip-demo">
								<thead>
									<tr class="text-success">

										<th>Số hiệu</th>
										<th>Tên Báo Cáo</th>
										<th>Kỳ Báo Cáo</th>
										<th>Năm</th>
										<th>Ngày Sửa</th>
										<th>Người Sửa</th>
										<th class="text-center" data-toggle="tooltip" data-placement="top"
											title="Trạng thái báo cáo đang có">Trạng Thái</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Số Hiệu 1</td>
										<td><a href="./vnc-10-tt-chitietbaocao.jsp" data-toggle="tooltip" data-placement="top"
											title="Nhấp để chỉnh sửa báo cáo" > BáoCáo trưng thu</a></td>
										<td>Kỳ 1</td>
										<td>2012</td>
										<td>23/11/2012</td>
										<td>Nguyễn Văn Tài Anh</td>
										<td><span class="text-info"> <i
												class="fa fa-circle" aria-hidden="true"></i> Trưởng phòng
												đã duyệt
										</span></td>
									</tr>

									<tr>
										<td>Số Hiệu 1</td>
										<td><a href="./vnc-10-tt-chitietbaocao.jsp" data-toggle="tooltip" data-placement="top"
											title="Nhấp để chỉnh sửa báo cáo" > BáoCáo trưng thu</a></td>
										<td>Kỳ 1</td>
										<td>2012</td>
										<td>23/11/2012</td>
										<td>Nguyễn Văn Tài Anh</td>
										<td><span class="text-success"> <i
												class="fa fa-circle" aria-hidden="true"></i> Đã Gửi
										</span></td>
									</tr>
									<tr>
										<td>Số Hiệu 1</td>
										<td><a href="./vnc-10-tt-chitietbaocao.jsp" data-toggle="tooltip" data-placement="top"
											title="Nhấp để chỉnh sửa báo cáo" > BáoCáo trưng thu</a></td>
										<td>Kỳ 1</td>
										<td>2012</td>
										<td>23/11/2012</td>
										<td>Nguyễn Văn Tài Anh</td>
										<td><span class="text-success"> 
											<i class="fa fa-circle" aria-hidden="true"></i> Đã Gửi
										</span>
										</td>
									</tr>
									<tr>
										<td>Số Hiệu 1</td>
										<td><a href="./vnc-10-tt-chitietbaocao.jsp" data-toggle="tooltip" data-placement="top"
											title="Nhấp để chỉnh sửa báo cáo" > BáoCáo trưng thu</a></td>
										<td>Kỳ 1</td>
										<td>2012</td>
										<td>23/11/2012</td>
										<td>Nguyễn Văn Tài Anh</td>
										<td><span class="text-success"> <i
												class="fa fa-circle" aria-hidden="true"></i> Đã Gửi
										</span></td>
									</tr>
									<tr>
										<td>Số Hiệu 1</td>
										<td><a href="./vnc-10-tt-chitietbaocao.jsp" data-toggle="tooltip" data-placement="top"
											title="Nhấp để chỉnh sửa báo cáo" > BáoCáo trưng thu</a></td>
										<td>Kỳ 1</td>
										<td>2012</td>
										<td>23/11/2012</td>
										<td>Nguyễn Văn Tài Anh</td>
										<td><span class="text-info"> <i
												class="fa fa-circle" aria-hidden="true"></i> Đang Soạn
										</span></td>
									</tr>
									<tr>
										<td>Số Hiệu 1</td>
										<td><a href="./vnc-10-tt-chitietbaocao.jsp" data-toggle="tooltip" data-placement="top"
											title="Nhấp để chỉnh sửa báo cáo" > BáoCáo trưng thu</a></td>
										<td>Kỳ 1</td>
										<td>2012</td>
										<td>23/11/2012</td>
										<td>Nguyễn Văn Tài Anh</td>
										<td><span class="text-success"> <i
												class="fa fa-circle" aria-hidden="true"></i> Đã Gửi
										</span></td>
									</tr>
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