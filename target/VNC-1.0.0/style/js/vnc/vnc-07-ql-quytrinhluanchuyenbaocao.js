$(document).ready(function() {
	/*Start Up When Publish*/
 eventTable.initTableTest();
 evenIcheck_vaitro.checkAll();
 evenIcheck_phutrach.checkAll();
 
 $('#vnc07-ngaysinh .input-group.date').datepicker({
     todayBtn: "linked",
     keyboardNavigation: false,
     forceParse: false,
     calendarWeeks: false,
     autoclose: true
 });
 
 $('#vnc07-vaitro-table .i-checks').iCheck({
     checkboxClass: 'icheckbox_square-green',
     radioClass: 'iradio_square-green',
 });
 $('#vnc07-phutrach-table .i-checks').iCheck({
     checkboxClass: 'icheckbox_square-green',
     radioClass: 'iradio_square-green',
 });
 
});

var evenIcheck_vaitro={
		checkAll : function() {
			$('#vnc07-vaitro-checkall').on('ifChecked ifUnchecked', function() {
				var checkbox = $(this);
				if (checkbox.is(':checked')) {
		 			$('#vnc07-vaitro-table  input[type=checkbox]').iCheck('check');
		 		} else {
		 			$('#vnc07-vaitro-table  input[type=checkbox]').iCheck('uncheck');
		 		}
			});	
		},
}

var evenIcheck_phutrach={
				checkAll : function() {
					$('#vnc07-phutrach-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						if (checkbox.is(':checked')) {
				 			$('#vnc07-phutrach-table  input[type=checkbox]').iCheck('check');
				 		} else {
				 			$('#vnc07-phutrach-table input[type=checkbox]').iCheck('uncheck');
				 		}
					});	
				},
}

var eventTable = {
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
		    	   
		    	   $('#vnc07-phutrach-table tbody .i-checks').iCheck({
		    		     checkboxClass: 'icheckbox_square-green',
		    		     radioClass: 'iradio_square-green',
		    		 });
		    	   $('#vnc07-vaitro-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						if (checkbox.is(':checked')) {
				 			$('#vnc07-vaitro-table input[type=checkbox]').iCheck('check');
				 		} else {
				 			$('#vnc07-vaitro-table input[type=checkbox]').iCheck('uncheck');
				 		}
					});
		    	   $('#vnc07-phutrach-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						if (checkbox.is(':checked')) {
				 			$('#vnc07-phutrach-table input[type=checkbox]').iCheck('check');
				 		} else {
				 			$('#vnc07-phutrach-table input[type=checkbox]').iCheck('uncheck');
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
		      "search": "",
		      "sInfo": "",
		      "sInfoEmpty": false,
		      "zeroRecords": " ",
		      "sInfoFiltered": "",
		       }
		   });
		  },
		}


