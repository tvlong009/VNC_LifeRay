package com.fpt.vnc.dn_thoidiemcungcapdulieu.dto;

import java.util.Date;

import com.fpt.vnc.model.iDto;

public class DNThoiDiemCungCapDuLieuDTO extends iDto {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String soHieu;
	private String tenBieuMau;
	private String donVi;
	private String kyBaoCao;
	private Date ngayTao;
	private String nguoiSua;
	private boolean hieuLuc;

	public String getSoHieu() {
		return soHieu;
	}

	public void setSoHieu(String soHieu) {
		this.soHieu = soHieu;
	}

	public String getTenBieuMau() {
		return tenBieuMau;
	}

	public void setTenBieuMau(String tenBieuMau) {
		this.tenBieuMau = tenBieuMau;
	}

	public String getDonVi() {
		return donVi;
	}

	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}

	public String getKyBaoCao() {
		return kyBaoCao;
	}

	public void setKyBaoCao(String kyBaoCao) {
		this.kyBaoCao = kyBaoCao;
	}

	public Date getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

	public String getNguoiSua() {
		return nguoiSua;
	}

	public void setNguoiSua(String nguoiSua) {
		this.nguoiSua = nguoiSua;
	}

	public boolean isHieuLuc() {
		return hieuLuc;
	}

	public void setHieuLuc(boolean hieuLuc) {
		this.hieuLuc = hieuLuc;
	}

}
