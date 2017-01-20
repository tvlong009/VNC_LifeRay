<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/inspinia/font-awesome/css/font-awesome.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/animate.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/plugins/summernote/summernote.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/plugins/summernote/summernote-bs3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/style.css" />" rel="stylesheet">

<link href="<c:url value="/resources/inspinia/css/plugins/chosen/chosen.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/plugins/dropzone/basic.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/plugins/dropzone/dropzone.css" />" rel="stylesheet">

<!-- Mainly css -->
<link href="<c:url value="/resources/css/mycss.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/bootstrap.min.css" />" rel="stylesheet">

<title>Cung cấp dữ liệu văn bản vào hệ thống</title>

</head>
<body>
	<div id="wrapper">
	  	<div class="wrapper wrapper-content">
			<div class="mis-thead mis-bdr-green" style="margin-top: 10px">
				<span class="z-span">
					<span class="z-label">Nội dung báo cáo</span>
				</span>
			</div>
			<div class="ibox">
                <div class="ibox-content">
                    <form id="my-awesome-dropzone" class="dropzone" action="#">
                        <div class="dropzone-previews"></div>
                        <button type="submit" class="btn btn-primary pull-left">Submit this form!</button>
                    </form>
                </div>
            </div>
			<div class="ibox">
				<div class="ibox-title">
                	<h5 style="font-weight: bold;">Nội Dung Nổi Bật</h5>
                </div>
                <div class="ibox-content no-padding">
                    <div class="summernote">
                        
                    </div>
                </div>
            </div>
	  	</div>
	</div>
	
<!-- Mainly scripts -->
<script src="<c:url value="/resources/inspinia/js/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/bootstrap.js" />"></script>

<script src="<c:url value="/resources/inspinia/js/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/resources/inspinia/js/inspinia.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/plugins/pace/pace.min.js" />"></script>

<!-- SUMMERNOTE -->
<script src="<c:url value="/resources/inspinia/js/plugins/summernote/summernote.min.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/plugins/dropzone/dropzone.js" />"></script>

<script>
    $(document).ready(function(){
        $('.summernote').summernote();
    });
    var edit = function() {
        $('.click2edit').summernote({focus: true});
    };
    var save = function() {
        var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
        $('.click2edit').destroy();
    };
    
    $(document).ready(function(){

        Dropzone.options.myAwesomeDropzone = {

            autoProcessQueue: false,
            uploadMultiple: true,
            parallelUploads: 100,
            maxFiles: 100,

            // Dropzone settings
            init: function() {
                var myDropzone = this;

                this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
                    e.preventDefault();
                    e.stopPropagation();
                    myDropzone.processQueue();
                });
                this.on("sendingmultiple", function() {
                });
                this.on("successmultiple", function(files, response) {
                });
                this.on("errormultiple", function(files, response) {
                });
            }

        }

   });
    
</script>
	
</body>
</html>