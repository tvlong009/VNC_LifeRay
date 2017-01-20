<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/inspinia/css/animate.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/style.css" />" rel="stylesheet">

<!-- Data picker css -->
<link href="<c:url value="/resources/inspinia/css/plugins/datapicker/datepicker3.css" />" rel="stylesheet">

<link href="<c:url value="/resources/inspinia/css/plugins/dataTables/datatables.min.css" />" rel="stylesheet">

<!-- Mainly css -->
<link href="<c:url value="/resources/inspinia/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/mycss.css" />" rel="stylesheet">

<title>Định nghĩa thời điểm cung cấp dữ liệu</title>

</head>
<body>
	<div id="wrapper">
	  	<div class="row wrapper page-heading vnc-page-header">
		  	<div class="col-sm-12">
		  		<div class="col-sm-8 label-title">
		  			<span>Danh sách biểu mẫu báo cáo</span>
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
								<label class="col-sm-1 control-label search-label">Ngày tạo</label>
								<div class="col-sm-2" id="data_1">
									<div class="input-group date">
	                                    <span class="input-group-addon">
	                                    	<i class="fa fa-calendar"></i></span>
	                                    <input type="text" class="form-control" value="03/04/2014">
	                                </div>
                                </div>
                                <label class="col-sm-1 control-label search-label">Đến</label>
								<div class="col-sm-2" id="data_2">
									<div class="input-group date">
	                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
	                                    <input type="text" class="form-control" value="03/04/2014">
	                                </div>
                                </div>
                                <label class="col-sm-1 control-label search-label">Hiệu lực</label>
								<div class="col-sm-2" id="data_1">
									<select class="form-control m-b" name="cboHieuluc">
                                        <option>--Ngày, tháng, năm--</option>
                                        <option>...</option>
                                    </select>
                                </div>
                                <div class="col-sm-3" id="data_1">
									<div class="btn-group">
										<button class="btn-sm btn btn-default" type="button" title="Preview" tabindex="-1" data-provider="bootstrap-markdown" data-handler="bootstrap-markdown-cmdPreview" data-hotkey="Ctrl+F" data-toggle="button">
										<span class="glyphicon glyphicon-search"></span> Tìm kiếm</button>
									</div>
                                </div>
							</div>
							<div class="form-group" style="margin-bottom: 0px !important">
								<label class="col-sm-1 control-label search-label">Tên biểu mẫu</label>
								<div class="col-sm-2">
									<input type="text" placeholder="Nhập tên" class="form-control">
                                </div>
                                <label class="col-sm-1 control-label search-label">Số hiệu</label>
								<div class="col-sm-2">
									<input type="text" placeholder="Nhập số hiệu" class="form-control">
                                </div>
                                <label class="col-sm-1 control-label search-label">Kỳ báo cáo</label>
								<div class="col-sm-2" id="data_1">
									<select class="form-control m-b" name="cboHieuluc">
                                        <option>--Ngày, tháng, năm--</option>
                                        <option>...</option>
                                    </select>
                                </div>
                                <div class="col-sm-3"></div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-12">
		  			<div class="mis-thead mis-bdr-blue">
						<span class="z-span">
							<span class="z-label">danh sách biểu mẫu báo cáo</span>
						</span>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="ibox">
						<div class="ibox-content" style="padding: 0px !important">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" id="tableDSBM">
									<colgroup>
										<col width="100">
										<col width="*">
										<col width="150">
										<col width="150">
										<col width="150">
										<col width="150">
										<col width="150">
										<col width="100">
									</colgroup>
									<thead>
										<tr class="table-thead">
											<th>Số hiệu</th>
											<th>Tên biểu mẫu</th>
											<th>Đơn vị</th>
											<th>Kì báo cáo</th>
											<th>Ngày tạo</th>
											<th>Người sửa</th>
											<th>Hiệu lực</th>
											<th>Thao tác</th>
										</tr>
									</thead>
									<tbody class="table-body">
										<tr>
											<td class="row-left">123ABCDEF</td>
											<td class="row-left" style="text-transform: uppercase;">ngành nông nghiệp và phát triển nông thôn</td>
											<td class="row-left">Sở nông nghiệp và phát triển nông thôn</td>
											<td class="row-left">Tháng</td>
											<td class="row-left">28/06/2016</td>
											<td class="row-left">Supper Admin</td>
											<td class="row-left"><input type="checkbox" checked="checked"> Áp dụng</td>
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
											<td class="row-left">SCTB1</td>
											<td class="row-left" style="text-transform: uppercase;">ngành công thương thành phố đà nẵng 2013</td>
											<td class="row-left">Sở công thương</td>
											<td class="row-left">Tháng</td>
											<td class="row-left">28/06/2016</td>
											<td class="row-left">Supper Admin</td>
											<td class="row-left"><input type="checkbox" checked="checked"> Áp dụng</td>
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
			var tableSetting = $('#tableDSBM').DataTable({
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