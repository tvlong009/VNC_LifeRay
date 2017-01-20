<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div class="modal-dialog modal-md">
	<div class="col-lg-12 modal-content white-bg">

		<h2 class="text-success">Thông tin chi tiết phòng ban</h2>

		<div class=" ibox-content">
			<form method="get" id="vnc14-tm-form" class="form-horizontal">


				<div class="form-group">
					<label class="col-sm-3 control-label ">Tên phòng ban</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="name">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label ">Số điện thoại</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="phone">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label ">SĐT nội bộ</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="local_phone">
					</div>

					<label class="col-sm-3 control-label ">Kích hoạt</label>
					<div class="col-sm-2">
						<div class="i-checks">
							<label> <input class="form-control" name="kichhoat"
								type="checkbox" value="">
							</label>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">Hủy
						bỏ</button>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</div>
			</form>
		</div>

	</div>
</div>