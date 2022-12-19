package bean;

import java.util.Date;

public class chitietgiohangbean {
	private long machitietgiohang;
	private String anh;
	private long masanpham;
	private String tensanpham;
	private long soluong;
	private long gia;
	private long thanhtien;
	private Date ngaymua;
	private Boolean damua;
	private long makhachhang;
	public chitietgiohangbean(long machitietgiohang, String anh, long masanpham, String tensanpham, long soluong,
			long gia, long thanhtien, Date ngaymua, Boolean damua, long makhachhang) {
		super();
		this.machitietgiohang = machitietgiohang;
		this.anh = anh;
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.ngaymua = ngaymua;
		this.damua = damua;
		this.makhachhang = makhachhang;
	}
	public chitietgiohangbean() {
		super();
	}
	public long getMachitietgiohang() {
		return machitietgiohang;
	}
	public void setMachitietgiohang(long machitietgiohang) {
		this.machitietgiohang = machitietgiohang;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(long masanpham) {
		this.masanpham = masanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public Boolean getDamua() {
		return damua;
	}
	public void setDamua(Boolean damua) {
		this.damua = damua;
	}
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
	}
	
	
	
}
