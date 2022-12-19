package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.chitietgiohangbean;

public class chitietgiohangdao {
	public ArrayList<chitietgiohangbean> chitietgh(){
		try {
			ArrayList<chitietgiohangbean> ds=new ArrayList<chitietgiohangbean>();
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="select * from ChiTietGioHang";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			ResultSet rs=cmd.executeQuery();
			
			while(rs.next()) {
				long machitietgiohang=rs.getLong("machitietgiohang");
				String anh=rs.getString("anh");
				long masanpham=rs.getLong("masanpham");
				String tensanpham=rs.getString("tensanpham");
				long soluong=rs.getLong("soluong");
				long gia=rs.getLong("thanhtien");
				long thanhtien=rs.getLong("thanhtien");
				Date ngaymua=rs.getDate("ngaymua");
				Boolean damua=rs.getBoolean("damua");
				long makhachhang=rs.getLong("makhachhang");
				ds.add(new chitietgiohangbean(machitietgiohang, anh, masanpham, tensanpham, soluong, gia, thanhtien, ngaymua, damua, makhachhang));
			}
			kn.cn.close();
			rs.close();
			return ds;
			
		} catch (Exception e) {
			e.printStackTrace(); return null;
			// TODO: handle exception
		}
	}
	
	public void ThemVaoGioHang(String anh, int masanpham, String tensanpham, long soluong,
			long gia, long thanhtien, java.sql.Date ngaymua, Boolean damua, long makhachhang){
		try {
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="insert into ChiTietGioHang(anh, masanpham, tensanpham, soluong, gia, thanhtien, ngaymua, damua, makhachhang)\r\n"
					+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			
			cmd.setString(1, anh);
			cmd.setInt(2, masanpham);
			cmd.setString(3, tensanpham);
			cmd.setLong(4, soluong);
			cmd.setLong(5, gia);
			cmd.setLong(6, thanhtien);
			cmd.setDate(7, ngaymua);
			cmd.setBoolean(8, damua);
			cmd.setLong(9, makhachhang);
			
			cmd.executeUpdate();
			
			kn.cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	public void Xoa(int masanpham, Boolean damua, long makhachhang){
		try {
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="delete from ChiTietGioHang where masanpham=? and damua=? and makhachhang=?";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			
			cmd.setInt(1, masanpham);
			cmd.setBoolean(2, damua);
			cmd.setLong(3, makhachhang);
			
			cmd.executeUpdate();
			
			kn.cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	public void CapNhatDaMua(int masanpham, Boolean damua, long makhachhang){
		try {
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="update ChiTietGioHang set damua=? where masanpham=? and makhachhang=?";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			
			cmd.setBoolean(1, damua);
			cmd.setInt(2, masanpham);		
			cmd.setLong(3, makhachhang);
			
			cmd.executeUpdate();
			
			kn.cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	public void CapNhatSoLuong(int masanpham, long soluong, long makhachhang){
		try {
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="update ChiTietGioHang set soluong=? where masanpham=? and makhachhang=?";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			
			cmd.setLong(1, soluong);
			cmd.setInt(2, masanpham);		
			cmd.setLong(3, makhachhang);
			
			cmd.executeUpdate();
			
			kn.cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
