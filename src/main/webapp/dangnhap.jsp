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
		width: 200px;
		margin-right: 10px;
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
		background: #FFFFF7
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
	
	#side-bar-login {
		border: 5px solid #00BFFF;
		text-align: left;
		padding-left: 20px;
		padding-right: 30px;
		position: relative;
		background: white;
		line-height: 30px;
		margin-bottom: 0px;
	    margin-top: 0px;
	    margin-left: 10px;
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
					<a href="trangchuController"><img src="Images/logo.jpg" width="200" ></a>	
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
				      <li class="active"><a  style="background-color: #5659C9; font-weight: bold" href="trangchuController">TẤT CẢ SẢN PHẨM</a></li>
				      <li><a style="color: white; font-weight: bold" href="giohangController">GIỎ HÀNG</a></li>    	
				      <li><a style="color: white; font-weight: bold" href="thanhtoanController">THANH TOÁN</a></li>
				      <li><a style="color: white; font-weight: bold" href="lichsumuahangController">LỊCH SỬ MUA HÀNG</a></li>
				    </ul>
				    <ul class="nav navbar-nav navbar-right">	 
				      	<li><a style="color: white; font-weight: bold" href="dangkyController"><span class="glyphicon glyphicon-log-out"></span> Đăng ký</a></li>	   
				    </ul>
				  </div>
				</nav>
			</div>
		</div>
		
		<div id="wp-content">
			<div id="content-top">
				<div id="sidebar">
					<table class="tbl">
						<tr >
							<%ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai"); 
							long ip=0, ipwifi=0, ipai=0, fullcolor=0, daughi=0;
							for(loaibean ds: dsloai){%>
								<img style="margin-right: 10px;" src="<%=ds.getanh() %>">
								<a href="#"><%=ds.getTenloai() %></a><hr>
							<%} %>
						</tr>
					</table>					
				</div>	
				
				<div>
					<a href="httatcasanphamController?maloai=cameraipwifi"><img width="700px" src="Images/banner.jpg"></a> 
				</div>
				
				<div id="side-bar-login">
					<form action="ktdnController" method="post">
						<div style="font-weight: 600; color: #1E90FF;display: flex;justify-content: center;margin-top: 20px;">ĐĂNG NHẬP</div>
						<div class="bold">
							<br>
							<input class="input" type="text" placeholder="Tài khoản" name="taikhoan">
						</div>
						
						<div class="bold">
							<br>
							<input class="input" type="password" placeholder="Mật khẩu" name="matkhau"> 
						</div>
						
						<div style="display: flex;justify-content: center;margin-top: 20px;">
							<input style="color: white;font-weight: bold;background: #337ab7;" class="input button" type="submit" value="Đăng nhập">
						</div>			
					</form>
				</div>
				
			</div>
			
			<div id="content-mid">
				<div id="content-mid-box">
					<div class="box-title">
						<div class="content-left">
							<img src="Images/cameraip.png">
							CAMERA IP J-TECH
						</div>
						<div class="content-right">
							<a href="#">Xem tất cả sản phẩm ➨</a>
						</div>
					</div>
					
					<div class="box-content">
						<table class="tbl">
							<%ArrayList<sanphambean> dssp=(ArrayList<sanphambean>)request.getAttribute("dssanpham"); 
							int flag=0;
							int n=dssp.size();
							for(int i=0;i<n;i++){
								sanphambean sp=dssp.get(i);
								if(flag==10) break;
								if(sp.getMaloai().equals("cameraip")){ flag++;%>
								<tr>
									<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
									<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		
							<%}} %>
					</table>	
					</div>
				</div>
				
				<div id="content-mid-box">
					<div class="box-title">
						<div class="content-left">
							<img src="Images/cameraip.png">
							CAMERA IP WIFI J-TECH
						</div>
						<div class="content-right">
							<a href="#">Xem tất cả sản phẩm ➨</a>
						</div>
					</div>
					
					<div class="box-content">
						<table class="tbl">
							<% flag=0;
							for(int i=0;i<n;i++){
								if(flag==10) break;
								sanphambean sp=dssp.get(i);
								if(sp.getMaloai().equals("cameraipwifi")){ flag++;%>
								<tr>
									<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
									<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>				      	 		
								</tr>
							<%}} %>
						</table>
					</div>
				</div>
				
				<div id="content-mid-box">
					<div class="box-title">
						<div class="content-left" >
							<img src="Images/cameraip.png">
							CAMERA IP AI J-TECH
						</div>
						<div class="content-right">
							<a href="#">Xem tất cả sản phẩm ➨</a>
						</div>
					</div>
					
					<div class="box-content">
						<table class="tbl">
							<% flag=0;
							for(int i=0;i<n;i++){
								if(flag==10) break;
								sanphambean sp=dssp.get(i);
								if(sp.getMaloai().equals("cameraipai")){ flag++;%>
								<tr>
									<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
									<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
								</tr>
							<%}} %>
						</table>
					</div>
				</div>
				
				<div id="content-mid-box">
					<div class="box-title" >
						<div class="content-left" >
							<img src="Images/cameraip.png">
							CAMERA FULL COLOR J-TECH
						</div>
						<div class="content-right">
							<a href="#">Xem tất cả sản phẩm ➨</a>
						</div>
					</div>
					
					<div class="box-content">
						<table class="tbl">
							<% flag=0;
							for(int i=0;i<n;i++){
								if(flag==10) break;
								sanphambean sp=dssp.get(i);
								if(sp.getMaloai().equals("camerafullcolor")){ flag++;%>
								<tr>
									<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
									<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		
								</tr>
							<%}} %>
						</table>
					</div>
				</div>
				
				<div id="content-mid-box">
					<div class="box-title" >
						<div class="content-left" >
							<img src="Images/cameraip.png">
							ĐẦU GHI J-TECH
						</div>
						<div class="content-right">
							<a href="#">Xem tất cả sản phẩm ➨</a>
						</div>
					</div>
					
					<div class="box-content">
						<table class="tbl">
							<% flag=0;
							for(int i=0;i<n;i++){
								if(flag==5) break;
								sanphambean sp=dssp.get(i);
								if(sp.getMaloai().equals("daughi")){ flag++;%>
								<tr>
									<td >
										<div style="background-color: white; border: 1px solid #E7E7DE; height: 200px;">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
									<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE; height: 200px;">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE; height: 200px;">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE; height: 200px;">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		<%i++;
					      	 		  if(i<n){
					      	 			sp=dssp.get(i); flag++;%>
					      	 		<td >
										<div style="background-color: white; border: 1px solid #E7E7DE; height: 200px;">
											<div>
												<a href="chitietsanphamController?msp=<%=sp.getMasanpham()%>&anh=<%=sp.getAnh()%>&tensp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>"><img width="200px" src="<%=sp.getAnh() %>"></a><br>	
												<a style="text-decoration: none;" href="chitietsanphamController?msp=<%=sp.getMasanpham()%>"><div style="width: 200px; padding-left: 5px"><%=sp.getTensanpham() %></div></a> <br>
												<div style="width: 200px; padding-left: 5px; font-weight: bold; color: red;">Giá: <%=sp.getGia() %> VNĐ</div>
											</div>
										</div>
									</td>
					      	 		<%} %>
					      	 		
								</tr>
							<%}} %>
						</table>
					</div>
				</div>
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