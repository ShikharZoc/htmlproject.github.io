<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Good Food - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/home">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-utensils"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">GOOD FOOD</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="Home">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Company
           
                </div>

                <!-- Nav Item - Restaurant -->
                <li class="nav-item">
                    <a class="nav-link" href="Restaurant">
                        <i class="fas fa-house-damage"></i>
                        <span>Restaurants</span>
                    </a>
                </li>

                <!-- Nav Item - Dish Details -->
                <li class="nav-item">
                    <a class="nav-link" href="Dish Details">
                        <i class="fas fa-hamburger"></i>
                        <span>Dish Details</span>
                    </a>
                </li>

                <!-- Nav Item - Loyalty Pointsu -->
                <li class="nav-item">
                    <a class="nav-link" href="Loyalty Points">
                        <i class="fab fa-pinterest-p"></i>
                        <span>Loyalty Points</span>
                    </a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Customer
           
                </div>

               <!-- Nav Item - Customer Details -->
                <li class="nav-item">
                    <a class="nav-link" href="Customer Details">
                        <i class="fas fa-user"></i>
                        <span>Customer Details</span>
                    </a>
                </li>

               <!-- Nav Item - Delivery Address -->
                <li class="nav-item">
                    <a class="nav-link" href="Delivery Address">
                        <i class="fas fa-truck"></i>
                        <span>Delivery Address</span>
                    </a>
                </li>


                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

             
            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                     

                        <!-- Topbar Welcome -->
                       
                           <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Welcome!</h1>
                        </div>


                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Frequent Searches</h1>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Dish Search -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <a class="card_body" href="Dish_Search">
                                <div class="card border-left-primary shadow h-100 py-2 ">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                 <div class="h5 mb-0 font-weight-bold text-primary text-gray-800">Dish Search</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-search fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              </a>
                          </div>

                            <!-- Customer Order -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <a class="card_body" href="Customer_Order">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                 <div class="h5 mb-0 font-weight-bold text-primary text-gray-800">Customer Order</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-sticky-note fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>

                           <!-- Order Activity -->
                            <div class="col-xl-3 col-md-6 mb-4">
                               <a class="card_body" href="Order_Activity">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                 <div class="h5 mb-0 font-weight-bold text-primary text-gray-800">Order Activity</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                    </div>
                        <!-- Content Row -->

                        <div class="row">

                            <!-- Area Photo -->
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                  
                                    <!-- Card Body -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">GALLERY</h6>
                                    </div>
                                    <div class="text-center">
                                            <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="padding: 2px;"
                                                src="img/food.jpg" alt="">
                                        </div>
                                </div>
                            </div>
                           </div>

                            <!-- About Us -->
                            <div class="col-xl-4 col-lg-5">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">ABOUT US</h6>
                                    </div>
                                    <!-- Card Body -->
                                     <div class="card-body">
                                        <p>
                                            Good Food is the first company in Nepal that delivers food from hundreds of popular restaurants. 
                                            As a pioneer food delivery service provider, we are making life easier through online ordering.
                                        </p>
                                        <p class="mb-0">
                                            Good Food is the first company in Nepal that delivers food from hundreds of popular restaurants. 
                                            As a pioneer food delivery service provider, we are making life easier through online ordering.
                                        </p>
                                        <p class="mb-1">
                                            Good Food is a One stop mobile app for all the foodies in Nepal, where they can search for their favourite restaurants, 
                                            get food delivered to their home or office.
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Good Food 2020</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>


        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>
    </form>
</body>
</html>
