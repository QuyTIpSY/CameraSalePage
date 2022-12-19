package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
   public ArrayList<giohangbean> ds= new ArrayList<giohangbean>();
   
   public void Them(int masanpham, String tensanpham, String anh, long soluong, long gia)	{	   
	   for(giohangbean s: ds)
		   if(s.getMasanpham()==masanpham) {
			   	s.setSoluong(s.getSoluong()+soluong);
			   	return;
		   }
		   ds.add(new giohangbean(masanpham, tensanpham, anh, soluong, gia));
	   }
	
	public long TongTien() {
		long s=0;
		for(giohangbean gh: ds)
			s=s+gh.getThanhtien();
		return s;
	}
	
	public void xoa(int masanpham) {
		for(giohangbean gh:ds) {
			if(gh.getMasanpham()==masanpham) {
				ds.remove(gh); break;
			}
		}
	}

}

