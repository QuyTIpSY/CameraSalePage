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
import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietgiohangbo;
import bo.giohangbo;

/**
 * Servlet implementation class ktttController
 */
@WebServlet("/ktttController")
public class ktttController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktttController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			khachhangbean khbean=(khachhangbean)session.getAttribute("khachhang");
			
			long makh=khbean.getMakhachhang();
			Boolean damua=true;
			
			java.util.Date n =new java.util.Date();
			SimpleDateFormat dd= new SimpleDateFormat("yyyy-MM-dd");
			String st=dd.format(n);
			Date ngaymua= dd.parse(st);
			
			chitietgiohangbo ctghbo=new chitietgiohangbo();
			giohangbo ghbo=(giohangbo)session.getAttribute("giohang");
			
			for(giohangbean list:ghbo.ds ) {
				for(chitietgiohangbean listctgh: ctghbo.chitietgh()) {
					if(list.getMasanpham()==listctgh.getMasanpham() && listctgh.getMakhachhang()==makh && listctgh.getDamua()==false) {
						ctghbo.CapNhatDaMua(list.getMasanpham(), true, makh);
					}
				}
			}
			session.removeAttribute("giohang");
//			giohangbo gh= new giohangbo();
//			gh=new giohangbo();
//			session.setAttribute("giohang", gh);
			RequestDispatcher rd=request.getRequestDispatcher("thanhtoantc.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
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
