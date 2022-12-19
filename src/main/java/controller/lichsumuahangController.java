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
 * Servlet implementation class lichsumuahangController
 */
@WebServlet("/lichsumuahangController")
public class lichsumuahangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsumuahangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		giohangbo ghbo=new giohangbo();
		khachhangbean kh=(khachhangbean)session.getAttribute("khachhang");
		if(kh!=null) {
			if(session.getAttribute("lichsu")==null) {
				ghbo=new giohangbo();
				session.setAttribute("lichsu", ghbo);
			}
			
			chitietgiohangbo ctghbo=new chitietgiohangbo();
			
					
			for(chitietgiohangbean list:ctghbo.chitietgh()) {
				if(list.getDamua()==true && list.getMakhachhang()==kh.getMakhachhang()) {
					ghbo=(giohangbo)session.getAttribute("lichsu");
					ghbo.Them((int)list.getMasanpham(), list.getTensanpham(), list.getAnh(), list.getSoluong(), list.getGia());
				}
			}   
			rd=request.getRequestDispatcher("lichsumuahang.jsp");
		}else {
			rd=request.getRequestDispatcher("lichsumuahang.jsp");
		}
		
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
