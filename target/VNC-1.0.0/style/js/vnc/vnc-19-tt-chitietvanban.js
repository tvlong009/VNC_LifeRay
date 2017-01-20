$(document).ready(function() {
	/*Start Up When Publish*/
	 $('#vnc19-editor').summernote();
	 
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
	 $('#vnc-19-fileupload .image-preview-clear').click(function(){
	     $(' #vnc-19-fileupload .image-preview').attr("data-content","").popover('hide');
	     $(' #vnc-19-fileupload .image-preview-filename').val("");
	     $(' #vnc-19-fileupload .image-preview-clear').hide();
	     $(' #vnc-19-fileupload .image-preview-input input:file').val("");
	     $(" #vnc-19-fileupload .image-preview-input-title").text("Chọn File"); 
	 }); 
	 
	 // Create the preview image
	 $("#vnc-19-fileupload .image-preview-input input:file").change(function (){     
	     var img = $('<img/>', {
	         id: 'dynamic',
	         width:250,
	         height:200
	     });      
	     var file = this.files[0];
	     var reader = new FileReader();
	     // Set preview image into the popover data-content
	     reader.onload = function (e) {
	         $(" #vnc-19-fileupload .image-preview-input-title").text("Thay đổi");
	         $(" #vnc-19-fileupload .image-preview-clear").show();
	         $(" #vnc-19-fileupload .image-preview-filename").val(file.name);
	     }        
	     reader.readAsDataURL(file);
	 });  
	 /////////////////////////////////////////
});

var edit = function() {
    $(' #vnc19-editor .click2edit').summernote({focus: true});
};
var save = function() {
    var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
    $(' #vnc19-editor .click2edit').destroy();
};


