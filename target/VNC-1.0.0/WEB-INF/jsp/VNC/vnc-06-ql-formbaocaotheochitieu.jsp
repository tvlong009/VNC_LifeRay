<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
<title>Demo Viện nghiên cứu</title>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">

<!-- FooTable -->
<link href="<c:url value='/style/css/others/inspinia/plugins/footable/footable.core.css'/>" rel="stylesheet">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">

<!-- I check -->
<link href="<c:url value='/style/css/others/inspinia/plugins/iCheck/custom.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- Tree Grid -->
<link href="<c:url value='/style/css/others/treegrid/jquery.treegrid.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-06-ql-formbaocaotheochitieu.css' />" rel="stylesheet">

<!-- JS -->
<!-- Main JS -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

<!-- iCheck -->
<script src="<c:url value="/style/js/others/inspinia/plugins/iCheck/icheck.min.js" />"></script>
<!-- FooTable -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/footable/footable.all.min.js' />"></script>

<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Tree grid -->

<script type="text/javascript" src="<c:url value='/style/js/others/treegrid/jquery.treegrid.js' />"></script>

<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-06-ql-formbaocaotheochitieu.js" />"></script>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px">
	<div class="col-lg-10">
		<h2 class="text-success">Thêm Mới Biểu Mẫu</h2>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-12">
		<div class="ibox-title green-div">
			<h3>Thông Tin Biểu Mẫu</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="form-group">
							<div class="text-primary">
								<strong>TÌNH HÌNH SẢn XUÂT CÔNG NGHIỆP VÀ HOẠT ĐỘNG
									THƯƠNG MẠI THÁNG 7 NĂM 2016</strong>
							</div>
							<div class="text-primary">So lieu 122333</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-12">
		<div class="ibox-title orange-div">
			<h3>Chọn chỉ tiêu</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content">
				<div class="row">
					<form>
						<div class="table-responsive overflowhidden">
							<table id="vnc06-treetable"
								class="table table-striped table-bordered">
								<thead class="text-success">
									<tr>
										<th width="5%"></th>
										<th width="70%">Chỉ Tiêu</th>
										<th width="10%">Đơn vị tính</th>
										<th width="15%" class="text-center">Không bắt buộc</th>
									</tr>
								</thead>
								<tbody>
									<tr class="treegrid-1">
										<td class="text-center"><input type="checkbox"
											class="i-checks vnc06-checkall" name="input[]"></td>
										<td>GTSX Thủy Sản Nông Lâm</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>
									<tr class="treegrid-2 treegrid-parent-1">
										<td class="text-center"><input name="child_treegrid-1"
											type="checkbox" class="i-checks" name="input[]"></td>
										<td>1. Thủy Sản</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>

									<tr class="treegrid-3 treegrid-parent-1">
										<td class="text-center"><input name="child_treegrid-1"
											type="checkbox" class="i-checks " name="input[]"></td>
										<td>2. Nông Nghiệp</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>
									<tr class="treegrid-4 treegrid-parent-1">
										<td class="text-center"><input name="child_treegrid-1"
											type="checkbox" class="i-checks " name="input[]"></td>
										<td>3. Lâm Nghiệp</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>
									<tr class="treegrid-5">
										<td class="text-center"><input type="checkbox"
											class="i-checks vnc06-checkall" name="input[]"></td>
										<td>II.SẢN PHẨM SẢN XUẤT CHỦ YẾU</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>

									</tr>
									<tr class="treegrid-6 treegrid-parent-5">
										<td class="text-center"><input name="child_treegrid-5"
											type="checkbox" class="i-checks" name="input[]"></td>
										<td>1. Thủy Sản</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks " name="input[]"></td>
									</tr>
									<tr class="treegrid-7  treegrid-parent-5">
										<td class="text-center"><input name="child_treegrid-5"
											type="checkbox" class="i-checks vnc06-checkall"
											name="input[]"></td>
										<td>2. Nông Nghiệp</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>
									<tr class="treegrid-8  treegrid-parent-7">
										<td class="text-center"><input name="child_treegrid-7"
											type="checkbox" class="i-checks" name="input[]"></td>
										<td>a. Trồng Trọt</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>
									<tr class="treegrid-9  treegrid-parent-5">
										<td class="text-center"><input name="child_treegrid-5"
											type="checkbox" class="i-checks " name="input[]"></td>
										<td>3. Lâm Nghiệp</td>
										<td>Triệu Đồng</td>
										<td class="text-center"><input type="checkbox"
											class="i-checks" name="input[]"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="col-lg-12">
							<div class="col-lg-8"></div>
							<div class="col-lg-4 text-right">
								<button type="button" class="btn btn-w-m btn-default">Hủy</button>
								<button type="button" class="btn btn-w-m btn-primary">Lưu</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->