<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div class="modal-dialog modal-md">
	<div class="col-lg-12 modal-content white-bg">

		<h2 class="text-success">Thông tin chi tiết đơn vị</h2>
		
		<div class=" ibox-content">
			<form method="get" id="vnc04-tm-form" class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-3 control-label text-left">Tên đơn vị</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="name">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label text-left">Địa chỉ</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="address">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label text-left">Số điện thoại</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="phone">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label"> Ngày tạo</label>
						<div class="col-sm-9" id="vnc04-createdate">
							<div class="input-group date">
								<input name="createDate" type="text" class="form-control date-picker"><span class="input-group-addon"><i
									class="fa fa-calendar"></i></span>
							</div>
						</div>
					
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">Hủy bỏ</button>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</div>
			</form>
		</div>

	</div>
</div>