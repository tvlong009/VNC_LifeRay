$(document).ready(function() {
	/*Start Up When Publish*/
 eventTable.initTableTest();

});

var eventTable = {
  initTableTest : function() {
   var tableSetting = $('#vnc18-table').DataTable({
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


