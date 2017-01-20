$(document).ready(function() {
	/* Start Up When Publish */
	eventTable.initTableTest();

	$('#vnc05-ngaytao .input-group.date').datepicker({
			todayHighlight: true,
			todayBtn : "linked",
			forceParse : false,
			autoclose : true,
			language : 'vi',
		}).on('changeDate',function(selected) {
			$('#ngaytao').removeClass('error');
			$("#ngaytao").parent().next().remove();
			$('#ngaytao').focusout();
	}).datepicker("setDate", "0");
	
	$('#vnc05-ngaytao .input-group .input-group-addon').on('click',function(){
		$('#ngaytao').focus();
	});
	
	$('#vnc05-ngayden .input-group.date').datepicker({
		format: 'dd/mm/yyyy',
		todayHighlight: true,
		todayBtn : "linked",
		forceParse : false,
		autoclose : true,
		language : 'vi',
	}).on('changeDate',function(selected) {
		$('#ngayden').removeClass('error');
		$("#ngayden").parent().next().remove();
		$('#ngayden').focusout();
	}).datepicker("setDate", "0");
	
	$('#vnc05-ngayden .input-group .input-group-addon').on('click',function(){
		$('#ngayden').focus();
	});
	
	$("#vnc05-tracuu-form").validate({
		errorPlacement: function (error, element){
			if (element.hasClass('date-picker')) {
				error.insertAfter(element.parent());
			} else {
	        	error.insertAfter(element);
         	}
		},
		rules : {
			ngayTao : {
				dateRules1: true,
				dateRules2: true
			},
			ngayDen : {
				dateRules3: true,
				dateRules4: true
			}
		},
	});
	
	var iCheckTao = false;
	var checkCompareDate = false;
	jQuery.validator.addMethod('dateRules1', function(value, element) {
		if (value == "") {
			return true;
		} else {
			iCheckTao = checkDayInvalid(value);
		}
		return iCheckTao;
	},"Ngày nhập không đúng");
	
	var iCheckDen = false;
	jQuery.validator.addMethod('dateRules3', function(value, element) {
		if (value == "") {
			return true;
		} else {
			iCheckDen = checkDayInvalid(value);
		}
		return iCheckDen;
	},"Ngày nhập không đúng");
	
	jQuery.validator.addMethod('dateRules2', function(value, element) {
		var ngayDen = $('#ngayden').val();
		var check = rule.checkDate(ngayDen, value, 'from');
		if (check && iCheckTao && iCheckDen) {
			$('#ngayden').removeClass('error');
			$("#ngayden").parent().next().remove();
			return check;
		} else {
			return check;
		}
	}, "Ngày tạo phải nhỏ hơn ngày đến");
	
	jQuery.validator.addMethod('dateRules4', function(value, element) {
		var ngayTao = $('#ngaytao').val();
		var check = rule.checkDate(ngayTao, value, 'to');
		if (check && iCheckTao && iCheckDen) {
			$('#ngaytao').removeClass('error');
			$("#ngaytao").parent().next().remove();
			return check;
		} else {
			return check;
		}
	}, "Ngày đến phải lớn hơn ngày tạo");
	
	// Validation for popup
	$("#vnc-05-themmoi-form").validate({
		rules : {
			tieuDe : {
				textRules: true
			},
			loaiCot:{
				textRules: true
			},
			tenCot:{
				textRules: true
			}
		},
	});
	jQuery.validator.addMethod('textRules', function(value, element) {
		if (value != "" && value != null) {
			return true;
		}
		return false;
	},"Bạn không được để trống trường này.");
	
	// iCheck
	$('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green',
    });
	
	// Alert
	$('.ktXoa').click(function () {
        swal({
            title: "Bạn muốn xóa mục này?",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            cancelButtonText: "Bỏ qua",
            confirmButtonText: "Chấp nhận",
            closeOnConfirm: false
        }, function () {
            swal("Đã xóa!", "", "success");
        });
    });
});

function clickShowModel(element) {
	var type = $(element).attr('typeaction');
	var header = '';
	if (type == 'add') {
		header = "Thêm mới biểu mẫu cục thống kê";
	} else {
		header = "Cập nhật biểu mẫu cục thống kê";
	}
	
	$('#headerModel').text(header);
	$('#vnc-05-modal').modal('show');
}

var rule = {
	checkDate : function(from, to, type) {
		var dateFrom = new Date(rule.formatDate(from));
		var dateTo = new Date(rule.formatDate(to));
		// Ngày tạo
		var dayFrom = dateFrom.getDate();
		var monthFrom = dateFrom.getMonth() + 1;
		var yearFrom = dateFrom.getFullYear();

		// Ngày đến
		var dayTo = dateTo.getDate();
		var monthTo = dateTo.getMonth() + 1;
		var yearTo = dateTo.getFullYear();
		
		if (type == 'to') {
			if (yearTo > yearFrom) {
				return true;
			} else if (yearTo < yearFrom){
				return false;
			} else {
				if (monthTo > monthFrom) {
					return true;
				} else if(monthTo < monthFrom){
					return false;
				} else {
					if (dayTo < dayFrom) {
						return false;
					} else {
						return true;
					}
				}
			}
		} else {
			if (yearTo > yearFrom) {
				return false;
			} else if(yearTo < yearFrom){
				return true;
			} else {
				if (monthTo > monthFrom) {
					return false;
				} else if(monthTo < monthFrom) {
					return true;
				}else {
					if (dayTo > dayFrom) {
						return false;
					} else {
						return true;
					}
				}
			}
		}
	},
	
	formatDate : function(date) {
		var dateNew = '';
		if (date != undefined && date != null && date != '') {
			var day = date.split('/')[0];
			var month = date.split('/')[1];
			var year = date.split('/')[2];
			
			dateNew = month + '/' + day + '/' + year;
		}
		return dateNew;
	}
}

/* == GET NGÀY KHI BIẾT THÁNG VÀ NĂM == */
function daysInMonth(month,year) {
    return new Date(year, month, 0).getDate();
}

function checkDayInvalid(ngay) {
	var dateCurrently = new Date();
	var arrayLookup = {
		'01' : 31,
		'03' : 31,
		'04' : 30,
		'05' : 31,
		'06' : 30,
		'07' : 31,
		'08' : 31,
		'09' : 30,
		'10' : 31,
		'11' : 30,
		'12' : 31
	};
	var bool = false;
	var strDay = ngay.split("/")[0];
	var strMonth = ngay.split("/")[1];
	var strYear = ngay.split("/")[2];
	if (strMonth == 2 && strYear > 1000) {
		if (strDay > 0 && strDay <= daysInMonth(strMonth, strYear))
			bool = true;
	} else {
		$.each(arrayLookup, function(index, value) {
			if (strMonth == index) {
				if (strDay > 0 && strDay <= value) {
					if (strYear >= 1000) {
						bool = true;
					}
				}
				return false;
			}
		});
	}
	return bool;
}

var eventTable = {
	initTableTest : function() {
		var tableSetting = $('#vnc05-table').DataTable({
			"responsive" : true,
			"bLengthChange" : false,
			"bFilter" : false,
			"bInfo" : false,
			"bSort" : false,
			"pageLength" : 5,
			"drawCallback": function(settings) {
		    	   
		    	   $('.i-checks').iCheck({
		    		     checkboxClass: 'icheckbox_square-green',
		    		     radioClass: 'iradio_square-green',
		    		 });
		    	   
		        },
		    "pagingType": "full_numbers",
			"language" : {
				"paginate" : {
					 "sFirst": '<i class="fa fa-angle-double-left" aria-hidden="true"></i>',
	                 "previous":  '<i class="fa fa-angle-left" aria-hidden="true"></i>',
	                 "sNext":   '<i class="fa fa-angle-right" aria-hidden="true"></i>',
	                 "sLast": '<i class="fa fa-angle-double-right" aria-hidden="true"></i>'
				},
				"search" : "",
				"sInfo" : "",
				"sInfoEmpty" : false,
				"zeroRecords" : " ",
				"sInfoFiltered" : "",
			}
		});
	},
}
function timKiemTraCuu(){
	alert("Chức năng đang trong quá trình phát triển");
}
function themCotSoLieu(){
	
}
