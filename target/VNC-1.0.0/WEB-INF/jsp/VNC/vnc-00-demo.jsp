<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/iCheck/custom.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/datapicker/datepicker3.css' />" rel="stylesheet">

<link rel="stylesheet" href="<c:url value='/style/css/others/inspinia/plugins/sweetalert/sweetalert.css'/>"  type="text/css">

<!-- Data Tables -->
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.bootstrap.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.responsive.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/plugins/dataTables/dataTables.tableTools.min.css' />" rel="stylesheet">
   
<script src="<c:url value='/style/js/others/inspinia/bootstrap.min.js' />"></script>
<script src="<c:url value='/style/js/others/inspinia/plugins/pace/pace.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js'/>"></script>
<script src="<c:url value='/style/js/others/inspinia/inspinia.js' />"></script>
<script src="<c:url value='/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.js'/>" type="text/javascript"></script>

<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/iCheck/icheck.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/datapicker/bootstrap-datepicker.js'/>"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/jasny/jasny-bootstrap.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/validate/jquery.validate.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/sweetalert/sweetalert.min.js'/>"></script>

<!-- Data Tables -->
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/jquery.dataTables.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.bootstrap.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.responsive.js' />"></script>
<script type="text/javascript" src="<c:url value='/style/js/others/inspinia/plugins/dataTables/dataTables.tableTools.min.js' />"></script>
<script type="text/javascript">
$(document).ready(function() {
	//I-check
	$('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green',
    });
	
	evenTable.initTableDemo('tableDemo');
	
	$('#demoSweetalert').click(function() {
		swal({
		       	title: "Thông báo",
		       	text:  "Thông báo loại thành công",
		       	type: "success",						     		    	
		       	confirmButtonText: "Đồng ý"
		});
	});
	$('#demoSweetalertConfirm').click(function() {
		swal({   
			title: "Thông báo",
			text: "Bạn có muốn ???",
			type: "warning",
			confirmButtonText: "Đồng ý",
			cancelButtonText:  "Hủy",
			showCancelButton: true,				
			closeOnConfirm: false,
			}, function(isConfirm) {
				if (isConfirm) {
					swal({
				       	title: "Thông báo",
				       	text:  "Thông báo loại thành công 2",
				       	type: "success",						     		    	
				       	confirmButtonText: "Đồng ý"
				});
				}										
		});	
	});
});
	var evenTable = {
			initTableDemo : function(tableName) {
				var tableSetting = $('#' + tableName).DataTable({
					"responsive": true,
			    	"bLengthChange": false,
				    "bFilter": false,
				    "bInfo": false,
				    "bSort": false,	
				    "pageLength": 5,
				    "fnRowCallback": function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
				    	var checkbox =  $(nRow).children().first();
			        	if (checkbox != undefined) {
			        		 $(checkbox).addClass('text-center');
			        	} 
			        	return nRow;
			        },
			        "drawCallback": function(settings) {
			        	if ($('#' + tableName).DataTable().page.info().recordsTotal > 5) {
			        		$('#'+tableName+'_paginate').show();
			        	} else {
			        		$('#'+tableName+'_paginate').hide();
			        	}
			        	
			        	$('.i-checks').iCheck({
					        checkboxClass: 'icheckbox_square-green',
					        radioClass: 'iradio_square-green',
					    });
			        	
			        },
			        "initComplete": function() {
			        	var checkEmpty = $('#'+tableName+' tbody tr td').hasClass("dataTables_empty");
			        	if(checkEmpty) {
			        		$('#'+tableName+' tbody tr').remove();
			        	}
			        },
			        "language": {
			            "paginate": {
			    	          "sFirst": 		"Đầu",
			    	          "previous":		"Trước",
			    	          "sNext":			"Sau",
			    	          "sLast": 			"Cuối"
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

<portlet:actionURL name="sendRedirect" var="sendRedirect">
	<portlet:param name="action" value="sendRedirect"></portlet:param>
</portlet:actionURL>
<div id="demoVNC">	
	<form action="${sendRedirect}" method="POST">
		<input value="1" name="render">
		<input type="submit" value="GO">
	</form>
	<!-- <input type="button" class="btn btn-success" id="demoSweetalert" value="Test">
	<input type="button" class="btn btn-success" id="demoSweetalertConfirm" value="Test Confirm">
	<input type="text" id="ngayTao">
	<input type="text" id="ngayDen">
	<table id="tableDemo" class="table table-bordered">
		<thead>
			<tr>
				<th><label class="hovericheck"> <input type="checkbox" class="i-checks" name="" id=""></label></th>
				<th>Tên</th>
				<th>Địa chỉ</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" class="i-checks" name="" id=""></td>
				<td>nhat</td>
				<td>ad</td>
			</tr>
		</tbody>
	</table> -->
</div>
