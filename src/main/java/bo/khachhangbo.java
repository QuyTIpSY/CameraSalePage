package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao=new khachhangdao();
	public khachhangbean ktdn(String taikhoan, String matkhau) {
		return khdao.ktdn(taikhoan, matkhau);
	}
	
	public void DangKy(String hoten, String ngaysinh, String diachi, String email, String taikhoan, String matkhau, String sdt) {
		khdao.DangKy(hoten, ngaysinh, diachi, email, taikhoan, matkhau, sdt);
	}
}
