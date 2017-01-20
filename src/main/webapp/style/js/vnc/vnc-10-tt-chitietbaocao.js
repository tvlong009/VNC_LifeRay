$(document).ready(function() {
	/*Start Up When Publish*/
	 $('#vnc10-editor').summernote();
	 
//////////////////////////////////Copy from http://bootsnipp.com/snippets/8Agbr
	//Create the close button

	 var closebtn = $('<button/>', {
		    type:"button",
		    text: 'x',
		    id: 'close-preview',
		    style: 'font-size: initial;',
		});
	 
	 closebtn.attr("class","close pull-right");

	 // Clear event
	 $('#vnc-10-fileupload .image-preview-clear').click(function(){
	     $(' #vnc-10-fileupload .image-preview').attr("data-content","").popover('hide');
	     $(' #vnc-10-fileupload .image-preview-filename').val("");
	     $(' #vnc-10-fileupload .image-preview-clear').hide();
	     $(' #vnc-10-fileupload .image-preview-input input:file').val("");
	     $(" #vnc-10-fileupload .image-preview-input-title").text("Chọn File"); 
	 }); 
	 
	 // Create the preview image
	 $("#vnc-10-fileupload .image-preview-input input:file").change(function (){     
	     var img = $('<img/>', {
	         id: 'dynamic',
	         width:250,
	         height:200
	     });      
	     var file = this.files[0];
	     var reader = new FileReader();
	     // Set preview image into the popover data-content
	     reader.onload = function (e) {
	         $(" #vnc-10-fileupload .image-preview-input-title").text("Thay đổi");
	         $(" #vnc-10-fileupload .image-preview-clear").show();
	         $(" #vnc-10-fileupload .image-preview-filename").val(file.name);
	     }        
	     reader.readAsDataURL(file);
	 });  
	 /////////////////////////////////////////
	 $('#vnc10-treetable').treegrid();
});



var edit = function() {
    $(' #vnc10-editor .click2edit').summernote({focus: true});
};
var save = function() {
    var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
    $(' #vnc10-editor .click2edit').destroy();
};

var eventTable = {
		  initTableTest : function() {
		   var tableSetting = $('#vnc10-treetable').DataTable({
		    "responsive": true,
		       "bLengthChange": false,
		       "bFilter": false,
		       "bInfo": false,
		       "bSort": false,
		       "bPaginate":false,
		       "drawCallback": function(settings) {
		    	   $('#vnc10-treetable').treegrid();
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
