$(document).ready(function() {
	/*Start Up When Publish*/
	
 eventTable.initTableTest();
 eventTable2.initTableTest();
 evenIcheck_vaitro.checkAll();
 evenIcheck_phutrach.checkAll();
 
 $('#vnc05-ngaytao .input-group.date').datepicker({
     todayBtn: "linked",
     keyboardNavigation: false,
     forceParse: false,
     calendarWeeks: false,
     autoclose: true
 });
 
 $('#vnc05-ngayden .input-group.date').datepicker({
     todayBtn: "linked",
     keyboardNavigation: false,
     forceParse: false,
     calendarWeeks: false,
     autoclose: true
 });
 
 $('#vnc07-ngaysinh .input-group.date').datepicker({
     todayBtn: "linked",
     keyboardNavigation: false,
     forceParse: false,
     calendarWeeks: false,
     autoclose: true
 });
 
 
 $('.i-checks').iCheck({
     checkboxClass: 'icheckbox_square-green',
     radioClass: 'iradio_square-green',
 });
 
 
 
 $('#vnc10-editor').summernote();
 
});
var edit = function() {
    $(' #vnc10-editor .click2edit').summernote({focus: true});
};
var save = function() {
    var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
    $(' #vnc10-editor .click2edit').destroy();
};


var evenIcheck_vaitro={
		checkAll : function() {
			$('#vnc07-vaitro-checkall').on('ifChecked ifUnchecked', function() {
				var checkbox = $(this);
				if (checkbox.is(':checked')) {
		 			$('#vnc07-vaitro-table tbody input[type=checkbox]').iCheck('check');
		 		} else {
		 			$('#vnc07-vaitro-table tbody input[type=checkbox]').iCheck('uncheck');
		 		}
			});	
		},
}

var evenIcheck_phutrach={
				checkAll : function() {
					$('#vnc07-phutrach-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						if (checkbox.is(':checked')) {
				 			$('#vnc07-phutrach-table tbody input[type=checkbox]').iCheck('check');
				 		} else {
				 			$('#vnc07-phutrach-table tbody input[type=checkbox]').iCheck('uncheck');
				 		}
					});	
				},
}

var eventTable = {
  initTableTest : function() {
   var tableSetting = $('#vnc04-table, #vnc05-table, #vnc09-table').DataTable({
    "responsive": true,
       "bLengthChange": false,
       "bFilter": false,
       "bInfo": false,
       "bSort": false,
       "pageLength": 5,
       "drawCallBack" : {
    	   
       },
        "language": {
          "paginate": {
             "sFirst": '',
             "previous":  'Trước',
             "sNext":   'Sau',
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

var eventTable2 = {
		  initTableTest : function() {
		   var tableSetting = $('#vnc07-phutrach-table, #vnc07-vaitro-table').DataTable({
		    "responsive": true,
		       "bLengthChange": false,
		       "bFilter": false,
		       "bInfo": false,
		       "bSort": false,
		       "pageLength": 3,
		       "drawCallback": function(settings) {
		    	   $('#vnc07-vaitro-table tbody .i-checks').iCheck({
		    		     checkboxClass: 'icheckbox_square-green',
		    		     radioClass: 'iradio_square-green',
		    		 });
		    	   $('#vnc07-vaitro-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						if (checkbox.is(':checked')) {
				 			$('#vnc07-vaitro-table tbody input[type=checkbox]').iCheck('check');
				 		} else {
				 			$('#vnc07-vaitro-table tbody input[type=checkbox]').iCheck('uncheck');
				 		}
					});
		    	   $('#vnc07-phutrach-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						if (checkbox.is(':checked')) {
				 			$('#vnc07-phutrach-table tbody input[type=checkbox]').iCheck('check');
				 		} else {
				 			$('#vnc07-phutrach-table tbody input[type=checkbox]').iCheck('uncheck');
				 		}
					});
		        },
		          "language": {
		              "paginate": {
		                 "sFirst": '',
		                 "previous":  'Trước',
		                 "sNext":   'Sau',
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
