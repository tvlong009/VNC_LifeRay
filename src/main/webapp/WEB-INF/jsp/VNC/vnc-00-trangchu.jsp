<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<html>
<head>
<link href="<c:url value='/style/css/others/inspinia/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/style/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/animate.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/others/inspinia/style.css' />" rel="stylesheet">

<link href="<c:url value='/style/css/vnc/mycss.css' />" rel="stylesheet">
<link href="<c:url value='/style/css/vnc/vnc-00-trangchu.css' />" rel="stylesheet">
<style>
#wrapper {
   padding-top: 0px;

}
.container-fluid{
	margin-right: auto; 
    margin-left: auto; 
    padding-left: 0px;
    padding-right: 0px;
}
</style>
</head>
<body>
<div class="top-navigation" id="wrapper">
		<div id="page-wrapper" class="white-bg">

			<!-- A PART CONTENT -->
			<div class="wrapper wrapper-content row white-bg paddingtop-0px padding-bottom-20px tooltip-demo">
				<div class="col-lg-1"></div>
					<div class="col-lg-10">
						<div class="ibox-title">
						<h2 class="text-success">
							Chào mừng bạn đến với viện nghiên cứu
						</h2>
					</div>
					<div class="ibox-content">
						<h4>Giới Thiệu</h4>
						<textarea width="70%" name="content" class="form-control" rows="10">
							Hệ thống được triển khai tại sở Kế hoạch - Đầu tư và các sở ban ngành liên quan. Hệ thống xây dựng phục vụ nhu cầu báo cáo các chỉ tiêu Kinh tế - Xã hội và khai thác thông tin của các sở ban ngành trên địa bàn thành phố Hồ Chí Minh.
							
							Hệ thống Quản lý chỉ tiêu Kinh tế - Xã hội bao gồm các khối chức năng:
														
							- Quản lý Báo cáo ngành: Cho phép tất cả các sở ban ngành quản lý báo cáo của đơn vị mình.
														
							- Quản lý Báo cáo tổng hợp: Cung cấp các chức năng quản lý báo cáo Tổng hợp cho sở Kế hoạch - Đầu tư.
														
							- Quản lý dữ liệu chuyên ngành sở Thông tin & Truyền thông: Xây dựng CSDL chuyên ngành riêng phục vụ cho quản lý các dữ liệu chuyên ngành sở Thông tin - Truyền thông.
														
							- Chức năng tra cứu thông tin: Cho phép người dùng tra cứu, tìm kiếm các báo cáo theo từ khóa cần tìm.
														
							- Khối chức năng Quản trị hệ thống: Quản lý người dùng trên hệ thống phần mềm và phân quyền truy cập các chức năng.
			              </textarea>
					</div>
				</div>
				<div class="col-lg-1"></div>
			</div>
			
			<div class="wrapper wrapper-content row white-bg paddingtop-0px padding-bottom-20px tooltip-demo ">
				<a href="./vnc-18-tk-theochitieutukhoa.jsp">
				   <div class="col-lg-4">
				         <div class="contact-box">
				             <div class="col-sm-4">
				                 <div class="text-center">
				                     <img alt="image"  src="/o/com.fpt.vnc.VNC/style/images/homepage/icon_home_1.png">
				                 </div>
				             </div>
				             <div class="col-sm-8 text-center">
				                 <h3><strong>Báo Cáo Ngành</strong></h3>
				             </div>
				             <div class="clearfix"></div>
				         </div>
				    </div> 
			     </a>
			     <portlet:renderURL var="NhomChiTieuURL">
			     	<portlet:param name="action" value="showFormNhomChiTieu"/>
			     </portlet:renderURL>
			     <a href="<%=NhomChiTieuURL.toString()%>">
				    <div class="col-lg-4">
				        <div class="contact-box">
				            <div class="col-sm-4">
				                <div class="text-center">
				                   <img alt="image" src="/o/com.fpt.vnc.VNC/style/images/homepage/icon_home_2.png">
				                </div>
				            </div>
				            <div class="col-sm-8 text-center">
				                <h3><strong>Bộ Chỉ Tiêu</strong></h3>
				            </div>
				            <div class="clearfix"></div>
				        </div>
				    </div>
			     </a>
			     <portlet:renderURL var="thoidiemcungcapdulieuURL">
			     	<portlet:param name="action" value="thoidiemcungcapdulieuForm"/>
			     </portlet:renderURL>
			     <a href="<%=thoidiemcungcapdulieuURL.toString()%>">
				    <div class="col-lg-4">
				        <div class="contact-box">
				            <div class="col-sm-4">
				                <div class="text-center">
				                    <img alt="image" src="/o/com.fpt.vnc.VNC/style/images/homepage/icon_home_3.png">
				                </div>
				            </div>
				            <div class="col-sm-8 text-center">
				                <h3><strong>Biểu Mẫu Báo Cáo</strong></h3>
				            </div>
				            <div class="clearfix"></div>
				        </div>
				    </div>
			     </a>
			     <a href="./vnc-04-dn-nguoncungcapdulieu.jsp">
				    <div class="col-lg-4">
				        <div class="contact-box" >
				            <div class="col-sm-4">
				                <div class="text-center">
				                     <img alt="image"  src="/o/com.fpt.vnc.VNC/style/images/homepage/icon_home_4.png">
				                </div>
				            </div>
				            <div class="col-sm-8 text-center">
				                <h3><strong>Đơn vị hành chính</strong></h3>
				            </div>
				            <div class="clearfix"></div>
				        </div>
				    </div>
			    </a>
			      <a href="./vnc-13-ql-phanquyentruycapbaocao.jsp">
				      <div class="col-lg-4">
				          <div class="contact-box">
				              <div class="col-sm-4">
				                  <div class="text-center">
				                       <img alt="image"  src="/o/com.fpt.vnc.VNC/style/images/homepage/icon_home_5.png">
				                  </div>
				              </div>
				              <div class="col-sm-8 text-center">
				                  <h3><strong>Hệ Thống</strong></h3>
				              </div>
				              <div class="clearfix"></div>
				          </div>
				      </div>
			      </a>
			      <a href="./vnc-09-ht-nhacnhocacdonvibaocao.jsp">
				       <div class="col-lg-4">
				          <div class="contact-box">
				              <div class="col-sm-4">
				                  <div class="text-center">
				                       <img alt="image" src="/o/com.fpt.vnc.VNC/style/images/homepage/icon_home_6.png">
				                  </div>
				              </div>
				              <div class="col-sm-8 text-center">
				                  <h3><strong>Thông Báo</strong></h3>
				              </div>
				              <div class="clearfix"></div>
				          </div>
				      </div>
			      </a>
			</div>
</div>
</div>
<!-- Main JS -->
<script type="text/javascript">
 $(document).ready(function() {
  $('html body .portlet .portlet-content h2.portlet-title-text').remove();
 });
</script>

<script src="<c:url value="/style/js/others/inspinia/jquery-2.1.1.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/metisMenu/jquery.metisMenu.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/slimscroll/jquery.slimscroll.min.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/bootstrap.js" />"></script>
<!-- Custom and plugin javascript -->
<script src="<c:url value="/style/js/others/inspinia/inspinia.js" />"></script>
<script src="<c:url value="/style/js/others/inspinia/plugins/pace/pace.min.js" />"></script>

</body>
</html>