package bean;

public class sanphambean {
	private int masanpham;
	private String maloai;
	private String tensanpham;
	private long gia;
	private String tinhtrang;
	private String anh;
	private String chitietmaloai;
	public sanphambean(int masanpham, String maloai, String tensanpham, long gia, String tinhtrang, String anh,
			String chitietmaloai) {
		super();
		this.masanpham = masanpham;
		this.maloai = maloai;
		this.tensanpham = tensanpham;
		this.gia = gia;
		this.tinhtrang = tinhtrang;
		this.anh = anh;
		this.chitietmaloai = chitietmaloai;
	}
	public sanphambean() {
		super();
	}
	public int getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getChitietmaloai() {
		return chitietmaloai;
	}
	public void setChitietmaloai(String chitietmaloai) {
		this.chitietmaloai = chitietmaloai;
	}
}
