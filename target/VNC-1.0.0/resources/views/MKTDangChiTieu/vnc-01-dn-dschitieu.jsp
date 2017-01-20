<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/inspinia/font-awesome/css/font-awesome.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/plugins/iCheck/custom.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" />" rel="stylesheet">

<script src="<c:url value="/resources/inspinia/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/jquery-2.1.1.js" />"></script>

<!-- FooTable -->
<link href="<c:url value="/resources/inspinia/css/plugins/footable/footable.core.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/animate.css" />" rel="stylesheet">
<link href="<c:url value="/resources/inspinia/css/style.css" />" rel="stylesheet">

<!-- Mainly css -->
<link href="<c:url value="/resources/inspinia/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/mycss.css" />" rel="stylesheet">

<!-- Mainly scripts -->
<script src="<c:url value="/resources/inspinia/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/inspinia/js/jquery-2.1.1.js" />"></script>

<!-- Custom and plugin javascript -->
<script src="<c:url value="/resources/inspinia/js/inspinia.js" />"></script>

<title>Danh sách nhóm chỉ tiêu/chỉ tiêu</title>

</head>
<body>
	<div id="wrapper" style="padding: 0 10px 0 10px">
	  	<div>
	  		<div class="mis-thead" style="margin-top: 10px">
				<span class="z-span" style="background-color: #FFF !important">
					<span class="normal-label" style="font-style: normal !important;">Đơn vị Sở văn hóa Thể Thao và Du Lịch</span>
				</span>
			</div>
	  		<div class="mis-thead mis-bdr-orange">
				<span class="z-span">
					<span class="z-label">DANH SÁCH CHỈ TIÊU</span>
				</span>
			</div>
			
			<div class="box-content" style="height: 100%">
				<table class="table table-bordered">
					<colgroup>
						<col width="*">
						<col width="200">
					</colgroup>
					<tbody>
						<tr>
							<td colspan="2">
								<a href="#" title="Thêm chỉ tiêu" style="text-decoration: none;">
						          	<span style="height: 100%; color: #006fbd !important; font-size: 13px; font-weight: bold;">
										<img class="z-button-image" src="../../images/icon_sum_bct.png">Thêm chỉ tiêu
									</span>
						        </a>
							</td>
						</tr>
						<tr>
							<th>Chỉ tiêu</th>
							<th>Đơn vị tính</th>
						</tr>
						<tr>
							<td>
							</td>
							<td>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- Footer -->
			<div class="box-content" style="height: 100%; text-align: right; margin: 0; padding-top: 10px; padding-bottom: 10px">
				<button type="button" class="btn" style="background-color: #E0E0E0; margin-right: 5px" onclick="">
	  				Hủy
	  			</button>
	  			<button type="button" class="btn btn-success" onclick="">
	  				<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Cập nhật
	  			</button>
			</div>
	  	</div>
	</div>
	
	<script type="text/javascript">
	/* This is an echo of some data sent back via ajax                       */
	/* This data should be filtered by nodeID and return only childNodeID's. */
	/* vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv. */
	var jsonData = {
	  "nodeID": {
	    "1": [
	      
	       {"ID": "1.1",
	        "childNodeType": "branch",
	        "childData": [
	          "1.1: column 1",
	          "1.1: column 2"
	          ]
	      },
	      {"ID": "1.2",
	        "childNodeType": "leaf",
	        "childData": [
	          "1.2: column 1",
	          "1.2: column 2"
	          ]
	      },
	      {"ID":"1.3",
	        "childNodeType": "leaf",
	        "childData": [
	          "1.3: column 1",
	          "1.3: column 2"
	          ]
	      }
	      
	    ],
	    "1.1": [

	        {"ID":"1.1.1",
	          "childNodeType": "leaf",
	          "childData": [
	            "1.1.1: column 1",
	            "1.1.1: column 2"
	            ]
	        },
	        {"ID":"1.1.2",
	          "childNodeType": "leaf",
	          "childData": [
	            "1.1.2: column 1",
	            "1.1.2: column 2"
	            ]
	        }
	 
	    ],
	    "2": [

	        {"ID":"2.1",
	          "childNodeType": "leaf",
	          "childData": [
	            "2.1: column 1",
	            "2.1: column 2"
	            ]
	        },
	        {"ID":"2.2",
	          "childNodeType": "leaf",
	          "childData": [
	            "2.2: column 1",
	            "2.2: column 2"
	            ]
	        },
	        {"ID":"2.3",
	          "childNodeType": "leaf",
	          "childData": [
	            "2.3: column 1",
	            "2.3: column 2"
	            ]
	        }

	    ],
	    "3": [

	        {"ID":"3.1",
	          "childNodeType": "leaf",
	          "childData": [
	            "3.1: column 1",
	            "3.1: column 2"
	            ]
	        },
	        {"ID":"3.2",
	          "childNodeType": "leaf",
	          "childData": [
	            "3.2: column 1",
	            "3.2: column 2"
	            ]
	        },
	        {"ID":"3.3",
	          "childNodeType": "leaf",
	          "childData": [
	            "3.3: column 1",
	            "3.3: column 2"
	            ]
	        }
	        
	    ]
	  }
	};
	/* ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ */
	/* This is an echo of some data sent back via ajax                       */
	/* This data should be filtered by nodeID and return only childNodeID's. */
	// initialize treeTable
	$("#example-basic").treetable({
	    expandable:     true,
	    onNodeExpand:   nodeExpand,
	    onNodeCollapse: nodeCollapse
	});


	// expand node with ID "1" by default
	$("#example-basic").treetable("reveal", '1');


	// Highlight a row when selected
	$("#example-basic tbody").on("mousedown", "tr", function() {
	    $(".selected").not(this).removeClass("selected");
	    $(this).toggleClass("selected");
	});

	function nodeExpand () {
	    // alert("Expanded: " + this.id);
	  	getNodeViaAjax(this.id);  
	}

	function nodeCollapse () {
	    // alert("Collapsed: " + this.id);
	}

	function getNodeViaAjax(parentNodeID) {
	    $("#loadingImage").show();
	    
	    // ajax should be modified to only get childNode data from selected nodeID
	    // was created this way to work in jsFiddle
	    $.ajax({
			type: 'POST',
	        url: '/echo/json/',
	        data: {
	            json: JSON.stringify( jsonData )
	        },
	        success: function(data) {
	            $("#loadingImage").hide();
	    
	            var childNodes = data.nodeID[parentNodeID];
	            
	            if(childNodes) {
	                var parentNode = $("#example-basic").treetable("node", parentNodeID);

	                for (var i = 0; i < childNodes.length; i++) {
	                    var node = childNodes[i];

	                    var nodeToAdd = $("#example-basic").treetable("node",node['ID']);

	                    // check if node already exists. If not add row to parent node
	                    if(!nodeToAdd) {
	                        // create row to add
	                        var row ='<tr data-tt-id="' + 
	                            node['ID'] + 
	                            '" data-tt-parent-id="' +
	                            parentNodeID + '" ';
	                        if(node['childNodeType'] == 'branch') {
	                            row += ' data-tt-branch="true" ';
	                        }

	                        row += ' >';

	                        // Add columns to row
	                        for (var index in node['childData']) {
	                            var data = node['childData'][index];
	                            row += "<td>" + data + "</td>";
	                        }

	                        // End row
	                        row +="</tr>";
	                        
	                        $("#example-basic").treetable("loadBranch", parentNode, row);
	                    }

	                }
	            
	            }

	        },
	        error:function(error){
	            $("#loadingImage").hide();
	            alert('there was an error');  
	        },
	        dataType: 'json'
	    });
	}
	</script>
	
</body>
</html>