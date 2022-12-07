package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.chitietsanphambean;

public class chitietsanphamdao {
	public chitietsanphambean getchitietsp(int masp){
		try {
			chitietsanphambean ctsp=new chitietsanphambean();
			
			KetNoi kn=new KetNoi();
			kn.KetNoi();
			
			String query="select * from ChiTietSanPham where masanpham=?";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			cmd.setInt(1, masp);
			ResultSet rs=cmd.executeQuery();
			
			if(rs.next()) {
				int machitietsanpham=rs.getInt("machitietsanpham");
				String dophangiai_congnghenenvideo=rs.getString("dophangiai_congnghenenvideo");
				String ghiam=rs.getString("ghiam");
				String goismscanhbao=rs.getString("goismscanhbao");
				String nhandienkhuonmat=rs.getString("nhandienkhuonmat");
				String phathienconnguoi=rs.getString("phathienconnguoi");
				String denhongngoai_ongkinh_nguon=rs.getString("denhongngoai_ongkinh_nguon");
				String ketnoidaughi_ketnoiuser=rs.getString("ketnoidaughi_ketnoiuser");
				String chatlieuvo_kichthuoc=rs.getString("chatlieuvo_kichthuoc");
				int masanpham=rs.getInt("masanpham");
				String mota=rs.getString("mota");
				String ketnoiwifi=rs.getString("ketnoiwifi");
				String loabaodong_phatloichao=rs.getString("loabaodong_phatloichao");
				String damthoai2chieu=rs.getString("damthoai2chieu");
				String hotrothenho=rs.getString("hotrothenho");
				String dieukhienxoay=rs.getString("dieukhienxoay");
				String sokenh_chuannenvideo=rs.getString("sokenh_chuannenvideo");
				String playbackthongminh=rs.getString("playbackthongminh");
				String thietbihienthi=rs.getString("thietbihienthi");
				String chedoghivideo=rs.getString("chedoghivideo");
				String chedoxemlaivideo=rs.getString("chedoxemlaivideo");
				String socamxemlaicungluc=rs.getString("socamxemlaicungluc");
				String congketnoi=rs.getString("socamxemlaicungluc");
				String ketnoiocung=rs.getString("ketnoiocung");
				String kichthuoc=rs.getString("kichthuoc");
				ctsp=new chitietsanphambean(machitietsanpham, dophangiai_congnghenenvideo, ghiam, goismscanhbao, nhandienkhuonmat, 
						phathienconnguoi, denhongngoai_ongkinh_nguon, ketnoidaughi_ketnoiuser, chatlieuvo_kichthuoc, masanpham, mota, 
						ketnoiwifi, loabaodong_phatloichao, damthoai2chieu, hotrothenho, dieukhienxoay, sokenh_chuannenvideo, 
						playbackthongminh, thietbihienthi, chedoghivideo, chedoxemlaivideo, socamxemlaicungluc, congketnoi, ketnoiocung, kichthuoc);
			}
			
			kn.cn.close();
			rs.close();
			return ctsp;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace(); return null;
		}
	}
}
