package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sanphambean;

public class sanphamdao {
	public ArrayList<sanphambean> getsanpham(){
		try {
			ArrayList<sanphambean> ds=new ArrayList<sanphambean>();
			
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="select * from SanPham";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			ResultSet rs=cmd.executeQuery();
			
			while(rs.next()) {
				int masanpham=rs.getInt("masanpham");
				String maloai=rs.getString("maloai");
				String tensanpham=rs.getString("tensanpham");
				long gia=rs.getLong("gia");
				String tinhtrang=rs.getString("tinhtrang");
				String anh=rs.getString("anh");
				String chitietmaloai=rs.getString("chitietmaloai");
				ds.add(new sanphambean(masanpham, maloai, tensanpham, gia, tinhtrang, anh, chitietmaloai));
			}
			
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace(); return null;
		}
	}
}
