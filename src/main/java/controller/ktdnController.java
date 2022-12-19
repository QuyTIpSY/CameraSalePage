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
import bean.khachhangbean;
import bo.chitietgiohangbo;
import bo.giohangbo;
import bo.khachhangbo;

/**
 * Servlet implementation class ktdnController
 */
@WebServlet("/ktdnController")
public class ktdnController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdnController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taikhoan=request.getParameter("taikhoan");
		String matkhau=request.getParameter("matkhau");
		
		RequestDispatcher rd;
	 	
	 	if(taikhoan!=null && matkhau!=null) {
		 		khachhangbo khbo= new khachhangbo();
		 		khachhangbean kh=khbo.ktdn(taikhoan, matkhau);
		 	if(kh!=null) {
	            HttpSession session = request.getSession();//Tao doi tuong session
	            session.setAttribute("khachhang", kh);
	            
	            giohangbo ghbo=new giohangbo();
				if(session.getAttribute("giohang")==null) {
					ghbo=new giohangbo();
					session.setAttribute("giohang", ghbo);
				}
				
				chitietgiohangbo ctghbo=new chitietgiohangbo();
				
				for(chitietgiohangbean list:ctghbo.chitietgh()) {
					if(list.getDamua()==false && list.getMakhachhang()==kh.getMakhachhang()) {
						ghbo=(giohangbo)session.getAttribute("giohang");
						ghbo.Them((int)list.getMasanpham(), list.getTensanpham(), list.getAnh(), list.getSoluong(), list.getGia());
					}
				}   
	            rd= request.getRequestDispatcher("trangchuController");
		 	}
		 	else
		 		  rd= request.getRequestDispatcher("dangnhapController");	
	 	}else
	 		 rd= request.getRequestDispatcher("dangnhapController");
	 		
	 rd.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
