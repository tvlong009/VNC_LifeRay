$(document).ready(function() {
	/*Start Up When Publish*/
 eventTable.initTableTest();
 
	$('#vnc04-createdate .input-group.date').datepicker({
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : false,
		autoclose : true,
		setDate: new Date(),
		language: 'vi',
		todayBtn : "linked",
	}).datepicker("setDate","0");
 
	$("#vnc04-tm-form").validate({
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
			address : {
				required : true,
			},
			createDate : {
				required : true,
				dateRules: true,
			},
			phone : {
				required : true,
				maxlength: 14,
				minlength: 10,
				number: true,
			},
		},
		messages : {
			name : {
				required : "Vui lòng nhập tên đơn vị"
			},
			address : {
				required : "Vui lòng nhập địa chỉ"
			},
			createDate : {
				required : "Xin nhập ngày tạo ",
				date: "Ngày tạo dịnh dạng không đúng",
			},
			phone : {
				required : "Xin nhập số điện thoại",
			    minlength: "Số điện thoại quá ngắn",
			    maxlength: "Số điện thoại quá dài",
			    number: "Số điện thoại không hợp lệ"
			},
		},
		
		
	});
	
	jQuery.validator.addMethod('dateRules', function(value, element) {
		var iCheck = false;
		iCheck = checkDayInvalid(value);
		return iCheck;
	}, "Ngày không hợp lệ");
	
});



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

/*== GET NGÀY KHI BIẾT THÁNG VÀ NĂM ==*/
function daysInMonth(month,year) {
    return new Date(year, month, 0).getDate();
}

var eventTable = {
  initTableTest : function() {
   var tableSetting = $('#vnc04-table').DataTable({
    "responsive": true,
       "bLengthChange": false,
       "bFilter": false,
       "bInfo": false,
       "bSort": false,
       "pageLength": 5,
       "pagingType": "full_numbers",
          "language": {
              "paginate": {
            	  "sFirst": '<i class="fa fa-angle-double-left" aria-hidden="true"></i>',
                  "previous":  '<i class="fa fa-angle-left" aria-hidden="true"></i>',
                  "sNext":   '<i class="fa fa-angle-right" aria-hidden="true"></i>',
                  "sLast": '<i class="fa fa-angle-double-right" aria-hidden="true"></i>'
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



