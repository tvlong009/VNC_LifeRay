<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/inspinia/css/animate.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/style.css" />" rel="stylesheet">

<link href="<c:url value="/resources/inspinia/css/plugins/dataTables/datatables.min.css" />" rel="stylesheet">

<!-- Mainly css -->
<link href="<c:url value="/resources/inspinia/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/mycss.css" />" rel="stylesheet">

<title>Tìm kiếm theo tiêu chí, toàn văn, từ khóa báo cáo theo chỉ tiêu</title>

</head>
<body>
	<div id="wrapper">
	  	<div class="row wrapper page-heading vnc-page-header">
		  	<div class="col-sm-12">
		  		<div class="col-sm-8 label-title">
		  			<span>Danh sách báo cáo ngành</span>
		  		</div>
		  		<div class="col-sm-4 button-title">
		  			<button type="button" class="btn btn-primary" onclick="">
		  				<img class="z-button-image" src="../../images/icon_create.png">Thêm mới
		  			</button>
		  		</div>
		  	</div>
	  	</div>
	  	<div class="wrapper wrapper-content">
	  		<div class="row">
		  		<div class="col-sm-12">
		  			<div class="mis-thead mis-bdr-green">
						<span class="z-span">
							<span class="z-label">Tra cứu</span>
						</span>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mis-box-search">
						<form class="form-horizontal">
							<div class="form-group" style="margin-bottom: 0px !important">
								<div class="col-sm-2">
									<label class="search-label">Từ khóa</label>
									<div style="width: 200px">
					      				<input type="text" class="form-control">
					      			</div>
								</div>
								<div class="col-sm-2">
									<label class="search-label">Trạng thái</label>
									<div style="width: 200px">
										<select class="form-control" name="cbo_trangthai">
				                            <option>Tất cả</option>
				                            <option>...</option>
				                        </select>
				                  	</div>
								</div>
								<div class="col-sm-2">
									<label class="search-label">Năm báo cáo</label>
									<div style="width: 200px">
										<select class="form-control" name="cbo_nambaocao">
				                            <option>2013</option>
				                            <option>...</option>
				                        </select>
				                  	</div>
								</div>
								<div class="col-sm-2">
									<label class="search-label">Kỳ báo cáo</label>
									<div style="width: 200px">
										<select class="form-control" name="account">
				                            <option>Tháng</option>
				                            <option>...</option>
				                        </select>
				                  	</div>
								</div>
								<div class="col-sm-2">
									<label class="search-label">&nbsp</label>
									<div style="width: 200px">
										<select class="form-control" name="account">
				                            <option>Tất cả</option>
				                            <option>...</option>
				                        </select>
				                  	</div>
								</div>
								<div class="col-sm-2">
									<label class="search-label">&nbsp</label>
									<div style="width: 200px">
										<div class="btn-group">
											<button class="btn-sm btn btn-default" type="button" title="Preview" tabindex="-1" data-provider="bootstrap-markdown" data-handler="bootstrap-markdown-cmdPreview" data-hotkey="Ctrl+F" data-toggle="button">
											<span class="glyphicon glyphicon-search"></span> Tìm kiếm</button>
										</div>
				                  	</div>
									
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="mis-thead mis-bdr-blue z-div">
						<span class="z-span">
							<span class="z-label">danh sách báo cáo</span>
						</span>
					</div>
					<div class="ibox">
						<div class="ibox-content" style="padding: 0px !important">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" id="tableDSBC">
									<colgroup>
										<col width="100">
										<col width="*">
										<col width="150">
										<col width="150">
										<col width="150">
										<col width="150">
										<col width="200">
									</colgroup>
									<thead>
										<tr class="table-thead">
											<th style="text-align: center; ">Số hiệu</th>
											<th>Tên báo cáo</th>
											<th style="text-align: center;">Kỳ báo cáo</th>
											<th style="text-align: center;">Năm</th>
											<th style="text-align: center;">Ngày sửa</th>
											<th style="text-align: center;">Người sửa</th>
											<th style="text-align: center;">Trạng thái</th>
										</tr>
									</thead>
									<tbody class="table-body">
										<tr>
											<td style="text-align: center;">123ABCDEF</td>
											<td>Báo cáo tháng 7</td>
											<td style="text-align: center;">Tháng 7</td>
											<td style="text-align: center;">2013</td>
											<td style="text-align: center;">28/07/2013</td>
											<td style="text-align: center;">Toàn cầu xanh</td>
											<td style="text-align: center;">
												<span class="vnc-status-tpdd z-label">Trưởng phòng đã duyệt</span>
											</td>
										</tr>
										<tr>
											<td style="text-align: center;">SCTB1</td>
											<td>Báo cáo tình hình hoạt động Sở Công Thương tháng 10</td>
											<td style="text-align: center;">Tháng 10</td>
											<td style="text-align: center;">2013</td>
											<td style="text-align: center;">28/10/2013</td>
											<td style="text-align: center;">Toàn cầu xanh</td>
											<td style="text-align: center;">
												<span class="vnc-status-dagui z-label">Đã gửi</span>
											</td>
										</tr>
										<tr>
											<td style="text-align: center;">SH-0124</td>
											<td>Báo cáo tình hình hoạt động tháng 2</td>
											<td style="text-align: center;">Tháng 2</td>
											<td style="text-align: center;">2014</td>
											<td style="text-align: center;">28/02/2013</td>
											<td style="text-align: center;">Toàn cầu xanh</td>
											<td style="text-align: center;">
												<span class="vnc-status-dangsoan z-label">Đang soạn</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- Mainly scripts -->
<script src="<c:url value="/resources/inspinia/js/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/bootstrap.js" />"></script>

<!-- Data picker -->
<script src="<c:url value="/resources/inspinia/js/plugins/datapicker/bootstrap-datepicker.js" />"></script>

<script src="<c:url value="/resources/inspinia/js/plugins/dataTables/datatables.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/resources/inspinia/js/inspinia.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>
	
	<script>
	$(document).ready(function() {
		eventTable.initTableTest();
	});

	var eventTable = {
		initTableTest : function() {
			var tableSetting = $('#tableDSBC').DataTable({
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