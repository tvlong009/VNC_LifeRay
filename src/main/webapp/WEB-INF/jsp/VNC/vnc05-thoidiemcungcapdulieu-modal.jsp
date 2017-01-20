<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div class="modal-dialog modal-lg">
	<div class="col-lg-12 modal-content white-bg">
		<form method="get" id="vnc-05-themmoi-form" class="form-horizontal">
			<h2 class="text-success" id="headerModel"></h2>
			<div class="ibox-content">
				<div class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label label-left">Tiêu đề biểu mẫu</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="tieuDe">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label label-left">Kỳ biểu mẫu</label>
						<div class="col-sm-3">
							<select class="form-control m-b" name="account">
								<option>Tháng</option>
								<option>Quý</option>
								<option>6 Tháng</option>
								<option>9 Tháng</option>
								<option>Năm</option>
								<option>Đột xuất</option>
							</select>
						</div>
						<label class="col-sm-2 control-label">Năm biểu mẫu</label>
						<div class="col-sm-3">
							<select class="form-control m-b" name="account">
								<option>2016</option>
								<option>2015</option>
								<option>2014</option>
								<option>2013</option>
								<option>2012</option>
								<option>2011</option>
								<option>2010</option>
							</select>
						</div>
						<div class="col-sm-2" style="padding-top: 6px">
							<span class="text-success"> <i class="fa fa-circle" aria-hidden="true"></i> Đang soạn</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<div class="tabs-container">
		                        <ul class="nav nav-tabs">
		                            <li class="active"><a data-toggle="tab" href="#tab-1">Bộ chỉ tiêu</a></li>
		                            <li class=""><a data-toggle="tab" href="#tab-2">Cột số liệu</a></li>
		                            <li class=""><a data-toggle="tab" href="#tab-3">Biểu mẫu hoàn chỉnh</a></li>
		                        </ul>
		                        <div class="tab-content">
		                            <div id="tab-1" class="tab-pane active">
		                                <div class="panel-body">
		                                	<div class="form-group">
		                                		<div class="col-sm-4">
		                                			<select class="form-control" name="chiTieu">
														<option value="" disabled selected hidden>Chọn bộ chỉ tiêu</option>
														<option value="1">Báo cáo ước tính GTSX</option>
														<option value="2">Báo cáo ước tính GRDP</option>
														<option value="3">Doanh thu kinh doanh vận tải, kho bãi</option>
														<option value="4">Khối lượng kinh doanh vận tải, kho bãi</option>
														<option value="">...</option>
													</select>
												</div>
												<div class="col-sm-8"></div>
											</div>
											<div class="form-group">
												<div class="table-responsive col-lg-12">
													<table id="vnc05-table" class="table table-striped table-bordered">
														<thead>
															<tr class="text-success">
																<th>Chỉ tiêu</th>
																<th>Chú thích</th>
																<th>Đơn vị tính</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>SCT01</td>
																<td>Biểu mẫu trưng thu</td>
																<td>Đơn vị trực thuộc</td>
															</tr>
															<tr>
																<td>SCT02</td>
																<td>Biểu mẫu trưng thu</td>
																<td>Đơn vị trực thuộc</td>
															</tr>
															<tr>
																<td>SCT03</td>
																<td>Biểu mẫu trưng thu</td>
																<td>Đơn vị trực thuộc</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-9"></div>
												<div class="col-sm-3">
													<button type="button" class="btn btn-success">Lưu thay đổi chỉ tiêu</button>
												</div>
											</div>
		                                </div>
		                            </div>
		                            <div id="tab-2" class="tab-pane">
		                                <div class="panel-body">
		                                	<div class="form-group">
		                                		<label class="col-sm-2 control-label label-left">Loại cột</label>
		                                		<div class="col-sm-4">
		                                			<select class="form-control" name="loaiCot">
														<option value="" disabled selected hidden>Chọn kiểu giá trị</option>
														<option value="1">Chỉ tiêu</option>
														<option value="2">Đơn vị tính</option>
														<option value="3">Loại khác</option>
														<option value="4">Kế hoạch năm</option>
														<option value="5">Kế hoạch năm sau</option>
														<option value="6">...</option>
													</select>
												</div>
		                                		<label class="col-sm-2 control-label">Tên cột</label>
		                                		<div class="col-sm-4">
		                                			<input type="text" class="form-control" name="tenCot">
												</div>
		                                	</div>
		                                	<div class="form-group">
		                                		<label class="col-sm-2 control-label label-left">Chú thích</label>
		                                		<div class="col-sm-4">
		                                			<input type="text" class="form-control" name="chuThich">
												</div>
												<div class="col-sm-2">
													<button type="button" class="btn btn-success" onclick="themCotSoLieu()">Thêm</button>
												</div>
												<div class="col-sm-4"></div>
											</div>
											<div class="form-group">
												<div class="table-responsive col-lg-12">
													<table id="vnc05-table" class="table table-striped table-bordered">
														<thead>
															<tr class="text-success">
																<th>STT</th>
																<th>Cột số liệu</th>
																<th>Loại cột</th>
																<th>Chú thích</th>
																<th>Thao tác</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>SCT01</td>
																<td>Biểu mẫu trưng thu</td>
																<td>Đơn vị trực thuộc</td>
																<td></td>
																<td></td>
															</tr>
															<tr>
																<td>SCT02</td>
																<td>Biểu mẫu trưng thu</td>
																<td>Đơn vị trực thuộc</td>
																<td></td>
																<td></td>
															</tr>
															<tr>
																<td>SCT03</td>
																<td>Biểu mẫu trưng thu</td>
																<td>Đơn vị trực thuộc</td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
	                                </div>
	                                <div id="tab-3" class="tab-pane">
		                                <div class="panel-body">
		                                	
		                                </div>
		                            </div>
	                            </div>
	                        </div>
                    	</div>
                   	</div>
				</div>
				<div class="modal-footer form-group" style="margin-top: 20px">
					<label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="chkHieuLuc"> Có hiệu lực</label>
					&nbsp;
					<button type="button" class="btn btn-white" data-dismiss="modal">Hủy bỏ</button>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</div>
			</div>
		</form>
	</div>
</div>