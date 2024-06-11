<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="admindashboard" class="brand-link"> <img
				src="dist/images/hngu-logo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">COAT</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
							<img src="dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="adminmyprofile?adminId=${admin.adminId}" class="d-block">${admin.firstName} ${admin.lastName}</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						 
						<li class="nav-item"><a href="admindashboard"
							class="nav-link"> <i class="nav-icon fas fa-th"></i>
								<p class="mr-5">
									Dashboard
								</p>
						</a> </li>
						 
								 
						 
							 
						 
				 
						<li class="nav-header">Tools</li>
						<li class="nav-item"><a href="listrole"
							class="nav-link "> <i class="nav-icon ion ion-person"></i>
								<p class="mr-5">Roles  </p>
						</a></li>
						<li class="nav-item"><a href="liststudent"
							class="nav-link"> <i class="nav-icon ion ion-person-add"></i>
								<p class="mr-5">Students</p>
						</a></li>
			
						<li class="nav-item"><a href="listadmission"
							class="nav-link"> <i class="nav-icon ion ion-ios-paper"></i>
								<p class="mr-5">Admissions</p>
						</a></li>
						
			
						<li class="nav-item"><a href="listcourse"
							class="nav-link"> <i class="nav-icon ion ion-ios-book"></i>
								<p class="mr-5">Courses</p>
						</a></li>
			
						<li class="nav-item"><a href="listteacher"
							class="nav-link"> <i class="nav-icon ion ion-ios-people"></i>
								<p class="mr-5">Teachers</p>
						</a></li>
						<li class="nav-item"><a href="listfeedback"
							class="nav-link"> <i class="nav-icon ion ion-chatbox"></i>
								<p class="mr-5">FeedBacks</p>
						</a></li>		
						<li class="nav-item"><a href="listcontact"
							class="nav-link"> <i class="nav-icon ion ion-ios-telephone"></i>
								<p class="mr-5">Contacts</p>
						</a></li>
						
						<li class="nav-item"><a href="listmerit"
							class="nav-link"> <i class="nav-icon ion ion-ios-list"></i>
								<p class="mr-5">Merits</p>
						</a></li>						
			 
			 			<li class="nav-item"><a href="listconfirmadmission"
							class="nav-link"> <i class="nav-icon ion ion-ios-checkmark"></i>
								<p class="mr-5">Confirm Admission</p>
						</a></li>	
						
						<li class="nav-item"><a href="listpayment"
							class="nav-link"> <i class="nav-icon ion ion-ios-checkmark"></i>
								<p class="mr-5">Payments</p>
						</a></li>	
			
			
						<li class="nav-item"><a href="logout"
							class="nav-link"> <i class="nav-icon fas fa-power-off"></i>
								<p>Logout</p>
						</a></li>
				
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
 