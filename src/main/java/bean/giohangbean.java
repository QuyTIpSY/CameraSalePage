package bean;

public class giohangbean {
	private int masanpham;
	private String tensanpham;
	private String anh;
	private long soluong;
	private long gia;
	private long thanhtien;
	public giohangbean(int masanpham, String tensanpham, String anh, long soluong, long gia) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.anh = anh;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = soluong*gia;
	}
	public giohangbean() {
		super();
	}
	public int getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
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
		return soluong*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	
}
