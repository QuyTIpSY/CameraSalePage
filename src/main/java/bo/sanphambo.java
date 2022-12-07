package bo;

import java.util.ArrayList;

import bean.sanphambean;
import dao.sanphamdao;

public class sanphambo {
	sanphamdao spdao=new sanphamdao();
	ArrayList<sanphambean> ds;
	public ArrayList<sanphambean> getsanpham(){
		ds=spdao.getsanpham();
		return ds;
	}
}
