<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>



<div class="modal-dialog modal-md">
	<div class="col-lg-12 modal-content white-bg">
		<h2 class="text-success" id="headerModal"></h2>
		<div class=" ibox-content">
			<form method="post" id="vnc24-modal-form" class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-3 control-label label-left">Mã trạng thái</label>
					<label class="col-sm-9 control-label label-left"><input type="text" class="form-control" name="maTrangThai"></label>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label label-left">Tên trạng thái</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="tenTrangThai">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label label-left">Ngày tạo</label>
					<div class="col-sm-9" id="vnc24-updatedate">
						<div class="input-group date">
							<input name="createDate" type="text" class="form-control date-picker"><span
								class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label label-left">Ngày sửa</label>
					<div class="col-sm-9" id="vnc24-createdate">
						<div class="input-group date">
							<input name="updateDate" type="text" class="form-control date-picker"><span
								class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">Hủy
						bỏ</button>
					<button type="submit" class="btn btn-primary" id="trangThaiButton">Lưu</button>
				</div>
			</form>
		</div>
	</div>
</div>