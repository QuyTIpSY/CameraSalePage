package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
		try {
			ArrayList<loaibean> ds=new ArrayList<loaibean>();
			
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="select * from Loai";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			ResultSet rs=cmd.executeQuery();
			
			while(rs.next()) {
				String maloai=rs.getString("maloai");
				String tenloai=rs.getString("tenloai");
				String anh=rs.getString("anh");
				ds.add(new loaibean(maloai, tenloai, anh));
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
