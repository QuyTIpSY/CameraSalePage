package bo;

import java.util.ArrayList;

import bean.loaibean;
import bean.sanphambean;
import dao.sanphamdao;

public class sanphambo {
	sanphamdao spdao=new sanphamdao();
	ArrayList<sanphambean> ds;
	public ArrayList<sanphambean> getsanpham(){
		ds=spdao.getsanpham();
		return ds;
	}
	
	public ArrayList<sanphambean> Tim(String key){
	  	 ArrayList<sanphambean> tam= new ArrayList<sanphambean>();
	  	 
	  	 for(sanphambean s: ds)
		   	if(s.getTensanpham().toLowerCase().trim().contains(key.toLowerCase().trim()))
		   			tam.add(s);
		 return tam;
	}
	
	public ArrayList<sanphambean> TimGia(long key){
	  	 ArrayList<sanphambean> tam= new ArrayList<sanphambean>();
	  	 for(sanphambean s: ds)
		   	if(s.getGia()>=key)
		   			tam.add(s);
		 return tam;
	}
}
