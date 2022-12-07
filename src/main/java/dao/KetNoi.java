package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
	public Connection cn;
	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Xong b1");
			cn=DriverManager.getConnection("jdbc:sqlserver://NVQUY\\SQLEXPRESS:1433;databaseName=QLCamera;user=sa; password=123456");
			System.out.println("Connected");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
//	public static void main(String[] args) {
//		KetNoi kn=new KetNoi();
//		kn.KetNoi();
//	}
}
