<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->

<title>Demo Viện nghiên cứu</title>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">

<!-- I check -->
<link href="<c:url value='/style/css/others/inspinia/plugins/iCheck/custom.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- Date picker -->
<link href="<c:url value='/style/css/others/inspinia/plugins/datapicker/datepicker3.css' />" rel="stylesheet">

<!-- Checkbox -->
<link href="<c:url value='/style/css/others/inspinia/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css' />" rel="stylesheet">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-07-ql-quytrinhluanchuyenbaocao.css' />" rel="stylesheet">

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

<!-- Data picker -->
<script src="<c:url value="/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js" />"></script>

<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-07-ql-quytrinhluanchuyenbaocao.js" />"></script>

<!-- A PART CONTENT -->

<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px">
	<div class="col-lg-10">
		<h2 class="text-success">Thêm mới người dùng</h2>
	</div>
	
	<div class="col-lg-2"></div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-12">
		<div class="ibox-title green-div">
			<h3>Thông Tin Người Dùng</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content">
				<div class="row">
					<form id="vnc07-form">
						<div class="form-group">
							<div class="col-lg-6">
								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Họ Và Tên</label>

									<div class="col-sm-8">
										<input type="text" class="form-control">
									</div>
								</div>

								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Tên Đăng Nhập</label>

									<div class="col-sm-8">
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Mật Khẩu</label>

									<div class="col-sm-8">
										<input type="password" class="form-control">
									</div>
								</div>
								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Nhập lại mật
										khẩu</label>

									<div class="col-sm-8">
										<input type="password" class="form-control">
									</div>
								</div>
								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Email</label>

									<div class="col-sm-8">
										<input type="email" class="form-control">
									</div>
								</div>
								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Địa Chỉ</label>

									<div class="col-sm-8">
										<input type="text" class="form-control">
									</div>
								</div>

								<div class="form-group padding-bottom-50px"
									id="vnc07-ngaysinh">
									<label class="col-sm-4 control-label"> Ngày Sinh</label>
									<div class="col-sm-8">
										<div class="input-group date">
											<input type="text" class="form-control" value="03/04/2014"><span
												class="input-group-addon"><i
												class="fa fa-calendar"></i></span>
										</div>
									</div>

								</div>

								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label"> Số Điện Thoại</label>

									<div class="col-sm-8">
										<input type="text" class="form-control">
									</div>
								</div>

								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label">Đơn Vị</label>
									<div class="col-sm-8">
										<select class="form-control" name="account">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
										</select>
									</div>
								</div>
								<div class="form-group padding-bottom-50px">
									<label class="col-sm-4 control-label">Phòng Ban</label>
									<div class="col-sm-8">
										<select class="form-control" name="account">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<!-- Vai Tro  -->
								<div class="ibox-title">
									<h3>Vai Trò</h3>
								</div>
								<div class="form-group padding-bottom-0px">
									<div class="ibox-content padding-bottom-0px">

										<div class="table-responsive">
											<table id="vnc07-vaitro-table" class="table table-striped table-bordered">
												<thead>
													<tr class="text-primary">

														<th>
															<div class="i-checks">
																<label> <input id="vnc07-vaitro-checkall" type="checkbox">
																</label>
															</div>
														</th>
														<th>Mã</th>
														<th>Tên</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<div class="i-checks">
																<label> <input  id="vnc07-vaitro-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>1222</td>
														<td>Ten Ma</td>
													</tr>

													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-vaitro-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>1222</td>
														<td>Ten Ma</td>
													</tr>
													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-vaitro-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>1222</td>
														<td>Ten Ma</td>
													</tr>
													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-vaitro-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>1222</td>
														<td>Ten Ma</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>

								<!-- Phụ Trách Báo Cáo -->
								<div class="ibox-title">
									<h3>Phụ Trách Báo Cáo</h3>
								</div>
								<div class="form-group padding-bottom-0px">
									<div class="ibox-content padding-bottom-0px">
										<div class="table-responsive">
											<table id="vnc07-phutrach-table"
												class="table table-striped table-bordered">
												<thead>
													<tr class="text-primary">

														<th>
															<div class="i-checks">
																<label> <input id="vnc07-phutrach-checkall" type="checkbox" value="">
																</label>
															</div>
														</th>
														<th>Tên</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-phutrach-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>Ten Ma</td>
													</tr>

													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-phutrach-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>Ten Ma</td>
													</tr>
													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-phutrach-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>Ten Ma</td>
													</tr>
													<tr>
														<td>
															<div class="i-checks">
																<label> <input id="vnc07-phutrach-checkbox" type="checkbox" value="">
																</label>
															</div>
														</td>
														<td>Ten Ma</td>
													</tr>
													
												</tbody>
											</table>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="col-lg-12">
							<div class="col-lg-8"></div>
							<div class="col-lg-4 text-right">
								<button type="submit" class="btn btn-w-m btn-primary">Lưu</button>
								<button type="cancel" class="btn btn-w-m btn-default">Hủy</button>

							</div>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>

</div>
<!-- THE END A PART CONTENT -->