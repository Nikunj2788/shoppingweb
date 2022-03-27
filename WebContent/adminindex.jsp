<%@page import="com.bean.admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">


<!-- Mirrored from demo.dashboardpack.com/hospital-html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Sep 2021 04:04:02 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>admin panel</title>

<!-- <link rel="icon" href="img/favicon.png" type="image/png"> -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="admin/css/bootstrap.min.css" />
<!-- themefy CSS -->
<link rel="stylesheet"
	href="admin/vendors/themefy_icon/themify-icons.css" />
<!-- swiper slider CSS -->
<link rel="stylesheet"
	href="admin/vendors/swiper_slider/css/swiper.min.css" />
<!-- select2 CSS -->
<link rel="stylesheet" href="admin/vendors/select2/css/select2.min.css" />
<!-- select2 CSS -->
<link rel="stylesheet"
	href="admin/vendors/niceselect/css/nice-select.css" />
<!-- owl carousel CSS -->
<link rel="stylesheet"
	href="admin/vendors/owl_carousel/css/owl.carousel.css" />
<!-- gijgo css -->
<link rel="stylesheet" href="admin/vendors/gijgo/gijgo.min.css" />
<!-- font awesome CSS -->
<link rel="stylesheet" href="admin/vendors/font_awesome/css/all.min.css" />
<link rel="stylesheet" href="admin/vendors/tagsinput/tagsinput.css" />
<!-- datatable CSS -->
<link rel="stylesheet"
	href="admin/vendors/datatable/css/jquery.dataTables.min.css" />
<link rel="stylesheet"
	href="admin/vendors/datatable/css/responsive.dataTables.min.css" />
<link rel="stylesheet"
	href="admin/vendors/datatable/css/buttons.dataTables.min.css" />
<!-- text editor css -->
<link rel="stylesheet"
	href="admin/vendors/text_editor/summernote-bs4.css" />
<!-- morris css -->
<link rel="stylesheet" href="admin/vendors/morris/morris.css">
<!-- metarial icon css -->
<link rel="stylesheet"
	href="admin/vendors/material_icon/material-icons.css" />


<!-- menu css  -->
<link rel="stylesheet" href="admin/css/metisMenu.css">
<!-- style CSS -->
<link rel="stylesheet" href="admin/css/style.css" />
<link rel="stylesheet" href="admin/css/colors/default.css"
	id="colorSkinCSS">
</head>
<body class="crm_body_bg">

	<%
	       admin a = null;

		if (session != null) {
			if (session.getAttribute("abc") != null) {
				a = (admin) session.getAttribute("abc");
			} else {
				response.sendRedirect("adminlogin.jsp");
			}
		} else {
			response.sendRedirect("adminlogin.jsp");
		}
	%>

	<!-- main content part here -->

	<!-- sidebar  -->
	<!-- sidebar part here -->
	<nav class="sidebar">
		<div class="logo d-flex justify-content-between">
<!-- 			<a href="index.html"><img src="admin/img/logo.png" alt=""></a>
 -->			<div class="sidebar_close_icon d-lg-none">
				<i class="ti-close"></i>
			</div>
		</div>
		<ul id="sidebar_menu">
			<li class="side_menu_title"><span>Dashboard</span></li>
			<li class="mm-active"><a class="has-arrow" href="#"
				aria-expanded="false"> <!-- <i class="fas fa-th"></i> --> <img
					src="admin/img/menu-icon/1.svg" alt=""> <span>Dashboard</span>
			</a>
				<ul>
					<li><a class="active" href="index.html">Dashboard 1</a></li>
					<li><a href="index_2.html">Dashboard 2</a></li>
				</ul></li>
			<li class="side_menu_title"><span>Applications</span></li>
			<li class=""><a class="has-arrow" href="#" aria-expanded="false">
					<img src="admin/img/menu-icon/2.svg" alt=""> <span>Pages</span>
			</a>
				<ul>
					<li><a href="login.html">Login</a></li>
					<li><a href="resister.html">Register</a></li>
					<li><a href="forgot_pass.html">Forgot Password</a></li>
				</ul></li>

			<li class=""><a class="has-arrow" href="#" aria-expanded="false">
					<img src="admin/img/menu-icon/3.svg" alt=""> <span>List</span>
			</a>
				<ul>
					<li><a href="admincus.jsp">Customer-List</a></li>
					<li><a href="adminse-55l.jsp">Seller-List</a></li>

				</ul></li>
			<li class="side_menu_title"><span>Components</span></li>
			<li class=""><a class="has-arrow" href="#" aria-expanded="false">
					<img src="admin/img/menu-icon/4.svg" alt=""> <span>UI
						Component</span>
			</a>
				<ul>
					<li><a href="#">Elements</a>
						<ul>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="dropdown.html">Dropdowns</a></li>
							<li><a href="Badges.html">Badges</a></li>
							<li><a href="Loading_Indicators.html">Loading Indicators</a></li>
						</ul></li>
					<li><a href="#">Components</a>
						<ul>
							<li><a href="notification.html">Notifications</a></li>
							<li><a href="progress.html">Progress Bar</a></li>
							<li><a href="carousel.html">Carousel</a></li>
							<li><a href="cards.html">cards</a></li>
							<li><a href="Pagination.html">Pagination</a></li>
						</ul></li>
				</ul></li>

			<li class=""><a class="has-arrow" href="#" aria-expanded="false">
					<img src="admin/img/menu-icon/5.svg" alt=""> <span>Widgets</span>
			</a>
				<ul>
					<li><a href="chart_box_1.html">Chart Boxes 1</a></li>
					<li><a href="profilebox.html">Profile Box</a></li>
				</ul></li>

			<li class=""><a class="has-arrow" href="#" aria-expanded="false">
					<img src="admin/img/menu-icon/6.svg" alt=""> <span>Forms</span>
			</a>
				<ul>
					<li><a href="#">Elements</a>
						<ul>
							<li><a href="data_table.html">Data Tables</a></li>
							<li><a href="bootstrap_table.html">Grid Tables</a></li>
							<li><a href="datepicker.html">Date Picker</a></li>
						</ul></li>
					<li><a href="#">Widgets</a>
						<ul>
							<li><a href="Input_Selects.html">Input Selects</a></li>
							<li><a href="Input_Mask.html">Input Mask</a></li>
						</ul></li>
				</ul></li>

			<li class=""><a class="has-arrow" href="#" aria-expanded="false">
					<img src="admin/img/menu-icon/7.svg" alt=""> <span>Charts</span>
			</a>
				<ul>
					<li><a href="chartjs.html">ChartJS</a></li>
					<li><a href="apex_chart.html">Apex Charts</a></li>
					<li><a href="chart_sparkline.html">Chart sparkline</a></li>
				</ul></li>

		</ul>

	</nav>
	<!-- sidebar part end -->
	<!--/ sidebar  -->


	<section class="main_content dashboard_part">
		<!-- menu  -->
		<div class="container-fluid no-gutters">
			<div class="row">
				<div class="col-lg-12 p-0">
					<div
						class="header_iner d-flex justify-content-between align-items-center">
						<div class="sidebar_icon d-lg-none">
							<i class="ti-menu"></i>
						</div>
						<div class="serach_field-area">
							<div class="search_inner">
								<form action="#">
									<div class="search_field">
										<input type="text" placeholder="Search here...">
									</div>
									<button type="submit">
										<img src="admin/img/icon/icon_search.svg" alt="">
									</button>
								</form>
							</div>
						</div>
						<div
							class="header_right d-flex justify-content-between align-items-center">
							<div class="header_notification_warp d-flex align-items-center">
								<li><a href="#"> <img src="admin/img/icon/bell.svg"
										alt="">
								</a></li>
								<li><a href="#"> <img src="admin/img/icon/msg.svg"
										alt="">
								</a></li>
							</div>
							<div class="profile_info">
								<img src="admin/img/client_img.png" alt="#">
								<div class="profile_info_iner">
									<p>Neurologist</p>
									<h5>Dr. Robar Smith</h5>
									<div class="profile_info_details">
										<a href="#">My Profile <i class="ti-user"></i></a> <a href="#">Settings
											<i class="ti-settings"></i>
										</a> <a href="#">Log Out <i class="ti-shift-left"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ menu  -->
		<div class="main_content_iner ">
			<div class="container-fluid p-0">
				<div class="row justify-content-center">
					<div class="col-lg-12">
						<div class="single_element">
							<div class="quick_activity">
								<div class="row">
									<div class="col-12">
										<div class="quick_activity_wrap">
											<div class="single_quick_activity d-flex">
												<div class="icon">
													<img src="admin/img/icon/man.svg" alt="">
												</div>
												<div class="count_content">
													<h3>
														<span class="counter">520</span>
													</h3>
													<p>Doctors</p>
												</div>
											</div>
											<div class="single_quick_activity d-flex">
												<div class="icon">
													<img src="admin/img/icon/cap.svg" alt="">
												</div>
												<div class="count_content">
													<h3>
														<span class="counter">6969</span>
													</h3>
													<p>Nurses</p>
												</div>
											</div>
											<div class="single_quick_activity d-flex">
												<div class="icon">
													<img src="admin/img/icon/wheel.svg" alt="">
												</div>
												<div class="count_content">
													<h3>
														<span class="counter">7510</span>
													</h3>
													<p>Patients</p>
												</div>
											</div>
											<div class="single_quick_activity d-flex">
												<div class="icon">
													<img src="admin/img/icon/pharma.svg" alt="">
												</div>
												<div class="count_content">
													<h3>
														<span class="counter">2110</span>
													</h3>
													<p>Pharmacusts</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-xl-12">
						<div class="white_box mb_30 ">
							<div class="box_header border_bottom_1px  ">
								<div class="main-title">
									<h3 class="mb_25">Ecommerce Survey</h3>
								</div>
							</div>
							<div class="income_servay">
								<div class="row">
									<div class="col-md-3">
										<div class="count_content">
											<h3>
												$ <span class="counter">305</span>
											</h3>
											<p>Today's Income</p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="count_content">
											<h3>
												$ <span class="counter">1005</span>
											</h3>
											<p>This Week's Income</p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="count_content">
											<h3>
												$ <span class="counter">5505</span>
											</h3>
											<p>This Month's Income</p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="count_content">
											<h3>
												$ <span class="counter">155615</span>
											</h3>
											<p>This Year's Income</p>
										</div>
									</div>
								</div>
							</div>
							<div id="bar_wev"></div>
						</div>
					</div>
					<div class="col-xl-7">
						<div class="white_box QA_section card_height_100">
							<div class="white_box_tittle list_header m-0 align-items-center">
								<div class="main-title mb-sm-15">
									<h3 class="m-0 nowrap">Patients</h3>
								</div>
								<div class="box_right d-flex lms_block">
									<div class="serach_field-area2">
										<div class="search_inner">
											<form Active="#">
												<div class="search_field">
													<input type="text" placeholder="Search here...">
												</div>
												<button type="submit">
													<i class="ti-search"></i>
												</button>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="QA_table ">
								<!-- table-responsive -->
								<table class="table lms_table_active2">
									<thead>
										<tr>
											<th scope="col">Patients Name</th>
											<th scope="col">department</th>
											<th scope="col">Appointment Date</th>
											<th scope="col">Serial Number</th>
											<th scope="col">Amount</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/pataint.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/2.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/3.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/4.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/5.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/6.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">
												<div class="patient_thumb d-flex align-items-center">
													<div class="student_list_img mr_20">
														<img src="admin/img/patient/6.png" alt="" srcset="">
													</div>
													<p>Jhon Kural</p>
												</div>
											</th>
											<td>Monte Carlo</td>
											<td>11/03/2020</td>
											<td>MDC65454</td>
											<td>
												<div class="amoutn_action d-flex align-items-center">
													$29,192
													<div class="dropdown ml-4">
														<a class=" dropdown-toggle hide_pils" href="#"
															role="button" id="dropdownMenuLink"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false"> <i class="fas fa-ellipsis-v"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right"
															aria-labelledby="dropdownMenuLink">
															<a class="dropdown-item" href="#">View</a> <a
																class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Delete</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-xl-5 ">
						<div class="white_box card_height_50 mb_30">
							<div class="box_header border_bottom_1px  ">
								<div class="main-title">
									<h3 class="mb_25">Total Recover Report</h3>
								</div>
							</div>
							<div id="chart-7"></div>
							<div class="row text-center mt-3">
								<div class="col-sm-6">
									<h6 class="heading_6 d-block">Last Month</h6>
									<p class="m-0">358</p>
								</div>
								<div class="col-sm-6">
									<h6 class="heading_6 d-block">Current Month</h6>
									<p class="m-0">194</p>
								</div>
							</div>
						</div>
						<div class="white_box card_height_50 mb_30">
							<div class="box_header border_bottom_1px  ">
								<div class="main-title">
									<h3 class="mb_25">Total Death Report</h3>
								</div>
							</div>
							<div id="chart-8"></div>
							<div class="row text-center mt-3">
								<div class="col-sm-6">
									<h6 class="heading_6 d-block">Last Month</h6>
									<p class="m-0">358</p>
								</div>
								<div class="col-sm-6">
									<h6 class="heading_6 d-block">Current Month</h6>
									<p class="m-0">194</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-12">
						<div class="white_box card_height_100">
							<div class="box_header border_bottom_1px  ">
								<div class="main-title">
									<h3 class="mb_25"> Staff</h3>
								</div>
							</div>
							<div class="staf_list_wrapper sraf_active owl-carousel">
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/1.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/2.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/3.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/4.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/5.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/1.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/2.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
								<!-- single carousel  -->
								<div class="single_staf">
									<div class="staf_thumb">
										<img src="admin/img/staf/3.png" alt="">
									</div>
									<h4>Dr. Sysla J Smith</h4>
									<p>Doctor</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="white_box card_height_100">
							<div class="box_header border_bottom_1px  ">
								<div class="main-title">
									<h3 class="mb_25">Recent Activity</h3>
								</div>
							</div>
							<div class="Activity_timeline">
								<ul>
									<li>
										<div class="activity_bell"></div>
										<div class="activity_wrap">
											<h6>5 min ago</h6>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Quisque scelerisque</p>
										</div>
									</li>
									<li>
										<div class="activity_bell"></div>
										<div class="activity_wrap">
											<h6>5 min ago</h6>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Quisque scelerisque</p>
										</div>
									</li>
									<li>
										<div class="activity_bell"></div>
										<div class="activity_wrap">
											<h6>5 min ago</h6>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Quisque scelerisque</p>
										</div>
									</li>
									<li>
										<div class="activity_bell"></div>
										<div class="activity_wrap">
											<h6>5 min ago</h6>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Quisque scelerisque</p>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="white_box mb_30">
							<div class="box_header border_bottom_1px  ">
								<div class="main-title">
									<h3 class="mb_25">Recent Activity</h3>
								</div>
							</div>
							<div class="activity_progressbar">
								<div class="single_progressbar">
									<h6>USA</h6>
									<div id="bar1" class="barfiller">
										<div class="tipWrap">
											<span class="tip"></span>
										</div>
										<span class="fill" data-percentage="95"></span>
									</div>
								</div>
								<div class="single_progressbar">
									<h6>AFRICA</h6>
									<div id="bar2" class="barfiller">
										<div class="tipWrap">
											<span class="tip"></span>
										</div>
										<span class="fill" data-percentage="75"></span>
									</div>
								</div>
								<div class="single_progressbar">
									<h6>UK</h6>
									<div id="bar3" class="barfiller">
										<div class="tipWrap">
											<span class="tip"></span>
										</div>
										<span class="fill" data-percentage="55"></span>
									</div>
								</div>
								<div class="single_progressbar">
									<h6>CANADA</h6>
									<div id="bar4" class="barfiller">
										<div class="tipWrap">
											<span class="tip"></span>
										</div>
										<span class="fill" data-percentage="25"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- footer part -->
		<div class="footer_part">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="footer_iner text-center">
							<p>
								2020 © Influence - Designed by <a href="#"> <i
									class="ti-heart"></i>
								</a><a href="#"> Dashboard</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- main content part end -->

	<!-- footer  -->
	<!-- jquery slim -->
	<script src="admin/js/jquery-3.4.1.min.js"></script>
	<!-- popper js -->
	<script src="admin/js/popper.min.js"></script>
	<!-- bootstarp js -->
	<script src="admin/js/bootstrap.min.js"></script>
	<!-- sidebar menu  -->
	<script src="admin/js/metisMenu.js"></script>
	<!-- waypoints js -->
	<script src="admin/vendors/count_up/jquery.waypoints.min.js"></script>
	<!-- waypoints js -->
	<script src="admin/vendors/chartlist/Chart.min.js"></script>
	<!-- counterup js -->
	<script src="admin/vendors/count_up/jquery.counterup.min.js"></script>
	<!-- swiper slider js -->
	<script src="admin/vendors/swiper_slider/js/swiper.min.js"></script>
	<!-- nice select -->
	<script src="admin/vendors/niceselect/js/jquery.nice-select.min.js"></script>
	<!-- owl carousel -->
	<script src="admin/vendors/owl_carousel/js/owl.carousel.min.js"></script>
	<!-- gijgo css -->
	<script src="admin/vendors/gijgo/gijgo.min.js"></script>
	<!-- responsive table -->
	<script src="admin/vendors/datatable/js/jquery.dataTables.min.js"></script>
	<script src="admin/vendors/datatable/js/dataTables.responsive.min.js"></script>
	<script src="admin/vendors/datatable/js/dataTables.buttons.min.js"></script>
	<script src="admin/vendors/datatable/js/buttons.flash.min.js"></script>
	<script src="admin/vendors/datatable/js/jszip.min.js"></script>
	<script src="admin/vendors/datatable/js/pdfmake.min.js"></script>
	<script src="admin/vendors/datatable/js/vfs_fonts.js"></script>
	<script src="admin/vendors/datatable/js/buttons.html5.min.js"></script>
	<script src="admin/vendors/datatable/js/buttons.print.min.js"></script>

	<script src="admin/js/chart.min.js"></script>
	<!-- progressbar js -->
	<script src="admin/vendors/progressbar/jquery.barfiller.js"></script>
	<!-- tag input -->
	<script src="admin/vendors/tagsinput/tagsinput.js"></script>
	<!-- text editor js -->
	<script src="admin/vendors/text_editor/summernote-bs4.js"></script>

	<script src="admin/vendors/apex_chart/apexcharts.js"></script>

	<!-- custom js -->
	<script src="admin/js/custom.js"></script>
	<script src="admin/vendors/apex_chart/bar_active_1.js"></script>
	<script src="admin/vendors/apex_chart/apex_chart_list.js"></script>
</body>

<!-- Mirrored from demo.dashboardpack.com/hospital-html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Sep 2021 04:05:04 GMT -->
</html>