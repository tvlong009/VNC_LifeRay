<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<div class="modal-dialog modal-lg">
	<div class="col-lg-12 modal-content white-bg">

		<h2 class="text-success">Thông tin chi tiết thông báo</h2>

		<div class=" ibox-content">
			<form method="get" id="vnc09-tm-form" class="form-horizontal">


				<div class="form-group">
					<label class="col-sm-2 control-label ">Số hiệu</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="sohieu">
					</div>
			
					<label class="col-sm-2 control-label ">Tên thông báo</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="tenthongbao">
					</div>
				</div>
				

				<div class="form-group">
					<label class="col-sm-2 control-label ">Đơn vị gửi</label>
					<div class="col-sm-4">

						<select class="form-control m-b" name="donvigui">
							<option>Don vi 1</option>
							<option>Don vi 2</option>
							<option>Don vi 3</option>
							<option>Don vi 4</option>
						</select>

					</div>

					<label class="col-sm-2 control-label"> Ngày tạo</label>
					<div class="col-sm-4" id="vnc09-ngaytao">
						<div class="input-group date">
							<input name="ngaytao" type="text" class="form-control date-picker"><span
								class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label ">Người sửa</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="nguoisua">
					</div>

					<label class="col-sm-2 control-label ">Trạng thái</label>
					<div class="col-sm-4">
						<select class="form-control m-b" name="trangthai">
							<option>-- Trạng Thái --</option>
							<option>Đang sử dụng</option>
							<option>Đang áp dụng</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div id="vnc-09-fileupload" class="col-lg-12">
							<label class="col-sm-2 control-label ">File đính kèm </label>
								<!-- image-preview-filename input [CUT FROM HERE]-->
								<div class=" col-sm-10 input-group image-preview">
									<input type="text" class="form-control image-preview-filename" name="filedinhkem">
									<!-- don't give a name === doesn't send on POST/GET -->
									<span class="input-group-btn"> <!-- image-preview-clear button -->
										<button type="button"
											class="btn btn-default image-preview-clear"
											style="display: none;">
											<span class="glyphicon glyphicon-remove"></span> Clear
										</button> <!-- image-preview-input -->
										<div class="btn btn-default image-preview-input">
											<span class="glyphicon glyphicon-folder-open"></span> <span
												class="image-preview-input-title">Chọn File</span> <input
												type="file" accept="image/png, image/jpeg, image/gif"
												name="input-file-preview" />
											<!-- rename it -->
										</div>
									</span>

								</div>
							
							<div class="col-lg-3"></div>
							<div class="col-lg-3"></div>

							<!-- /input-group image-preview [TO HERE]-->
						
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