package bean;

import java.util.Date;

public class khachhangbean {
	private long makhachhang;
	private String hoten;
	private Date ngaysinh;
	private String diachi;
	private String email;
	private String taikhoan;
	private String matkhau;
	private String sdt;
	
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		
	}
	public khachhangbean(long makhachhang, String hoten, Date ngaysinh, String diachi, String email, String taikhoan,
			String matkhau, String sdt) {
		super();
		this.makhachhang = makhachhang;
		this.hoten = hoten;
		this.ngaysinh = ngaysinh;
		this.diachi = diachi;
		this.email = email;
		this.taikhoan = taikhoan;
		this.matkhau = matkhau;
		this.sdt = sdt;
	}
	public khachhangbean() {
		super();
	}
	
}
