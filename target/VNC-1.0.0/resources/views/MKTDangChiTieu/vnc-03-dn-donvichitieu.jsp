<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
 
<title>Định nghĩa đơn vị chỉ tiêu</title>

</head>
<body class="top-navigation">
	<div id="wrapper">
			<!-- A PART HEADER -->
			<div class="row border-bottom white-bg">
				<%@ include file="/jsp/VNC/nav/headerTemp.jsp"%>
			</div>
			<!-- THE END A PART HEADER -->

			<!-- A PART CONTENT -->
			<div class="row wrapper page-heading vnc-page-header">
		  	<div class="col-sm-12">
		  		<div class="col-sm-8 label-title">
		  			<span>Danh mục đơn vị tính</span>
		  		</div>
		  		<div class="col-sm-4 button-title">
		  			<button type="button" class="btn btn-primary" onclick="">
		  				<img class="z-button-image" src="../../images/icon_create.png">Thêm mới
		  			</button>
		  		</div>
		  	</div>
	  	</div>
	  	<div class="wrapper wrapper-content">
			<div class="mis-thead mis-bdr-blue z-div">
				<span class="z-span">
					<span class="z-label">danh sách đơn vị tính</span>
				</span>
			</div>
			<div class="ibox">
				<div class="ibox-content" style="padding: 0px !important">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="tableDSDV">
							<colgroup>
								<col width="50">
								<col width="*">
								<col width="150">
								<col width="150">
								<col width="150">
								<col width="100">
							</colgroup>
							<thead class="table-thead">
								<tr>
									<th class="row-center">STT</th>
									<th>Tên đơn vị tính</th>
									<th>Ngày tạo</th>
									<th>Ngày sửa</th>
									<th>Trạng thái</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody class="table-body">
								<tr>
									<td class="row-center">1</td>
									<td>.</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>Áp dụng</td>
									<td class="row-center">
										<span>
											<a href="#" title="Sửa">
									          	<span class="glyphicon glyphicon-edit"></span>
									        </a>
											<a href="#" title="Xóa">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</span>
									</td>
								</tr>
								<tr>
									<td class="row-center">2</td>
									<td>%</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>Áp dụng</td>
									<td class="row-center">
										<span>
											<a href="#" title="Sửa">
									          	<span class="glyphicon glyphicon-edit"></span>
									        </a>
											<a href="#" title="Xóa">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</span>
									</td>
								</tr>
								<tr>
									<td class="row-center">3</td>
									<td>$</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>Áp dụng</td>
									<td class="row-center">
										<span>
											<a href="#" title="Sửa">
									          	<span class="glyphicon glyphicon-edit"></span>
									        </a>
											<a href="#" title="Xóa">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</span>
									</td>
								</tr>
								<tr>
									<td class="row-center">4</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>Áp dụng</td>
									<td class="row-center">
										<span>
											<a href="#" title="Sửa">
									          	<span class="glyphicon glyphicon-edit"></span>
									        </a>
											<a href="#" title="Xóa">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</span>
									</td>
								</tr>
								<tr>
									<td class="row-center">5</td>
									<td>Triệu đồng</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>Áp dụng</td>
									<td class="row-center">
										<span>
											<a href="#" title="Sửa">
									          	<span class="glyphicon glyphicon-edit"></span>
									        </a>
											<a href="#" title="Xóa">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</span>
									</td>
								</tr>
								<tr>
									<td class="row-center">6</td>
									<td>Tỷ đồng</td>
									<td>29/06/2016</td>
									<td>29/06/2016</td>
									<td>Áp dụng</td>
									<td class="row-center">
										<span>
											<a href="#" title="Sửa">
									          	<span class="glyphicon glyphicon-edit"></span>
									        </a>
											<a href="#" title="Xóa">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
	  	</div>
			<!-- THE END A PART CONTENT -->

			<!-- A PART FOOTER -->
				<%@ include file="/jsp/VNC/nav/footerTemp.jsp"%>
			<!-- END FOOTER -->
		</div>
		
<!-- Mainly scripts -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.js" />"></script>

<!-- Data picker -->
<script src="<c:url value="/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js" />"></script>



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
	$('#data_1 .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
	$('#data_2 .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
	
	$(document).ready(function() {
		eventTable.initTableTest();
	});

	var eventTable = {
		initTableTest : function() {
			var tableSetting = $('#tableDSDV').DataTable({
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