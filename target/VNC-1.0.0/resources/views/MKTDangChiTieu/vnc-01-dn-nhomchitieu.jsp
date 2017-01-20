<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/style/css/others/inspinia/animate.css" />" rel="stylesheet">
<link href="<c:url value="/style/css/others/inspinia/style.css" />" rel="stylesheet">

<!-- Data Tables -->
<link
	href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />"
	rel="stylesheet">

<!-- Mainly css -->
<link href="<c:url value="/style/css/others/inspinia/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/mycss.css" />" rel="stylesheet">

<title>Danh sách đơn vị cung cấp báo cáo</title>

</head>

<body class="top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<!-- A PART HEADER -->
			<div class="row border-bottom white-bg">
				<%@ include file="/VNC/jsp/VNC/nav/headerTemp.jsp"%>
			</div>
			<!-- THE END A PART HEADER -->

			<!-- A PART CONTENT -->
			<div class="wrapper wrapper-content">
			<div class="mis-thead mis-bdr-blue" style="margin-top: 10px">
				<span class="z-span">
					<span class="z-label">Danh sách bộ chỉ tiêu</span>
				</span>
			</div>
			<div class="ibox">
				<div class="ibox-content" style="padding: 0px !important">
					<table class="table table-striped table-bordered table-hover" id="tableDSCT">
						<thead class="table-thead">
							<tr>
								<th class="row-center">STT</th>
								<th>Đơn vị</th>
								<th>Ngày tạo</th>
								<th>Người sửa</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody class="table-body">
							<tr>
								<td class="row-center">1</td>
								<td>Sở Công thương</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">2</td>
								<td>Sở Tài nguyên và môi trường</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">3</td>
								<td>Sở Nông nghiệp và Phát triển nông thôn</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">4</td>
								<td>Sở Kế hoạch & Đầu tư</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">5</td>
								<td>Sở Giao Thông Vận Tải</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">6</td>
								<td>Sở Xây Dựng</td>
								<td></td>
								<td></td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	  	</div>
			<!-- THE END A PART CONTENT -->

			<!-- A PART FOOTER -->
				<%@ include file="/jsp/VNC/nav/footerTemp.jsp"%>
			<!-- END FOOTER -->
		</div>
	</div>

	<!-- JS -->
	<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.js" />"></script>


<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>
	
	
	<!-- Data Tables -->
			<script type="text/javascript"
				src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
			<script type="text/javascript"
				src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
			<script type="text/javascript"
				src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
			<script type="text/javascript"
				src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>
				
<script type="text/javascript">
	$(document).ready(function() {
		eventTable.initTableTest();
	});

	var eventTable = {
		initTableTest : function() {
			var tableSetting = $('#tableDSCT').DataTable({
				"responsive": true,
		    	"bLengthChange": false,
			    "bFilter": false,
			    "bInfo": false,
			    "bSort": false,	
			    "pageLength": 5,
		        "language": {
		            "paginate": {
		    	          "sFirst": '',
		    	          "previous":		'Trước',
		    	          "sNext":			'Sau',
		    	          "sLast": ''
		    	        },
					 "search": "",
					 "sInfo": "",
					 "sInfoEmpty": false,
					 "zeroRecords": " ",
					 "sInfoFiltered": "",
		    	}
			});
		},
	}
</script>
</body>
</html>
<!-- <body>
	<div id="wrapper">
	  	<div class="wrapper wrapper-content">
			<div class="mis-thead mis-bdr-blue" style="margin-top: 10px">
				<span class="z-span">
					<span class="z-label">Danh sách bộ chỉ tiêu</span>
				</span>
			</div>
			<div class="ibox">
				<div class="ibox-content" style="padding: 0px !important">
					<table class="table table-striped table-bordered table-hover" id="tableDSCT">
						<thead class="table-thead">
							<tr>
								<th class="row-center">STT</th>
								<th>Đơn vị</th>
								<th>Ngày tạo</th>
								<th>Người sửa</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody class="table-body">
							<tr>
								<td class="row-center">1</td>
								<td>Sở Công thương</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">2</td>
								<td>Sở Tài nguyên và môi trường</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">3</td>
								<td>Sở Nông nghiệp và Phát triển nông thôn</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">4</td>
								<td>Sở Kế hoạch & Đầu tư</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">5</td>
								<td>Sở Giao Thông Vận Tải</td>
								<td>28/06/2016</td>
								<td>Toàn cầu xanh</td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
							<tr>
								<td class="row-center">6</td>
								<td>Sở Xây Dựng</td>
								<td></td>
								<td></td>
								<td class="row-center">
									<span>
										<a href="#" title="Sửa">
								          	<span class="glyphicon glyphicon-edit"></span>
								        </a>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	  	</div>
	</div> -->
<!-- Mainly scripts -->

