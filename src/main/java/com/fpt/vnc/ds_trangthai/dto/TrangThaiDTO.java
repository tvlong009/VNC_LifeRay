package com.fpt.vnc.ds_trangthai.dto;

import com.fpt.vnc.model.iDto;

public class TrangThaiDTO extends iDto {

	/**
	 * Trang Thai DTO
	 */
	private static final long serialVersionUID = 1L;

	private int idTrangThai;
	private String maTrangThai;
	private String tenTrangThai;
	private String ngayTao;
	private String ngayCapNhat;
	
	public int getIdTrangThai() {
		return idTrangThai;
	}
	public void setIdTrangThai(int idTrangThai) {
		this.idTrangThai = idTrangThai;
	}
	public String getMaTrangThai() {
		return maTrangThai;
	}
	public void setMaTrangThai(String maTrangThai) {
		this.maTrangThai = maTrangThai;
	}
	public String getTenTrangThai() {
		return tenTrangThai;
	}
	public void setTenTrangThai(String tenTrangThai) {
		this.tenTrangThai = tenTrangThai;
	}
	public String getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(String ngayTao) {
		this.ngayTao = ngayTao;
	}
	public String getNgayCapNhat() {
		return ngayCapNhat;
	}
	public void setNgayCapNhat(String ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
