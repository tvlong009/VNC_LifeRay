$(document).ready(function() {
	/*Start Up When Publish*/
 eventTable.initTableTest();

 
	$('#vnc24-createdate .input-group.date').datepicker({
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : false,
		autoclose : true,
		setDate: new Date(),
		language: 'vi',
		todayBtn : "linked",
	}).datepicker("setDate","0");
	
	$('#vnc24-updatedate .input-group.date').datepicker({
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : false,
		autoclose : true,
		setDate: new Date(),
		language: 'vi',
		todayBtn : "linked",
	}).datepicker("setDate","0");
	
	 $('.delete_confirm').click(function () {
		    swal({
		        title: "Bạn muốn xóa?",
		        text: " Dữ liệu sẽ không thể hồi phục sau khi xóa!",
		        type: "warning",
		        showCancelButton: true,
		        confirmButtonColor: "#DD6B55",
		        cancelButtonText: "Hủy bỏ",
		        confirmButtonText: "Chấp nhận!",
		        closeOnConfirm: false
		    }, function () {
		        swal("Đã Xóa!", "Dữ liệu đã được xóa.", "success");
		    });
		});
	 
	/* $("#vnc24-tm-form").validate({
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
				updateDate : {
					required : true,
					dateRules: true,
				},
				createDate:{
					required: true,
					dateRules: true,
				}

			},
			messages : {
				name : {
					required : "Vui lòng nhập tên đơn vị"
				},
				updateDate : {
					required : "Xin nhập ngày sửa ",
					date: "Ngày sửa định dạng không đúng",
				},
				createDate : {
					required : "Xin nhập ngày tạo ",
					date: "Ngày tạo dịnh dạng không đúng",
				},
			},
			
			
		});*/
		
		jQuery.validator.addMethod('dateRules', function(value, element) {
			var iCheck = false;
			iCheck = checkDayInvalid(value);
			return iCheck;
		}, "Ngày không hợp lệ");
});

var eventTable = {
  initTableTest : function() {
   var tableSetting = $('#vnc24-table').DataTable({
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

function showTrangThaiModal(element){
	var type = $(element).attr('typeaction');
	var header = "";
	if(type == 'themTrangThai'){
		header = "Thêm mới trạng thái";
		$("#trangThaiButton").className = "btn btn-primary";
		
	} else {
		header = "Cập nhật trạng thái";
		$("#trangThaiButton").className = "btn btn-success";
	}
	$('#headerModal').text(header);
	$('#vnc24-modal').modal('show');
}