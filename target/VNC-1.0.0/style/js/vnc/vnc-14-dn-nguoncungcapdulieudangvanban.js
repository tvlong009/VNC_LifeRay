$(document).ready(function() {
	/*Start Up When Publish*/
 eventTable.initTableTest();
 
 $('#vnc14-table .i-checks').iCheck({
     checkboxClass: 'icheckbox_square-green',
     radioClass: 'iradio_square-green',
 });
 
 $('#vnc14-tm-form .i-checks').iCheck({
		checkboxClass : 'icheckbox_square-green',
		radioClass : 'iradio_square-green',
	});

 
//Alert
	$('.delete_confirm').click(function () {
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
 
 $("#vnc14-tm-form").validate({
		rules : {
			name : {
				required : true,
			},
			local_phone : {
				required : true,
				number: true,
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
				required : "Vui lòng nhập tên phong ban"
			},
			local_phone : {
				required : "Vui lòng nhập điện thoại nội bộ",
				number:"Số điện thoại không hợp lệ"
			},
			phone : {
				required : "Xin nhập số điện thoại",
			    minlength: "Số điện thoại quá ngắn",
			    maxlength: "Số điện thoại quá dài",
			    number: "Số điện thoại không hợp lệ"
			},
		},
		
		
	});
 
});

var eventTable = {
		  initTableTest : function() {
		   var tableSetting = $('#vnc14-table').DataTable({
		    "responsive": true,
		       "bLengthChange": false,
		       "bFilter": false,
		       "bInfo": false,
		       "bSort": false,
		       "pageLength": 5,
		       "drawCallback": function(settings) {
		    	   $('#vnc14-table .i-checks').iCheck({
		    		     checkboxClass: 'icheckbox_square-green',
		    		     radioClass: 'iradio_square-green',
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
		      "search": "",
		      "sInfo": "",
		      "sInfoEmpty": false,
		      "zeroRecords": " ",
		      "sInfoFiltered": "",
		       }
		   });
		  },
		}


