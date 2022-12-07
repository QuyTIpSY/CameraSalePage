package bo;

import java.util.ArrayList;

import bean.chitietsanphambean;
import dao.chitietsanphamdao;

public class chitietsanphambo {
	chitietsanphamdao ctspdao=new chitietsanphamdao();
	public chitietsanphambean ctsp(int masp){
		return ctspdao.getchitietsp(masp);
	}
}
