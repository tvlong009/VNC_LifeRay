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
 
<title>Danh sách phòng ban</title>

</head>
<body class="top-navigation">
	<div id="wrapper">
			<!-- A PART HEADER -->
			<div class="row border-bottom white-bg">
				<%@ include file="/jsp/VNC/nav/headerTemp.jsp"%>
			</div>
			<!-- THE END A PART HEADER -->
	
	  	<div class="row wrapper page-heading vnc-page-header">
		  	<div class="col-sm-12">
		  		<div class="col-sm-8 label-title">
		  			<span>Danh sách phòng ban</span>
		  		</div>
		  		<div class="col-sm-4 button-title">
		  			<button type="button" class="btn btn-primary" onclick="">
		  				<img class="z-button-image" src="../../images/icon_create.png">Thêm mới
		  			</button>
		  		</div>
		  	</div>
	  	</div>
	  	<div class="wrapper wrapper-content">
	  		<div class="mis-thead mis-bdr-green">
				<span class="z-span">
					<span class="z-label">Tra cứu</span>
				</span>
			</div>
			<div class="mis-box-search">
				<form class="form-horizontal">
					<div class="form-group" style="margin-bottom: 0px !important">
						<label class="col-sm-1 control-label search-label">Đơn vị</label>
						<div class="col-sm-2">
							<select class="form-control" name="account">
                                <option>Tất cả</option>
                                <option>Viện nghiên cứu phát triển</option>
                                <option>Sở tài nguyên môi trường</option>
                                <option>...</option>
                            </select>
                        </div>
					</div>
				</form>
			</div>

			<div class="mis-thead mis-bdr-blue z-div">
				<span class="z-span">
					<span class="z-label">danh mục phòng ban</span>
				</span>
			</div>
			<div class="ibox">
				<div class="ibox-content" style="padding: 0px !important">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="tableDSPB">
							<colgroup>
								<col width="50">
								<col width="*">
								<col width="150">
								<col width="150">
								<col width="150">
								<col width="100">
							</colgroup>
							<thead>
								<tr class="table-thead">
									<th class="row-center">STT</th>
									<th>Tên phòng ban</th>
									<th>Số điện thoại</th>
									<th>Điện thoại nội bộ</th>
									<th>Cho phép kích hoạt</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody class="table-body">
								<tr>
									<td class="row-center">1</td>
									<td>Viện QHXH</td>
									<td></td>
									<td>154</td>
									<td><input type="checkbox" checked="checked"></td>
									<td class="row-center">
										<div class="form">
											<input type="checkbox">
											<a href="#">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="row-center">2</td>
									<td>Phòng công nghệ thông tin</td>
									<td></td>
									<td>154</td>
									<td><input type="checkbox" checked="checked"></td>
									<td class="row-center">
										<div class="form">
											<input type="checkbox">
											<a href="#">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="row-center">3</td>
									<td>Phòng kinh tế ngành</td>
									<td></td>
									<td>154</td>
									<td><input type="checkbox" checked="checked"></td>
									<td class="row-center">
										<div class="form">
											<input type="checkbox">
											<a href="#">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="row-center">4</td>
									<td>Viện QHXH</td>
									<td></td>
									<td>154</td>
									<td><input type="checkbox" checked="checked"></td>
									<td class="row-center">
										<div class="form">
											<input type="checkbox">
											<a href="#">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="row-center">5</td>
									<td>Phòng kinh tế Đối ngoại</td>
									<td></td>
									<td>154</td>
									<td><input type="checkbox" checked="checked"></td>
									<td class="row-center">
										<div class="form">
											<input type="checkbox">
											<a href="#">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="row-center">6</td>
									<td>Phòng tổ chức</td>
									<td></td>
									<td>154</td>
									<td><input type="checkbox" checked="checked"></td>
									<td class="row-center">
										<div class="form">
											<input type="checkbox">
											<a href="#">
									          	<span class="glyphicon glyphicon-trash"></span>
									        </a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
	  	</div>
	  	<!-- A PART FOOTER -->
			<div class="row m-t-md">
				<%@ include file="/jsp/VNC/nav/footerTemp.jsp"%>
			</div>
			<!-- END FOOTER -->
	</div>
	
<!-- Mainly scripts -->
<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.js" />"></script>

<!-- Data Tables -->
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>
	
<script type="text/javascript">
	$(document).ready(function() {
		eventTable.initTableTest();
	});

	var eventTable = {
		initTableTest : function() {
			var tableSetting = $('#tableDSPB').DataTable({
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