package bean;

public class loaibean {
	private String maloai;
	private String tenloai;
	private String anh;
	public loaibean(String maloai, String tenloai, String anh) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
		this.anh = anh;
	}
	public loaibean() {
		super();
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public String getanh() {
		return anh;
	}
	public void setanh(String anh) {
		this.anh = anh;
	}
	
}
