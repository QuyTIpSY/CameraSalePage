package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import bean.khachhangbean;

public class khachhangdao {
	public khachhangbean ktdn(String tk, String mk) {
		try {
			KetNoi kn= new KetNoi();
			kn.KetNoi();
			String sql="select * from KhachHang where taikhoan=? and matkhau=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, tk);
			cmd.setString(2, mk);
			ResultSet rs=cmd.executeQuery();
			khachhangbean kh=null;
			if(rs.next()){//Dang nhap dung
				long makhachhang=rs.getLong("makhachhang");
				String hoten=rs.getString("hoten");
				Date ngaysinh=rs.getDate("ngaysinh");
				String diachi=rs.getString("diachi");
				String email=rs.getString("email"); 
				String taikhoan=rs.getString("taikhoan");
				String matkhau=rs.getString("matkhau");
				String sdt=rs.getString("sdt");
				kh=new khachhangbean(makhachhang, hoten, ngaysinh, diachi, email, taikhoan, matkhau, sdt);
			}
			rs.close();kn.cn.close();
			return kh;
			
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
	}
	
	public void DangKy(String hoten, String ngaysinh, String diachi, String email, String taikhoan, String matkhau, String sdt) {
		try {
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="insert into KhachHang(hoten, ngaysinh, diachi, email, taikhoan, matkhau, sdt)\r\n"
					+ "values (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			cmd.setString(1, hoten);
			cmd.setString(2, ngaysinh);
			cmd.setString(3, diachi);
			cmd.setString(4, email);
			cmd.setString(5, taikhoan);
			cmd.setString(6, matkhau);
			cmd.setString(7, sdt);
			cmd.executeUpdate();
			
			kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
