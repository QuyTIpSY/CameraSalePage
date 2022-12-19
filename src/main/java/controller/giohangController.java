package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String soluong=request.getParameter("soluong");
		String masp=request.getParameter("masp");
		String anh=request.getParameter("anh");
		String tensp=request.getParameter("tensp");
		String gia=request.getParameter("gia");
		HttpSession session=request.getSession();
		khachhangbean kh=(khachhangbean)session.getAttribute("khachhang");
		RequestDispatcher rd = null;
		
		if(kh!=null) {
			if(masp!=null && soluong!=null && gia!=null ) {
				long soluong1=Long.parseLong(soluong);
				long gia1=Long.parseLong(gia);
				int masp1=Integer.parseInt(masp);
				
				giohangbo ghbo=new giohangbo();
				if(session.getAttribute("giohang")==null) {
					ghbo=new giohangbo();
					session.setAttribute("giohang", ghbo);
				}
				ghbo=(giohangbo)session.getAttribute("giohang");
				ghbo.Them(masp1, tensp, anh, soluong1, gia1);
				session.setAttribute("giohang", ghbo);
				
				chitietgiohangbo ctghbo=new chitietgiohangbo();
				
				if(kh!=null) {
					int flag=0;
					for(chitietgiohangbean list:ctghbo.chitietgh()) {
						if(list.getMasanpham()==masp1 && kh.getMakhachhang()==list.getMakhachhang() && list.getDamua()==false) {
							ctghbo.CapNhatSoLuong(masp1, (soluong1+list.getSoluong()), kh.getMakhachhang());
							flag=1; break;
						}		
					}
					
					if(flag==0) {
						try {
							java.util.Date n =new java.util.Date();
							SimpleDateFormat dd= new SimpleDateFormat("yyyy-MM-dd");
							String st=dd.format(n);
							Date ngaymua= dd.parse(st);
							ctghbo.ThemVaoGioHang(anh, masp1, tensp, soluong1, gia1, (soluong1*gia1), new java.sql.Date(ngaymua.getTime()), false, kh.getMakhachhang());
							rd=request.getRequestDispatcher("giohang.jsp");
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
						}
					}
				}
				
				rd=request.getRequestDispatcher("giohang.jsp");
			}
		}
		rd=request.getRequestDispatcher("giohang.jsp");
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
