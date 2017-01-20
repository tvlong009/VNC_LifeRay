<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<!DOCTYPE html>
	<portlet:renderURL var="trangThaiURL">
		<portlet:param name="action" value="showFormTrangThai"/>
	</portlet:renderURL>
			   
	<portlet:renderURL var="NhomChiTieuURL">
		<portlet:param name="action" value="showFormNhomChiTieu"/>
	</portlet:renderURL>

<nav class="navbar navbar-static-top" role="navigation">
				<div class="navbar-header">
					<button aria-controls="navbar" aria-expanded="false"
						data-target="#navbar" data-toggle="collapse"
						class="navbar-toggle collapsed" type="button">
						<i class="fa fa-reorder"></i>
					</button>
					<a href="./vnc-00-trangchu.jsp" class="navbar-brand">Viện Nghiên Cứu</a>
				</div>
				
			
			     
				<div class="navbar-collapse collapse" id="navbar">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a aria-expanded="false" role="button"
							href="#" class="dropdown-toggle" data-toggle="dropdown"> Danh Mục <span class="caret"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<li><a href="<%=trangThaiURL.toString()%>"><i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Trạng thái</a></li>
								<li><a href="./vnc-25-dm-kybaocao.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Kỳ báo cáo</a></li>
								<li><a href="./vnc-26-dm-cotchitieu.jsp"> <i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Cột chỉ tiêu</a></li>
								<li><a href="./vnc-03-dn-donvichitieu.jsp"> <i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Đơn vị tính</a></li>
								<li><a href="./vnc-04-dn-nguoncungcapdulieu.jsp"> <i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Danh sách đơn vị</a></li>
								<li><a href="./vnc-14-dn-nguoncungcapdulieudangvanban.jsp"> <i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Danh sách phòng ban</a></li>
							</ul>
						</li>
						
						<li class="dropdown"><a aria-expanded="false" role="button"
							href="#" class="dropdown-toggle" data-toggle="dropdown"> Thống Kê<span class="caret"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<li><a href="<%=NhomChiTieuURL.toString()%>"><i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Bộ chỉ tiêu</a></li>
								<li><a href="./vnc-05-dn-thoidiemcungcapdulieu.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Biểu mẫu báo cáo</a></li>
								<li><a href="./vnc-18-tk-theochitieutukhoa.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Báo cáo ngành</a></li>
								
							</ul>
							</li>
						
						<li class="dropdown"><a aria-expanded="false" role="button"
							href="#" class="dropdown-toggle" data-toggle="dropdown"> Thông Báo<span class="caret"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<li><a href="./vnc-09-ht-nhacnhocacdonvibaocao.jsp"><i class="fa fa-arrow-right" aria-hidden="true"></i> &nbsp; Thông báo nhắc nhở</a></li>
							</ul>
							</li>	
							
							<li class="dropdown"><a aria-expanded="false" role="button"
							href="#" class="dropdown-toggle" data-toggle="dropdown"> Hệ Thống<span class="caret"></span>
						</a>
							<ul role="menu" class="dropdown-menu">
								<li><a href="./vnc-13-ql-phanquyentruycapbaocao.jsp"> <i class="fa fa-arrow-right" aria-hidden="true"></i>  &nbsp;  Phân quyền báo cáo</a></li>
							</ul>
							</li>	
					</ul>
					<ul class="nav navbar-top-links navbar-right">
						<li><a href="/VNC_Demo/"> <i class="fa fa-sign-out"></i>
								Đăng Xuất
						</a></li>
					</ul>
				</div>
			</nav>