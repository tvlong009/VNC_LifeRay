<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- CSS -->
<title>Demo Viện nghiên cứu</title>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />"rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">

<!-- Tree Grid -->
<link href="<c:url value='/style/css/others/treegrid/jquery.treegrid.css' />" rel="stylesheet">
	
<link href="<c:url value='/style/css/others/contextmenu/jquery.contextMenu.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/contextmenu/jquery.contextMenu.min.css' />" rel="stylesheet">
	
<!-- Sweet Alert -->
 <link href="<c:url value='/style/css/others/inspinia/plugins/sweetalert/sweetalert.css' />" rel="stylesheet">
    
<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-02-dn-chitieu.css' />" rel="stylesheet">

<!-- Main JS -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Tree grid -->
<script type="text/javascript" src="<c:url value='/style/js/others/treegrid/jquery.treegrid.js' />"></script>
	
<!-- contextMenu -->

<script type="text/javascript" src="<c:url value='/style/js/others/contextmenu/jquery.contextMenu.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/contextmenu/jquery.ui.position.min.js' />"></script>
	
<!-- Sweet alert -->
<script src="<c:url value="/style/js/others/inspinia/plugins/sweetalert/sweetalert.min.js" />"></script>
<!-- MyJS-->
<script src="<c:url value="/style/js/vnc/vnc-02-dn-chitieu.js" />"></script>


<!-- A PART CONTENT -->

<div class="wrapper wrapper-content row custome-bg paddingtop-0px padding-bottom-20px">
	<div class="col-lg-10">
		<h2 class="text-success">Chỉnh sửa bộ chỉ tiêu</h2>
	</div>
	<br />
	<div class="col-lg-2 text-right"></div>
</div>
<div class="wrapper wrapper-content row custome-bg paddingtop-0px">
	<div class="col-lg-12">
		<div class="ibox-title">
			<h5>Đơn vị sở văn hóa thể thao du lịch</h5>
		</div>
	</div>

	<div class="col-lg-12">
		<div class="ibox-title orange-div">
			<h3>Danh Sách Chỉ tiêu</h3>
		</div>
		<div class=" form-group">
			<div class="ibox-content">
				<div class="row">
					<div class="col-lg-12 text-left padding-bottom-10px">
						<button type="button" class="btn btn-group btn-outline btn-success">
								<i class="fa fa-plus" aria-hidden="true"></i> Thêm Mới Chỉ Tiêu Gốc
						</button>
					</div>
					<form>
						<div class="table-responsive col-lg-12">
							<table id="vnc02-treetable" class="table table-striped table-hover table-bordered">
								<thead class="text-success">
									<tr>
										<th width="90%">Chỉ Tiêu</th>
										<th width="10%">Đơn vị Tính</th>
									</tr>
								</thead>
							</table>
						</div>
						<div class="col-lg-12">
							<div class="col-lg-8"></div>
							<div class="col-lg-4 text-right">
								<button type="cancel" class="btn btn-w-m btn-default">Hủy</button>
								<button type="submit" class="btn btn-w-m btn-primary">Lưu</button>
							</div>
						</div>
					</form>
				</div>

				<div class="modal inmodal " id="vnc02-tm-chitieu" style="display: none;" tabindex="-1" role="dialog" aria-hidden="true">
			   		<%@ include file="../VNC/vnc02-tm-chitieu-modal.jsp"%>
			   	</div>
			   	
			   	<div class="modal inmodal " id="vnc02-tm-chitieucon" style="display: none;" tabindex="-1" role="dialog" aria-hidden="true">
			   		<%@ include file="../VNC/vnc02-tm-chitieucon-modal.jsp"%>
			   	</div>
			</div>
		</div>
	</div>
</div>
<!-- THE END A PART CONTENT -->