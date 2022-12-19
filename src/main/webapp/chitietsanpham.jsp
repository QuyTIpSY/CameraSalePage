<%@page import="bean.khachhangbean"%>
<%@page import="bean.chitietsanphambean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.awt.font.ImageGraphicAttribute"%>
<%@page import="bean.sanphambean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style >
	.header-top{
		display: flex; 
		justify-content: space-between; 
		margin-top: 10px;
		margin-bottom: 10px;
		align-items: center;
	}
	
	hr{
		margin-top: 5px !important;
	    margin-bottom: 15px !important;
	    border: 0;
	    border-top: 1px solid #DDD !important;
	}
	
	td>div{
		height: 300px;
		display: flex;
		align-items: center;
	}
	
	table{
		width: 100%
	}
	
	#sidebar{
		width: 250px;
	}
	
	#content-top{
		display: flex;
	    justify-content: space-evenly;;
	}
	
	
	
	.box-title{
		background-color: #E01931; 
		color: white; 
		font-weight: bold; 
		height: 50px;
		display: flex;
		justify-content: space-between;
		background: #FFFFF7;
	}
	
	.content-left{
		display: flex;
	    flex-wrap: wrap;
	    align-content: center;	
	    background: #E01931; 
	    padding-right: 15px
	}
	
	.content-right{
		font-weight: bold; 
		font-size: 16px; 
		display: flex; 
		align-items: center;
	}
	
	#content-mid-box{
		margin-top: 15px; 
	}
	
	.box-content{
		margin-top: 10px;
	}
	
	#wp-content-content{
		display: flex;
	    justify-content: space-between;
	}
	
	#content-title{
		display: flex;
	}
	
	#wp-content-motasp{
		
	}
	
	table, th, td {
	  border: 1px solid white;
	  border-collapse: collapse;
	}
  	
  	td{
  		padding: 8px !important;
   		width: 300px;
  	}
  	
  	#thongsokythuat{
  		    width: 750px;
  	}
  	
  	tr:nth-last-child(odd){
			background: #E7E7E7;
	}
	
	tr:nth-last-child(even){
			background: #FACA9B;
	}

</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="htsanpham.css">
<title>Trang chủ</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
</head>
<body style="background: ghostwhite;">
	<div id="wrapper" style="background-color: ghostwhite">
		<div id="header" class="outer header-main">
			<div class="header-top">
				<div class="logo">
					<a href="#"><img src="Images/logo.jpg" width="200" ></a>	
				</div>
			
				<div class="search">
					<form action="#" method="post" class="form-search">
						<div>
							<input type="text" name="keyword" placeholder="Tìm kiếm sản phẩm, mã sản phẩm,..." style="height: 40px; width: 350px;">
							<button type="button" class="btn-search" style="height: 40px;">Search</button>
						</div>
					</form>
				</div>
				
				
				<div style="display: flex;">
					<div class="tmp" style="margin-right: 20px;">
						<span><img src="Images/top1.png" width="40" style="background-color: #44BBFF"></span> 
						<div class="tmp1">
							<span>CAM KẾT 100%</span>
							<span>HÀNG CHÍNH HÃNG</span>
						</div>
					
					</div>
					<div class="tmp" style="margin-right: 20px;">
						<img src="Images/top2.png" width="40" style="background-color: #44BBFF">
						<div class="tmp1">
							<span>MUA HÀNG</span>	
							<span>ONLINE</span>	
						</div>			
					</div>
					<div class="tmp" >
						<img src="Images/top3.png" width="40" style="background-color: #44BBFF">
						<div class="tmp1">
							<span style="color: red; font-weight: bold">0123 456 789</span>	
							<span style="color: red; font-weight: bold">0123 789 456</span>	
						</div>
					</div>
				</div>
				
			</div>
			
			<div class="header-bot">
				<nav class="navbar navbar-inverse" style="background-color: #E01931">
				  <div class="container-fluid">
				    <ul class="nav navbar-nav">
				      <li class="active"><a  style="background-color: #5659C9; font-weight: bold" href="#">TẤT CẢ SẢN PHẨM</a></li>
				      <li><a style="color: white; font-weight: bold" href="#">GIỎ HÀNG</a></li>    	
				      <li><a style="color: white; font-weight: bold" href="#">THANH TOÁN</a></li>
				      <li><a style="color: white; font-weight: bold" href="#">LỊCH SỬ MUA HÀNG</a></li>
				    </ul>
				    <ul class="nav navbar-nav navbar-right">
				    	<%if(session.getAttribute("khachhang")!=null) {%>
				    		<li><a style="color: white; font-weight: bold" href="dangxuatController"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
					      	<li><a href="trangchuController"><span style="font-weight: bold; color: white;" class="glyphicon glyphicon-user"></span><b style="color: white"> Xin chào, 
					      	<%			      	
						      	khachhangbean kh =(khachhangbean)session.getAttribute("khachhang");
						      	out.print(kh.getHoten());
					      	%></b></a></li>
				      <%}else{ %>
				      	<li><a style="color: white; font-weight: bold" href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>		 
				      	<li><a style="color: white; font-weight: bold" href="dangkyController"><span class="glyphicon glyphicon-log-out"></span> Đăng ký</a></li>	 
				      <%} %> 
				    </ul>
				  </div>
				</nav>
			</div>
		</div>
		
		<div id="wp-content">
			<div id="wp-content-content">
			<div id="content-title">
				<%chitietsanphambean ctsp=(chitietsanphambean)request.getAttribute("ctsp");
				String anh=(String)request.getAttribute("anh");
				String tensp=(String)request.getAttribute("tensp");
				int masp=(int)request.getAttribute("masp");
				long gia=(long)request.getAttribute("gia");%>
				<div>
					<img style="border-radius: 13px; width: 200px; padding-top: 35px;" src="<%=anh%>">
				</div>
				<div >
					<div style="font-size: 19px;font-weight: bold;color: #E01931;;padding-top: 35px;padding-left: 10px;padding-right: 15px;"><%=tensp %></div>
					
					<div style="font-weight: 900;font-size: 15px;padding-top: 10px;padding-left: 10px;padding-right: 15px;">Giá: <%=gia %></div>
					
					<div style="padding-left: 10px; padding-top: 15px">
					
						<form action="giohangController?masp=<%=masp%>&anh=<%=anh%>&tensp=<%=tensp%>&gia=<%=gia%>" method="post">
							<b>Số lượng </b><input style="padding-right: 7px; width: 50px;" type="number" name="soluong" value="1" min="1" max="1000">
							<b style="padding-left: 30px;">Tình trạng: </b>Còn hàng <br> <br>
							<input style="height: 40px;width: 80%;font-size: x-large;font-weight: bold;
							color: white;background: #E01931;border: 1px solid #E01931" type="submit" value="🛒 Mua hàng">
						</form>
						
					</div>
				</div>
			</div>
			
			<div id="thongsokythuat">
				<%if(ctsp.getChitietmaloai().equals("cameraip_than4mp") || ctsp.getChitietmaloai().equals("cameraip_than5mp") ||
						ctsp.getChitietmaloai().equals("cameraip_dome4mp") || ctsp.getChitietmaloai().equals("cameraip_dome5mp") ||
						ctsp.getChitietmaloai().equals("camera_ipai") || ctsp.getChitietmaloai().equals("camera_fullcolor4mp")){%>
					<table>
						<tr> <div style="font-weight: bold; font-size: 25px; color: #44BBFF;">THÔNG SỐ SẢN PHẨM</div> </tr>
						<tr>
							<td><strong>Độ phân giải / Công nghệ nén video</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Ghi Âm</strong>></td>
							<td> <%=ctsp.getGhiam() %></td>
						</tr>
						<tr>
							<td><strong>Gởi tin nhắn cảnh báo đến điện thoại</strong>></td>
							<td> <%=ctsp.getGoismscanhbao() %></td>
						</tr>
						<tr>
							<td><strong>Face ID</strong>></td>
							<td> <%=ctsp.getNhandienkhuonmat() %></td>
						</tr>
						<tr>
							<td><strong>Human Detect</strong>></td>
							<td> <%=ctsp.getPhathienconnguoi() %></td>
						</tr>
						<tr>
							<td><strong>Đèn hồng ngoại / Ống kính / Nguồn</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Kết nối đầu ghi / Kết nối User</strong>></td>
							<td> <%=ctsp.getKetnoidaughi_ketnoiuser() %></td>
						</tr>
						<tr>
							<td><strong>Chất liệu vỏ / Kích thước (mm)</strong>></td>
							<td> <%=ctsp.getChatlieuvo_kichthuoc() %></td>
						</tr>
					</table>
				<%}%>
				
				<%if(ctsp.getChitietmaloai().equals("dangthanvadome")){%>
					<table>
						<tr> <div style="font-weight: bold; font-size: 25px; color: #44BBFF;">THÔNG SỐ SẢN PHẨM</div> </tr>
						<tr>
							<td><strong>Kết nối Wifi</strong>></td>
							<td> <%=ctsp.getKetnoiwifi() %></td>
						</tr>
						<tr>
							<td><strong>Độ phân giải / Công nghệ nén video</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Ghi Âm</strong>></td>
							<td> <%=ctsp.getGhiam() %></td>
						</tr>
						<tr>
							<td><strong>Gởi tin nhắn cảnh báo đến điện thoại</strong>></td>
							<td> <%=ctsp.getGoismscanhbao() %></td>
						</tr>
						<tr>
							<td><strong>Loa báo động / Phát lời chào</strong>></td>
							<td> <%=ctsp.getLoabaodong_phatloichao() %></td>
						</tr>
						<tr>
							<td><strong>Human Detect</strong>></td>
							<td> <%=ctsp.getPhathienconnguoi() %></td>
						</tr>
						<tr>
							<td><strong>Đàm thoại hai chiều</strong>></td>
							<td> <%=ctsp.getDamthoai2chieu() %></td>
						</tr>
						<tr>
							<td><strong>Hỗ trợ thẻ nhớ MicroSD</strong>></td>
							<td> <%=ctsp.getHotrothenho() %></td>
						</tr>
						<tr>
							<td><strong>Đèn hồng ngoại / Ống kính / Nguồn</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Kết nối đầu ghi / Kết nối User</strong>></td>
							<td> <%=ctsp.getKetnoidaughi_ketnoiuser() %></td>
						</tr>
						<tr>
							<td><strong>Chất liệu vỏ / Kích thước (mm)</strong>></td>
							<td> <%=ctsp.getChatlieuvo_kichthuoc() %></td>
						</tr>
					</table>
				<%} %>
				
				<%if(ctsp.getChitietmaloai().equals("dangdieukhienxoay")){%>
					<table>
						<tr> <div style="font-weight: bold; font-size: 25px; color: #44BBFF;">THÔNG SỐ SẢN PHẨM</div> </tr>
						<tr>
							<td><strong>Kết nối Wifi</strong>></td>
							<td> <%=ctsp.getKetnoiwifi() %></td>
						</tr>
						<tr>
							<td><strong>Điều khiển xoay bằng điện thoại</strong>></td>
							<td> <%=ctsp.getDieukhienxoay() %></td>
						</tr>
						<tr>
							<td><strong>Độ phân giải / Công nghệ nén video</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Ghi Âm</strong>></td>
							<td> <%=ctsp.getGhiam() %></td>
						</tr>
						<tr>
							<td><strong>Gởi tin nhắn cảnh báo đến điện thoại</strong>></td>
							<td> <%=ctsp.getGoismscanhbao() %></td>
						</tr>
						<tr>
							<td><strong>Loa báo động / Phát lời chào</strong>></td>
							<td> <%=ctsp.getLoabaodong_phatloichao() %></td>
						</tr>
						<tr>
							<td><strong>Human Detect</strong>></td>
							<td> <%=ctsp.getPhathienconnguoi() %></td>
						</tr>		
						<tr>
							<td><strong>Đàm thoại hai chiều</strong>></td>
							<td> <%=ctsp.getDamthoai2chieu() %></td>
						</tr>
						<tr>
							<td><strong>Hỗ trợ thẻ nhớ MicroSD</strong>></td>
							<td> <%=ctsp.getHotrothenho() %></td>
						</tr>
						<tr>
							<td><strong>Đèn hồng ngoại / Ống kính / Nguồn</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Kết nối đầu ghi / Kết nối User</strong>></td>
							<td> <%=ctsp.getKetnoidaughi_ketnoiuser() %></td>
						</tr>
						<tr>
							<td><strong>Chất liệu vỏ / Kích thước (mm)</strong>></td>
							<td> <%=ctsp.getChatlieuvo_kichthuoc() %></td>
						</tr>
					</table>
				<%} %>
				
				<%if(ctsp.getChitietmaloai().equals("camera_fullcolor5mp")){%>
					<table>
						<tr> <div style="font-weight: bold; font-size: 25px; color: #44BBFF;">THÔNG SỐ SẢN PHẨM</div> </tr>
						<tr>
							<td><strong>Độ phân giải / Công nghệ nén video</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Ghi Âm</strong>></td>
							<td> <%=ctsp.getGhiam() %></td>
						</tr>
						<tr>
							<td><strong>Gởi tin nhắn cảnh báo đến điện thoại</strong>></td>
							<td> <%=ctsp.getGoismscanhbao() %></td>
						</tr>		
						<tr>
							<td><strong>Human Detect</strong>></td>
							<td> <%=ctsp.getPhathienconnguoi() %></td>
						</tr>
						<tr>
							<td><strong>Đèn hồng ngoại / Ống kính / Nguồn</strong>></td>
							<td> <%=ctsp.getDophangiai_congnghenenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Kết nối đầu ghi / Kết nối User</strong>></td>
							<td> <%=ctsp.getKetnoidaughi_ketnoiuser() %></td>
						</tr>
						<tr>
							<td><strong>Chất liệu vỏ / Kích thước (mm)</strong>></td>
							<td> <%=ctsp.getChatlieuvo_kichthuoc() %></td>
						</tr>
					</table>
				<%}%>
				
				<%if(ctsp.getChitietmaloai().equals("daughi_ip")){%>
					<table>
						<tr> <div style="font-weight: bold; font-size: 25px; color: #44BBFF;">THÔNG SỐ SẢN PHẨM</div> </tr>
						<tr>
							<td><strong>Số kênh / Chuẩn nén video</strong>></td>
							<td> <%=ctsp.getSokenh_chuannenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Ghi Âm</strong>></td>
							<td> <%=ctsp.getGhiam() %></td>
						</tr>
						<tr>
							<td><strong>Gởi tin nhắn cảnh báo đến điện thoại</strong>></td>
							<td> <%=ctsp.getGoismscanhbao() %></td>
						</tr>		
						<tr>
							<td><strong>Human Detect</strong>></td>
							<td> <%=ctsp.getPhathienconnguoi() %></td>
						</tr>
						<tr>
							<td><strong>Face ID</strong>></td>
							<td> <%=ctsp.getNhandienkhuonmat() %></td>
						</tr>
						<tr>
							<td><strong>Playback thông minh</strong>></td>
							<td> <%=ctsp.getPlaybackthongminh() %></td>
						</tr>
						<tr>
							<td><strong>Thiết bị hiển thị</strong>></td>
							<td> <%=ctsp.getThietbihienthi() %></td>
						</tr>
						<tr>
							<td><strong>Chế độ ghi video</strong>></td>
							<td> <%=ctsp.getChedoghivideo() %></td>
						</tr>
						<tr>
							<td><strong>Chế độ xem lại video</strong>></td>
							<td> <%=ctsp.getChedoxemlaivideo() %></td>
						</tr>
						<tr>
							<td><strong>Số camera xem lại cùng lúc</strong>></td>
							<td> <%=ctsp.getSocamxemlaicungluc() %></td>
						</tr>
						<tr>
							<td><strong>Cổng kết nối</strong>></td>
							<td> <%=ctsp.getCongketnoi() %></td>
						</tr>
						<tr>
							<td><strong>Kết nối ổ cứng</strong>></td>
							<td> <%=ctsp.getKetnoiocung() %></td>
						</tr>
						<tr>
							<td><strong>Kích thước (mm)</strong>></td>
							<td> <%=ctsp.getKichthuoc() %></td>
						</tr>
					</table>
				<%}%>
				
				<%if(ctsp.getChitietmaloai().equals("daughi_5in1")){%>
					<table>
						<tr> <div style="font-weight: bold; font-size: 25px; color: #44BBFF;">THÔNG SỐ SẢN PHẨM</div> </tr>
						<tr>
							<td><strong>Số kênh / Chuẩn nén video</strong>></td>
							<td> <%=ctsp.getSokenh_chuannenvideo() %></td>
						</tr>
						<tr>
							<td><strong>Thiết bị hiển thị</strong>></td>
							<td> <%=ctsp.getThietbihienthi() %></td>
						</tr>
						<tr>
							<td><strong>Chế độ ghi video</strong>></td>
							<td> <%=ctsp.getChedoghivideo() %></td>
						</tr>
						<tr>
							<td><strong>Chế độ xem lại video</strong>></td>
							<td> <%=ctsp.getChedoxemlaivideo() %></td>
						</tr>
						<tr>
							<td><strong>Số camera xem lại cùng lúc</strong>></td>
							<td> <%=ctsp.getSocamxemlaicungluc() %></td>
						</tr>
						<tr>
							<td><strong>Cổng kết nối</strong>></td>
							<td> <%=ctsp.getCongketnoi() %></td>
						</tr>
						<tr>
							<td><strong>Kết nối ổ cứng</strong>></td>
							<td> <%=ctsp.getKetnoiocung() %></td>
						</tr>
						<tr>
							<td><strong>Kích thước (mm)</strong>></td>
							<td> <%=ctsp.getKichthuoc() %></td>
						</tr>
					</table>
				<%}%>
				
			</div>
		</div>
		
		<div id="wp-content-motasp">
			<div style="font-weight: bold; font-size: 20px;">MÔ TẢ SẢN PHẨM</div><hr>
			<div style="word-spacing: 3px; line-height: 25px;"><%=ctsp.getMota() %></div> 
		</div>
		</div>
					
		<div id="footer" style="">
				<br><hr>
				<div style="display: flex; justify-content: center; margin-bottom: 15px">
					<span>© 2022 CÔNG TY TNHH MTV VĂN QUÝ  - Thiết kế web: </span>
					<span style="font-weight: bold">VĂN QUÝ</span> <br>
				</div>			
		</div>
	</div>
	
</body>
</html>