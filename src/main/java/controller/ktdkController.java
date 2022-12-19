package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.khachhangbo;

/**
 * Servlet implementation class ktdkController
 */
@WebServlet("/ktdkController")
public class ktdkController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdkController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String taikhoan=request.getParameter("taikhoan");
		String mathau=request.getParameter("mathau");
		String xacnhanmatkhau=request.getParameter("xacnhanmatkhau");
		String email=request.getParameter("email");
		String sdt=request.getParameter("sdt");
		String hoten=request.getParameter("hoten");
		
		String gioitinh=request.getParameter("gioitinh");
		String ngay=request.getParameter("ngaysinh");
		String thang=request.getParameter("thangsinh");
		String nam=request.getParameter("namsinh");
		String diachi=request.getParameter("diachi");
	
		String ngaysinh;
		
		
		if(taikhoan=="" || mathau=="" || xacnhanmatkhau=="" || email=="" || sdt=="" || hoten=="") {
			response.sendRedirect("dangkyController");
		}else {
			if(ngay.equals("Ngày sinh") || thang.equals("Tháng") || nam.equals("Năm") || gioitinh.equals("Giới tính")) {
				response.sendRedirect("dangkyController");
			}else {
				khachhangbo khbo=new khachhangbo();
				ngaysinh=nam+"/"+thang+"/"+ngay;
				System.out.println(gioitinh);
				System.out.println(ngaysinh);
				khbo.DangKy(hoten, ngaysinh, diachi, email, taikhoan, xacnhanmatkhau, sdt);
				response.sendRedirect("dangnhapController");
			}
			
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
