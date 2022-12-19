package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.chitietgiohangbean;
import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietgiohangbo;
import bo.giohangbo;

/**
 * Servlet implementation class suaxoaController
 */
@WebServlet("/suaxoaController")
public class suaxoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaxoaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String soluongcapnhat = request.getParameter("capnhat");
		String maspcapnhat = request.getParameter("maspcapnhat");
		String maspxoa = request.getParameter("maspxoa");
		
		HttpSession session = request.getSession();
		RequestDispatcher rd = null;
		khachhangbean kh=(khachhangbean)session.getAttribute("khachhang");
		long makh=kh.getMakhachhang();
		try {
			if(soluongcapnhat!=null && maspcapnhat!=null && kh!=null) {
				long soluong=Long.parseLong(soluongcapnhat);
				int masp=Integer.parseInt(maspcapnhat);
				
				giohangbo ghbo = (giohangbo)session.getAttribute("giohang");
				for(giohangbean list: ghbo.ds) {
					if(masp==list.getMasanpham()) {
						list.setSoluong(soluong);
					}
				}
				
				chitietgiohangbo ctghbo=new chitietgiohangbo();
				for(chitietgiohangbean list: ctghbo.chitietgh()) {
					if(masp==list.getMasanpham() && makh==list.getMakhachhang()) {
						ctghbo.CapNhatSoLuong(masp, soluong, makh);
					}
				}
				
				rd=request.getRequestDispatcher("giohang.jsp");
			}else {
				if(maspxoa!=null && kh!=null) {
					int masp=Integer.parseInt(maspxoa);
					
					giohangbo ghbo = (giohangbo)session.getAttribute("giohang");
					for(giohangbean list: ghbo.ds) {
						if(masp==list.getMasanpham()) {
							ghbo.xoa(masp);
						}
					}
					
					chitietgiohangbo ctghbo=new chitietgiohangbo();
					for(chitietgiohangbean list: ctghbo.chitietgh()) {
						if(masp==list.getMasanpham() && makh==list.getMakhachhang()) {
							ctghbo.Xoa(masp, false, makh);
						}
					}
					session.setAttribute("giohang", ghbo);
					rd=request.getRequestDispatcher("giohang.jsp");
				}
			}
			
			rd=request.getRequestDispatcher("giohang.jsp");
			rd.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
