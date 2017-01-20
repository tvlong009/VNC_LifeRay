/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.fpt.vnc;

import java.util.List;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.fpt.vnc.dn_nhomchitieu.dao.NhomChiTieuDAO;
import com.fpt.vnc.dn_nhomchitieu.dto.NhomChiTieuDTO;
import com.fpt.vnc.ds_trangthai.dao.TrangThaiDAO;
import com.fpt.vnc.ds_trangthai.dto.TrangThaiDTO;
import com.fpt.vnc.model.ServiceSupport;

@Controller
@RequestMapping("VIEW")
public class PortletViewController extends ServiceSupport{
	
	@RenderMapping
	public String question(Model model) {
		return "VNC/vnc-00-trangchu";
	}
	
	@RenderMapping(params = "action=render")
	public String redirectTo(RenderRequest request,RenderResponse response) {
		String resulf = "";
		String value = (String) request.getAttribute("renderTo");
		int render = 0;
		if (value != null) render = Integer.parseInt(value);
		switch (render) {
		case 1:
			resulf = "VNC/vnc-00-trangchu";
			break;
		case 2:
			resulf = "VNC/";
			break;
		case 3:
			resulf = "VNC/";
			break;
		case 4:
			resulf = "VNC/";
			break;
		case 5:
			resulf = "VNC/";
			break;
		case 6:
			resulf = "VNC/";
			break;
		case 7:
			resulf = "VNC/";
			break;
		case 8:
			resulf = "VNC/";
			break;
		case 9:
			resulf = "VNC/";
			break;
		case 10:
			resulf = "VNC/";
			break;
		case 11:
			resulf = "VNC/";
			break;
		default:
			resulf = "VNC/";
			break;
		}
		return resulf;
	}
	
	@ActionMapping(params = "action=sendRedirect")
	public void actionClick(ActionRequest request, ActionResponse response) {
		response.setRenderParameter("action", "render"); 
		request.setAttribute("renderTo", "1");
	}
	
	@RenderMapping(params = "action=showFormNhomChiTieu")
	public String showNhomChiTieu(Model model) {
		NhomChiTieuDAO nhomChiTieuDAO = new NhomChiTieuDAO(sessionFactory);
		List<NhomChiTieuDTO> list = nhomChiTieuDAO.selectAll();
		
		model.addAttribute("params", list);
		return "VNC/vnc-01-dn-nhomchitieu";
	}
	

	@RenderMapping(params = "action=showThemMoiNhomChiTieu")
	public String showThemMoiNhomChiTieu(Model model) {
		
		return "VNC/vnc-02-tm-chitieu";
	}
	
	@RenderMapping(params = "action=thoidiemcungcapdulieuForm")
	public String showThoiDiemCungCapDuLieu(Model model) {
		
		return "VNC/vnc-05-dn-thoidiemcungcapdulieu";
	}
	
	//Trang thai
	@RenderMapping(params = "action=showFormTrangThai")
	public String showTrangThai(Model model) {
		TrangThaiDAO trangThaiDAO = new TrangThaiDAO(sessionFactory);
		List<TrangThaiDTO> list = trangThaiDAO.selectAll();
		
		model.addAttribute("params", list);
		return "VNC/vnc-24-dm-trangthai";
	}
	
	@ActionMapping(params = "action=themMoiTrangThai")
	public void highlightResults(ActionRequest actionRequest, ActionResponse actionResponse, Model model) {
	// source code 

	}
	@ActionMapping(params = "action=capNhatTrangThai")
	private void downloadZip(ActionRequest actionRequest, ActionResponse actionResponse, Model model) {
	// source code 
	}
}