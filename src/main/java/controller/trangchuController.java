package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loaibean;
import bean.sanphambean;
import bo.loaibo;
import bo.sanphambo;

/**
 * Servlet implementation class trangchuController
 */
@WebServlet("/trangchuController")
public class trangchuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangchuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		sanphambo spbo=new sanphambo();
		ArrayList<sanphambean> dssanpham=spbo.getsanpham();
		
		
		loaibo lbo=new loaibo();
		ArrayList<loaibean> dsloai=lbo.getloai();
		request.setAttribute("dsloai", dsloai);
		
		String timkiem=request.getParameter("keyword");
		if(timkiem!=null) {
			long sotien=Long.MAX_VALUE;
			try {
				sotien=Long.parseLong(timkiem);
			} catch (Exception e) {
				sotien=-1;
			}

			if(sotien>=0) {
				dssanpham=spbo.TimGia(sotien);
			}else {
				dssanpham=spbo.Tim(timkiem);
			}	
			
			System.out.println(sotien);
		}
		request.setAttribute("dssanpham", dssanpham);
		
		RequestDispatcher rd=request.getRequestDispatcher("htsanpham.jsp");
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
