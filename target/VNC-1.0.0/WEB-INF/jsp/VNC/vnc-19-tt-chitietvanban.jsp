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

<!-- Editor -->
<link href="<c:url value='/style/css/others/inspinia/plugins/summernote/summernote.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/summernote/summernote-bs3.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- Checkbox -->
<link href="<c:url value='/style/css/others/inspinia/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css' />" rel="stylesheet">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-19-tt-chitietvanban.css' />" rel="stylesheet">

<!-- JS -->
<!-- Main JS -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

<!-- Editor -->
<script src="<c:url value="/style/js/others/inspinia/plugins/summernote/summernote.min.js" />"></script>

<!-- iCheck -->
<script src="<c:url value="/style/js/others/inspinia/plugins/iCheck/icheck.min.js" />"></script>

<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-19-tt-chitietvanban.js" />"></script>

<!-- A PART CONTENT -->
<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px">
	<div class="col-lg-10">
		<h2 class="text-success">Thông tin chi tiết văn bản</h2>
	</div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-12">
		<div class="ibox-title green-div">
			<h3>Báo cáo ngành</h3>
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
		<div class="ibox-title green-div">
			<h3>Nội dung báo cáo</h3>
		</div>
		<div class="form-group">
			<div class="ibox-content">
				<div class="row">
					<div id="vnc-19-fileupload" class="col-lg-12">
						<div class="form-group">
							<div class="col-lg-6">
								<!-- image-preview-filename input [CUT FROM HERE]-->
								<div class="input-group image-preview">
									<input type="text"
										class="form-control image-preview-filename">
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
							</div>
							<div class="col-lg-3"></div>
							<div class="col-lg-3"></div>

							<!-- /input-group image-preview [TO HERE]-->
						</div>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-content no-padding">
								<br /> <label class="text-primary">Nội Dung Nổi Bật</label>

								<div id="vnc19-editor" class="summernote">BÁO CÁO VỀ
									VIỆC HƯỚNG DẪN VÀ THỰC HIỆN TIÊU CHÍ 06 TRONG BỘ TIÊU CHÍ
									QUỐC GIA XÂY DỰNG NÔNG THÔN MỚI Kính gửi: Ban Chỉ đạo Xây
									dựng nông thôn mới Thời gian qua, các địa phương trong cả
									nước tiến hành xây dựng nông thôn mới theo Bộ Tiêu chí quốc
									gia về nông thôn mới ban hành theo Quyết định số 491/QĐ-TTg
									ngày 16 tháng 4 năm 2009 của Thủ tướng Chính phủ. Tại tiêu
									chí 06 “Cơ sở vật chất Văn hóa” quy định: Nhà văn hóa và Khu
									thể thao xã đạt chuẩn của Bộ Văn hóa, Thể thao và Du lịch
									(chỉ tiêu đạt) và Tỷ lệ thôn có Nhà Văn hóa - Khu Thể thao
									thôn đạt quy định của Bộ Văn hóa, Thể thao và Du lịch (chỉ
									tiêu 100%). Bộ Văn hóa, Thể thao và Du lịch báo cáo tình
									hình thực hiện, những khó khăn, vướng mắc gặp phải và giải
									pháp tháo gỡ như sau: I. HƯỚNG DẪN CỦA BỘ VĂN HÓA, THỂ THAO
									VÀ DU LỊCH 1. Ban hành văn bản quy phạm pháp luật: Để hướng
									dẫn các địa phương về nội dung “đạt chuẩn” và “đạt quy định”
									của Bộ Văn hóa, Thể thao và Du lịch đối với các thiết chế
									Nhà văn hóa xã, Khu thể thao xã, Nhà văn hóa-Khu thể thao
									thôn, Bộ Văn hóa, Thể thao và Du lịch đã xây dựng và ban
									hành 02 Thông tư quy định mẫu về tổ chức, hoạt động và tiêu
									chí của Trung tâm Văn hóa - Thể thao xã và Nhà Văn hóa - Khu
									Thể thao thôn (Thông tư số 12/2010/TT-BVHTTDL ngày 22 tháng
									12 năm 2010 quy định mẫu về tổ chức, hoạt động và tiêu chí
									của Trung tâm Văn hóa-Thể thao xã và Thông tư số
									06/2011/TT-BVHTTDLngày 08 tháng 3 năm 2011 quy định mẫu về
									tổ chức, hoạt động và tiêu chí của Nhà văn hóa-Khu thể thao
									thôn), trong đó quy định diện tích đất quy hoạch và quy mô
									xây dựng như sau:</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->