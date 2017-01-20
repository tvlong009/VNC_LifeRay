<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div class="modal-dialog modal-lg">
	<div class="col-lg-12 modal-content white-bg">
		<form method="get" id="vnc-05-themmoi-form" class="form-horizontal">
			<h2 class="text-success">Thêm mới biểu mẫu cục thống kê</h2>
			<div class="content">
				<div class="ibox-title bdr-thead bdr-blue">
					<h3>THÔNG TIN BIỂU MẪU</h3>
				</div>
				<div class="ibox-content bdr-thead">
					<div class="row">
						<label class="col-sm-2 control-label text-left">Tiêu đề biểu mẫu</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="tieude" id="tieuDe">
						</div>
					</div>
					<div class="row">
						<label class="col-sm-2 control-label">Kỳ biểu mẫu</label>
						<div class="col-sm-4">
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
						<div class="col-sm-4">
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
					</div>
				</div>
			</div>
			<div class="content">
				<div class="ibox-title bdr-thead bdr-orange">
					<h3>NỘI DUNG BIỂU MẪU</h3>
				</div>
				<div class="ibox-content bdr-thead">
					<div class="row">
						
					</div>
				</div>
				<div class="modal-footer">
					<label class="checkbox-inline"> <input  class="i-checks" type="checkbox" value="chkHieuLuc"> Có hiệu lực</label>
					&nbsp;
					<button type="button" class="btn btn-white" data-dismiss="modal">Hủy bỏ</button>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</div>
			</div>
		</form>
	</div>
</div>