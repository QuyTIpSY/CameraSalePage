package bo;

import java.util.ArrayList;

import bean.chitietgiohangbean;
import dao.chitietgiohangdao;

public class chitietgiohangbo {
	chitietgiohangdao ctghdao=new chitietgiohangdao();
	ArrayList<chitietgiohangbean> ds=new ArrayList<chitietgiohangbean>();
	public ArrayList<chitietgiohangbean> chitietgh(){
		ds=ctghdao.chitietgh();
		return ds;
	}
	
	public void ThemVaoGioHang(String anh, int masanpham, String tensanpham, long soluong,
			long gia, long thanhtien, java.sql.Date ngaymua, Boolean damua, long makhachhang){
		ctghdao.ThemVaoGioHang(anh, masanpham, tensanpham, soluong, gia, thanhtien, ngaymua, damua, makhachhang);
	}
	
	public void Xoa(int masanpham, Boolean damua, long makhachhang){
		ctghdao.Xoa(masanpham, damua, makhachhang);
	}
	
	public void CapNhatDaMua(int masanpham, Boolean damua, long makhachhang){
		ctghdao.CapNhatDaMua(masanpham, damua, makhachhang);
	}
	
	public void CapNhatSoLuong(int masanpham, long soluong, long makhachhang){
		ctghdao.CapNhatSoLuong(masanpham, soluong, makhachhang);
	}
}
