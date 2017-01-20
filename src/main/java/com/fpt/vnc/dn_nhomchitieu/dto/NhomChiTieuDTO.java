package com.fpt.vnc.dn_nhomchitieu.dto;

import com.fpt.vnc.model.iDto;

public class NhomChiTieuDTO extends iDto {

	/**
	 * Trang Thai DTO
	 */
	private static final long serialVersionUID = 1L;

	private int idBoChiTieu;
	private String tenBoChiTieu;
	public int getIdBoChiTieu() {
		return idBoChiTieu;
	}
	public void setIdBoChiTieu(int idBoChiTieu) {
		this.idBoChiTieu = idBoChiTieu;
	}
	public String getTenBoChiTieu() {
		return tenBoChiTieu;
	}
	public void setTenBoChiTieu(String tenBoChiTieu) {
		this.tenBoChiTieu = tenBoChiTieu;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
