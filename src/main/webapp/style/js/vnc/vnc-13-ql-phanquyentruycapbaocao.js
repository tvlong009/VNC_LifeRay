$(document).ready(function() {
	/* Start Up When Publish */
	eventTable.initTableTest();
	evenIcheck_vaitro.checkAll();
	evenIcheck_phutrach.checkAll();

	$('#vnc13-ngaysinh .input-group.date').datepicker({
		todayBtn : "linked",
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : false,
		autoclose : true,
		language: 'vi',
	}).datepicker("setDate","0");

	$('#vnc13-vaitro-table .i-checks').iCheck({
		checkboxClass : 'icheckbox_square-green',
		radioClass : 'iradio_square-green',
	});
	$('#vnc13-phutrach-table .i-checks').iCheck({
		checkboxClass : 'icheckbox_square-green',
		radioClass : 'iradio_square-green',
	});

	$("#vnc13-form").validate({
		errorPlacement: function (error, element){
			   if (element.hasClass('date-picker')) {
			    error.insertAfter(element.parent());
			   } else {
			          error.insertAfter(element);
			          }
			  },
		rules : {

			name : {
				required : true,
			},
			username : {
				required : true,
				usernameRules: true,
			},
			password : {
				required : true,
			},
			re_password:{
				required: true,
				equalTo: "#password"
			},
			email : {
				required : true,
				email: true,
			},
			address : {
				required : true,
			},
			DOB : {
				required : true,
				dateRules: true,
			},
			phoneNo : {
				required : true,
				maxlength: 14,
				minlength:10,
				number: true,
			},
			donVi : {
				required : true,
			},
			phongBan : {
				required : true,
			}
		},
		messages : {
			name : {
				required : "Xin điền tên bạn"
			},
			username : {
				required : "Xin nhập tên đăng nhập"
			},
			password : {
				required : "Xin nhập mật khẩu"
			},
			re_password : {
				required : "Xin nhập lại mật khẩu",
				equalTo: "Không trùng với mật khẩu",
			},
			email : {
				required : "Xin nhập địa chỉ email",
					email: "Không đúng định dạng email",
			},
			address : {
				required : "Xin nhập địa chỉ"
			},
			DOB : {
				required : "Xin nhập ngày sinh ",
				date: "Ngày sinh không đúng",
			},
			phoneNo : {
				required : "Xin nhập số điện thoại",
			    minlength: "Số điện thoại quá ngắn",
			    maxlength: "Số điện thoại quá dài",
			    number: "Số điện thoại không hợp lệ"
			},
			donVi : {
				required : "Xin chọn đơn vị của bạn"
			},
			phongBan : {
				required : "Xin chọn phòng ban của bạn"
			}
		},
		
		
	});
	jQuery.validator.addMethod('usernameRules', function(value, element) {
	return this.optional(element) || /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20}/.test(value);
	}, "Username cần có ký tự hoa, thường, ký tự đặc biệt (@#$%), con số và chiều dài từ 6-20 ký tự");
	
	jQuery.validator.addMethod('dateRules', function(value, element) {
		var iCheck = false;
		iCheck = checkDayInvalid(value);
		return iCheck;
	}, "Ngày Không Hợp Lệ");

});

/*== GET NGÀY KHI BIẾT THÁNG VÀ NĂM ==*/
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

var evenIcheck_vaitro = {
	checkAll : function() {
		$('#vnc13-vaitro-checkall').on(
				'ifChecked ifUnchecked',
				function() {
					var checkbox = $(this);
					if (checkbox.is(':checked')) {
						$('#vnc13-vaitro-table  input[type=checkbox]').iCheck(
								'check');
					} else {
						$('#vnc13-vaitro-table  input[type=checkbox]').iCheck(
								'uncheck');
					}
				});
	},
}

var evenIcheck_phutrach = {
	checkAll : function() {
		$('#vnc13-phutrach-checkall').on(
				'ifChecked ifUnchecked',
				function() {
					var checkbox = $(this);
					if (checkbox.is(':checked')) {
						$('#vnc13-phutrach-table  input[type=checkbox]')
								.iCheck('check');
					} else {
						$('#vnc13-phutrach-table input[type=checkbox]').iCheck(
								'uncheck');
					}
				});
	},
}

var eventTable = {
	initTableTest : function() {
		var tableSetting = $('#vnc13-phutrach-table, #vnc13-vaitro-table')
				.DataTable(
						{
							"responsive" : true,
							"bLengthChange" : false,
							"bFilter" : false,
							"bInfo" : false,
							"bSort" : false,
							"pageLength" : 3,
							"drawCallback" : function(settings) {
								$('#vnc13-vaitro-table tbody .i-checks')
										.iCheck(
												{
													checkboxClass : 'icheckbox_square-green',
													radioClass : 'iradio_square-green',
												});

								$('#vnc13-phutrach-table tbody .i-checks')
										.iCheck(
												{
													checkboxClass : 'icheckbox_square-green',
													radioClass : 'iradio_square-green',
												});
								$('#vnc13-vaitro-checkall')
										.on(
												'ifChecked ifUnchecked',
												function() {
													var checkbox = $(this);
													if (checkbox.is(':checked')) {
														$(
																'#vnc13-vaitro-table input[type=checkbox]')
																.iCheck('check');
													} else {
														$(
																'#vnc13-vaitro-table input[type=checkbox]')
																.iCheck(
																		'uncheck');
													}
												});
								$('#vnc13-phutrach-checkall')
										.on(
												'ifChecked ifUnchecked',
												function() {
													var checkbox = $(this);
													if (checkbox.is(':checked')) {
														$(
																'#vnc13-phutrach-table input[type=checkbox]')
																.iCheck('check');
													} else {
														$(
																'#vnc13-phutrach-table input[type=checkbox]')
																.iCheck(
																		'uncheck');
													}
												});
							},
							"pagingType": "full_numbers",
					          "language": {
					              "paginate": {
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
