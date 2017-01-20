$(document).ready(function() {
	/*Start Up When Publish*/
 eventTable.initTableTest();

 $('#vnc09-ngaytao .input-group.date').datepicker({
     todayBtn: "linked",
     keyboardNavigation: false,
     forceParse: false,
     calendarWeeks: false,
     autoclose: true,
     language: 'vi',
 }).datepicker("setDate","0");
 
//Create the close button

 var closebtn = $('<button/>', {
	    type:"button",
	    text: 'x',
	    id: 'close-preview',
	    style: 'font-size: initial;',
	});
 
 closebtn.attr("class","close pull-right");

 // Clear event
 $('#vnc-09-fileupload .image-preview-clear').click(function(){
     $(' #vnc-09-fileupload .image-preview').attr("data-content","").popover('hide');
     $(' #vnc-09-fileupload .image-preview-filename').val("");
     $(' #vnc-09-fileupload .image-preview-clear').hide();
     $(' #vnc-09-fileupload .image-preview-input input:file').val("");
     $(" #vnc-09-fileupload .image-preview-input-title").text("Chọn File"); 
 }); 
 
 // Create the preview image
 $("#vnc-09-fileupload .image-preview-input input:file").change(function (){     
     var img = $('<img/>', {
         id: 'dynamic',
         width:250,
         height:200
     });      
     var file = this.files[0];
     var reader = new FileReader();
     // Set preview image into the popover data-content
     reader.onload = function (e) {
         $(" #vnc-09-fileupload .image-preview-input-title").text("Thay đổi");
         $(" #vnc-09-fileupload .image-preview-clear").show();
         $(" #vnc-09-fileupload .image-preview-filename").val(file.name);
     }        
     reader.readAsDataURL(file);
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
 
 $("#vnc09-tm-form").validate({
	 errorPlacement: function (error, element){
		   if (element.hasClass('date-picker')) {
		    error.insertAfter(element.parent());
		   } else {
		          error.insertAfter(element);
		          }
		  },
		rules : {
			tenthongbao : {
				required : true,
			},
			sohieu : {
				required : true,
			},
			ngaytao : {
				required : true,
				dateRules: true,
			},
			donvigui:{
				required: true,
			},
			trangthai: {
				required: true,
			},
			nguoisua : {
				required : true,
			},
		},
		messages : {
			tenthongbao : {
				required : "Vui lòng nhập tên thông báo",
			},
			sohieu : {
				required : "Vui lòng nhập số hiệu",
			},
			ngaytao : {
				required : "Vui lòng nhập ngày tạo",
				dateRules: "Ngày không hợp lệ",
			},
			donvigui:{
				required: "Vui lòng nhập đơn vị",
			},
			trangthai: {
				required: "Vui lòng chọn trạng thái",
			},
			nguoisua : {
				required : "Vui lòng nhập người sửa",
			},
		},
		
		
	});
	
	jQuery.validator.addMethod('dateRules', function(value, element) {
		var iCheck = false;
		iCheck = checkDayInvalid(value);
		return iCheck;
	}, "Ngày không hợp lệ");
});

var eventTable = {
		  initTableTest : function() {
		   var tableSetting = $('#vnc09-table').DataTable({
		    "responsive": true,
		       "bLengthChange": false,
		       "bFilter": false,
		       "bInfo": false,
		       "bSort": false,
		       "pageLength": 5,
		       "drawCallBack" : {
		    	   
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
