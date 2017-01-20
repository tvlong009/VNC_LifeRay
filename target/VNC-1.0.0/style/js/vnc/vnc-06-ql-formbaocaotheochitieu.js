$(document).ready(function() {
	/*Start Up When Publish*/
	 eventTable.initTableTest();
	
 $('#vnc06-treetable .i-checks').iCheck({
     checkboxClass: 'icheckbox_square-green',
     radioClass: 'iradio_square-green',
 });
 
 
 
 $('#vnc06-treetable').treegrid({
	 treeColumn : 1
 });

 /*eventTable.loadData('vnc06-treetable', arrayData());*/
 
 evenIcheck.checkAll();
 
});

var evenIcheck={
		checkAll : function() {
			   
	    
	    		   $('#vnc06-treetable .vnc06-checkall').on('ifChecked ifUnchecked', function() {
						var checkbox = $(this);
						var lname = $(this).parent().parent().parent().attr("class");
						var listclass = lname.split(" ");
						if (checkbox.is(':checked')) {
				 			$('#vnc06-treetable input[name="child_'+listclass[0]+'"]').iCheck('check');
				 		} else {
				 			$('#vnc06-treetable input[name="child_'+listclass[0]+'"]').iCheck('uncheck');
				 		}
					});
			
		},
}

/*function arrayData() {
	var arrRoot = [];
	var arrChild = [];
	
	for (var int = 0; int < 3; int++) {
		var rowChild = {
				"chiTieu"	:	"Thủy sản " + int,
				"donVI"		:	"triệu đồng",
				"check"		:	"y"
		}
		arrChild.push(rowChild);
	}
	
	for (var int = 0; int < 2; int++) {
		var rowRoot = {
				"chiTieu"	:	"Root Thủy sản " + int,
				"donVI"		:	"triệu đồng",
				"check"		:	"",
				"child"		:	arrChild
		}
		arrRoot.push(rowRoot);
	}
	return arrRoot;
}*/

var eventTable = {
		  initTableTest : function() {
		   var tableSetting = $('#vnc06-treetable').DataTable({
		    "responsive": true,
		       "bLengthChange": false,
		       "bFilter": false,
		       "bInfo": false,
		       "bSort": false,
		       "bPaginate":false,
		       /*"fnRowCallback": function(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
		    	   var row = $(nRow).children().eq(0).children().children().eq(1);
		    	   var idRoot;
		    	   var check = $(row).attr('name');
		    	   if (row != null && row != undefined && check == 'root') {
		    		   idRoot = $(row).val();
		    		   $(nRow).addClass('treegrid-'+idRoot);
		    		   
		    	   } else {
		    		   var id = $(row).val();
		    		   var ida = $(row).parent().children().eq(2).val();
		    		   $(nRow).addClass('treegrid-'+id+ ' treegrid-parent-' + ida);
		    		   
		    	   }
		    	   
		    	   return nRow;
		       },*/
		       /*"pageLength": 5,*/
		       "drawCallback": function(settings) {
		    	  
		    	   $('#vnc06-treetable').treegrid();
		    	   
		    	   $('#vnc06-treetable .i-checks').iCheck({
		    		     checkboxClass: 'icheckbox_square-green',
		    		     radioClass: 'iradio_square-green',
		    		 });
		    	   evenIcheck.checkAll();
		    	   
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
		  
		/*  loadData	: function(tableName, arrayData) {
			  var tableDemo = $('#' + tableName).DataTable();
				tableDemo.clear().draw(false);
				
				var indexs = 0;
				var indexRoot;;
				$.each(arrayData, function(index, value) {
					var count = parseInt(index) + 1;
					indexs++;
					indexRoot = indexs;
					var row = [
					           '<label>'+
						        '<input type="checkbox" class="i-checks vnc06-checkall" name="input[]">'+
						        '<input type="hidden" name="root" value="'+indexs+'">'+
						        '</label>'
						       ,
						        ''+value.chiTieu+''
								,
								''+value.donVI+'',
								''
					       ];
					tableDemo.row.add(row);
					tableDemo.draw(false);
					
					var childs = value.child;
					$.each(childs, function(index2, value2) {
						var count2 = parseInt(index2) + 1;
						
						var rowChild = [ '<label>'+
								        '<input name="child_treegrid-'+count+'" type="checkbox"  class="i-checks" name="input[]">'+
								        '<input type="hidden" name="child_'+indexs+'" value="'+indexs+'">'+
								        '<input type="hidden" value="'+indexRoot+'">'+
								        '</label>'
								       ,
								        ''+value2.chiTieu+''
										,
										''+value2.donVI+'',
										''
										];
						tableDemo.row.add(rowChild);
						tableDemo.draw(false);
						indexs++;
					});
				});
		  }*/
		}



