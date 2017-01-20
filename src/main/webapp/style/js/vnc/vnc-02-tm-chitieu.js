var arrayTest = [];
var arrayTest2 = [];
var arrayTestTemp = [];
var items = [[2, 1, 2 ], [3,0,0,1] ];
$(document).ready(function() {
	/* Start Up When Publish */
	// /////////////////////
	eventTable.initTableTest();
	arrayData(items);
	/*arrayData2(items);*/
	eventTable.loadData('vnc02-treetable', arrayTest);


	$('#vnc02-createdate .input-group.date').datepicker({
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : false,
		autoclose : true,
		setDate: new Date(),
		language: 'vi',
		todayBtn : "linked",
	}).datepicker("setDate","0");
	
	$('#vnc02-updatedate .input-group.date').datepicker({
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : false,
		autoclose : true,
		setDate: new Date(),
		language: 'vi',
		todayBtn : "linked",
	}).datepicker("setDate","0");

	$('.context-menu-vnc02').on('click', function(e) {
		console.log('clicked', this);
	});

	$('#vnc02-treetable').treegrid();
	
	contextMenu();
	
	
});

var eventTable = {
	initTableTest : function() {
		var tableSetting = $('#vnc02-treetable')
				.DataTable(
						{
							"responsive" : true,
							"bLengthChange" : false,
							"bFilter" : false,
							"bInfo" : false,
							"bSort" : false,
							"bPaginate" : false,
							"fnRowCallback" : function(nRow, aData,
									iDisplayIndex, iDisplayIndexFull) {
								var row = $(nRow).children().eq(1).children()
										.eq(0).children();
								var check = $(row).attr('name');
								if (row != null && row != undefined
										&& check == 'root') {
									var rootClass = $(row).attr("class");
									var rootID = $(row).attr("id");
									$(nRow).addClass(rootClass);
									$(nRow).attr('id', rootID);

								} else if (row != null && row != undefined
										&& check == 'child') {
									var childClass = $(row).attr("class");
									var childID = $(row).attr("id");
									$(nRow).addClass(childClass);
									$(nRow).attr('id', childID);

								}else if (row != null && row != undefined
										&& check == 'grandson') {
									var childClass = $(row).attr("class");
									var childID = $(row).attr("id");
									$(nRow).addClass(childClass);
									$(nRow).attr('id', childID);

								}

								return nRow;
							},
							"drawCallback" : function(settings) {

								$('#vnc02-treetable').treegrid();

								$('.context-menu-vnc02').on('click',
										function(e) {
											console.log('clicked', this);
										});

							},
							 "pagingType": "full_numbers",
							"language" : {
								"paginate" : {
									 "sFirst": '<i class="fa fa-angle-double-left" aria-hidden="true"></i>',
					                 "previous":  '<i class="fa fa-angle-left" aria-hidden="true"></i>',
					                 "sNext":   '<i class="fa fa-angle-right" aria-hidden="true"></i>',
					                 "sLast": '<i class="fa fa-angle-double-right" aria-hidden="true"></i>'
								},
								"search" : "",
								"sInfo" : "",
								"sInfoEmpty" : false,
								"zeroRecords" : " ",
								"sInfoFiltered" : "",
							},
						});
	},
	
	clickModal : function(idButton, positain, id) {
		$('#' + idButton).on('click', function() {
	
	
			if (positain == 'addone') {
				$('#vnc02-tm-chitieu').modal('hide');	
				var arrGrandSon=[];
				var rowChild = {
					"chiTieu" : $("#tenchitieucon").val(),
					"donVI" : $("#donvitinh_chitieucon").val(),
					"grand" : arrGrandSon
				}
				
				$("#tenchitieucon").val('');
				$("#donvitinh_chitieucon").val('');
				
				/*document.getElementById('tenchitieu').value = '';
				document.getElementById('donvitinh_chitieu').value = '';*/
				
				var classRow = $(this).attr("class");
				var startclass = classRow.indexOf("treegrid-parent-");
				var parentclass = classRow.substring(startclass, startclass + 17);
				var parentid = classRow.substring(startclass + 16,startclass + 17);
				id = id.replace("treegrid-", "");
		
				// LOAD TABLE AGAIN
				
				/*Find rootid*/
				var idroot;
				var temp = parseInt(id);
				var tong = 0;
				for (var i = 0; i < items.length; i++) {
					for(var y = 0; y < items[i][0] ; y++){
						tong += (items[i][y+1]+1);
					
					}
					tong++;
					if (temp <= tong) {
						idroot = i;
						break;
					}
				}
				items[idroot][0] = items[idroot][0] + 1;
				items[idroot].push(0);
				
				arrayData(items);
				
				var last = arrayTest[idroot]['child'].length-1;
				arrayTest[idroot]['child'][last]= rowChild;
				eventTable.loadData('vnc02-treetable',arrayTest);
				
			} else if (positain == 'addchild') {
				$('#vnc02-tm-chitieucon').modal('hide');	
				var rowGrandSon = {
						"chiTieu" : $("#tenchitieu").val(),
						"donVI" : $("#donvitinh_chitieu").val(),
					}
				
				$("#tenchitieu").val('');
				$("#donvitinh_chitieu").val('');
				
				/*Find rootid*/
				var idroot;
				var temp = parseInt(id);
				var tong = 0;
				for (var i = 0; i < items.length; i++) {
					for(var y = 0; y < items[i][0] ; y++){
						tong += (items[i][y+1]+1);
					
					}
					tong++;
					if (temp <= tong) {
						idroot = i;
						break;
					}
				}
				
				//Find child
				var idgrand = 0;
				var check =0;
				var tong2=0;
				for (var i = 0; i < items.length; i++) {
					
					for(var y = 0; y < items[i][0] ; y++){
						tong2 += (items[i][y+1]+1);
						if (temp <= (tong2+1)) {
							idgrand = y+1;
							check = 1;
							break;
						}
					}
					tong2++;
					if(check == 1){
						break;
					}
				
				}
				
				
				items[idroot][idgrand] = items[idroot][idgrand] + 1;
				
				arrayData(items);
				var lastson = arrayTest[idroot]['child'][idgrand-1]['grand'].length -1;
				arrayTest[idroot]['child'][idgrand-1]['grand'][lastson] = rowGrandSon;
				eventTable.loadData('vnc02-treetable',arrayTest);
			}
		});
	},

	loadData : function(tableName, arrayData) {
		var tableDemo = $('#' + tableName).DataTable();
		tableDemo.clear().draw(false);
		var temp = 1;
		$.each(arrayData,
						function(index, value) {

							var idRoot = temp;
							var row = [

									'' + value.chiTieu + '',
									'<span>'
											+ value.donVI
											+ '<input type="hidden" name="root" class="treegrid-'
											+ idRoot + '" id="treegrid-'
											+ idRoot + '"></span>', ];
							tableDemo.row.add(row);
							tableDemo.draw(false);
							temp++;

							var childs = value.child;
							$.each(childs,
											function(index2, value2) {
												var idChild = temp;
												var rowChild = [

														'' + value2.chiTieu
																+ '',
														'<span>'
																+ value2.donVI
																+ '<input type="hidden" name="child" class="treegrid-'
																+ temp
																+ ' treegrid-parent-'
																+ idRoot
																+ ' context-menu-vnc02" id="treegrid-'
																+ temp
																+ '"></span>', ];
												tableDemo.row.add(rowChild);
												tableDemo.draw(false);
												temp++;
												
												var grandsons = value2.grand;
													$.each(grandsons,
															function(index3, value3) {
														
														var rowGrandSon = [

																		'' + value3.chiTieu
																				+ '',
																		'<span>'
																				+ value3.donVI
																				+ '<input type="hidden" name="grandson" class="treegrid-'
																				+ temp
																				+ ' treegrid-parent-'
																				+ idChild
																				+ ' context-menu-vnc02s" id="treegrid-'
																				+ temp
																				+ '"></span>', ];
																tableDemo.row.add(rowGrandSon);
																tableDemo.draw(false);
																temp++;
													});
											});
						});
	},
	loadDataTest : function(tableName, arrayData) {
		var no = 1;
		$.each(arrayData, function(index, value) {
			var stt = parseInt(index) + 1;
			var rowRoot = '<tr id="treegrid-'+stt+'" class="treegrid-'+stt+'">'+
								'<td>'+value.chiTieu+'</td>'+
								'<td>'+value.donVI+'</td>'+
							'</tr>';
			$('#'+tableName+' tbody').append(rowRoot);
			
			no++;
			var childs = value.child;
			if (childs.length > 0) {
				$.each(childs, function(index2, value2) {
					var idChild = no;
					var rowChild = '<tr id="treegrid-'+no+'" class="treegrid-'+no+' treegrid-parent-'+stt+'">'+
										'<td>'+value2.chiTieu+'</td>'+
										'<td>'+value2.donVI+'</td>'+
									'</tr>';
					$('#'+tableName+' tbody').append(rowChild);
					
					no++;
					var grandsons = value2.grand;
					if (grandsons.length > 0) {
						$.each(grandsons, function(index3, value3) {
							var rowGrandsons = '<tr id="treegrid-'+no+'" class="treegrid-parent-'+idChild+'">'+
													'<td>'+value3.chiTieu+'</td>'+
													'<td>'+value3.donVI+'</td>'+
												'</tr>';
							$('#'+tableName+' tbody').append(rowGrandsons);
							no++;
						});
					}
				});
			}
		});
	}
}

function contextMenu() {
	$.contextMenu({
		selector : '.context-menu-vnc02',
		callback : function(key, options) {
			switch (key) {
			case "addone":
				//Get id of tree
				var id = $(this).attr("id");
				$('#vnc02-tm-chitieu').modal('show');
				
				eventTable.clickModal('themmoichitieu', 'addone', id);
				break;
			case "addchild":
				var id = $(this).attr("id");
				id = id.replace("treegrid-", "");
				$('#vnc02-tm-chitieucon').modal('show');
				eventTable.clickModal('themmoichitieucon', 'addchild', id);
				break;
			case "delete":
				 swal({
				        title: "Bạn muốn xóa?",
				        text: " Dữ liệu sẽ không thể hồi phục sau khi xóa!",
				        type: "warning",
				        showCancelButton: true,
				        confirmButtonColor: "#DD6B55",
				        confirmButtonText: "Xóa!",
				        closeOnConfirm: false
				    }, function () {
				        swal("Đã Xóa!", "Dữ liệu đã được xóa.", "success");
				    });
				/*arrayTestTemp = arrayTest;
				var id = $(this).attr('id');
				id = id.replace(
						"treegrid-", "");
				
				Find rootid
				var idroot;
				var idchild;
				var temp = parseInt(id);
				var position = temp;
				var tong = 0;
				var check =0;
				for (var i = 0; i < items.length; i++) {
					position--;
					for(var y = 0; y < items[i][0] ; y++){
						if(position >= (items[i][y+1]+1)){
							position = position - (items[i][y+1]+1);
						
							position = position - (items[i][y+1]+1);
							if(position <= 0){
								idroot = i;
								idchild = y
								childgrand = y + 1 +  position;
								check = 1;
								break;
							}
						}else{
							position = position - (items[i][y+1]+1);
							if(position <= 0){
								idroot = i;
								idchild = y
								childgrand = y + 1 +  position;
								check = 1;
								break;
							}
						}
					}
					if(check == 1){
						break;
					}
				}
				//Delete 
				if(childgrand >=0){
					arrayTestTemp[idroot]['child'].splice(idchild,1);
				}else{
					arrayTestTemp[idroot]['child'][(-childgrand)-1]['grand'].splice((-childgrand),1);
				}
				eventTable.loadData(
						'vnc02-treetable',
						arrayTestTemp);*/
				break;
			}
		},
		items : {
			"addone" : {
				name : "Thêm chỉ tiêu",
				icon : "edit"
			},
			"addchild" : {
				name : "Thêm chỉ tiêu con",
				icon : "edit"
			},
			"delete" : {
				name : "Xóa khỏi danh sách",
				icon : "delete"
			},
		}
	});
}

// Add row in data table for test
function arrayData(items) {
	var arrRoot = [];
	var temp = null;
	for (var i = 0; i < items.length; i++) {
	
		var arrChild = [];
		for (var int = 0; int < items[i][0]; int++) {
			var arrGrandSon = [];
			for (var y = 0; y < items[i][int+1]; y++) {

				var rowGrandSon = {
					"chiTieu" : "Thủy sản " + y,
					"donVI" : "triệu đồng",
				}
				arrGrandSon.push(rowGrandSon);
			}

			var rowChild = {
				"chiTieu" : "Thủy sản " + int,
				"donVI" : "triệu đồng",
				"grand" : arrGrandSon
			}
			arrChild.push(rowChild);
		}
		var rowRoot = {
				"chiTieu" : "Root Thủy sản " + i,
				"donVI" : "triệu đồng",
				"child" : arrChild,
				"temp" : temp
			}

			arrRoot.push(rowRoot);
	}

	arrayTest = arrRoot;
}

//Add row in data table for test
function arrayData2(items) {
	var arrRoot = [];
	var temp = null;
	for (var i = 0; i < items.length; i++) {
	
		var arrChild = [];
		for (var int = 0; int < items[i][0]; int++) {
			var arrGrandSon = [];
			for (var y = 0; y < items[i][int+1]; y++) {

				var rowGrandSon = {
					"chiTieu" : "Thủy sản " + y,
					"donVI" : "triệu đồng",
				}
				arrGrandSon.push(rowGrandSon);
			}

			var rowChild = {
				"chiTieu" : "Thủy sản " + int,
				"donVI" : "triệu đồng",
				"grand" : arrGrandSon
			}
			arrChild.push(rowChild);
		}
		var rowRoot = {
				"chiTieu" : "Root Thủy sản " + i,
				"donVI" : "triệu đồng",
				"child" : arrChild,
				"temp" : temp
			}

			arrRoot.push(rowRoot);
	}

	arrayTest2 = arrRoot;
}
