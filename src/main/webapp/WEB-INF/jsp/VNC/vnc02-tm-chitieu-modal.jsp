<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div class="modal-dialog modal-lg">
	<div class="col-lg-12 modal-content white-bg">

			<h2 class="text-success">Thêm mới chỉ tiêu</h2>
			
			<div class=" ibox-content">
				<div class="form-group ">
					<div class="row">
						<div class="table-responsive col-lg-12">
						<form method="get" id="vnc02-tm-chitieu" class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label ">Tên chi tieu</label>
								<div class="col-sm-10">
									<input id="tenchitieucon" type="text" class="form-control" name="chitieu">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label ">Tên đơn vị tính</label>
								<div class="col-sm-10">
									<input id="donvitinh_chitieucon" type="text" class="form-control" name="donvitinh">
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">Hủy bỏ</button>
					<button id="themmoichitieu" type="submit" class="btn btn-primary">Lưu</button>
				</div>
			</div>
		
	</div>
</div>