<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['login'])) {
    $emailcon = $_POST['emailcont'];
    $password = md5($_POST['password']);

    // Check if user exists based on email or phone and password
    $query = mysqli_query($con, "SELECT ID, FirstName, LastName FROM tbluser WHERE (Email='$emailcon' || MobileNumber='$emailcon') && Password='$password'");
    $ret = mysqli_fetch_array($query);

    if ($ret > 0) {
        // Store user ID in session
        $_SESSION['bpmsuid'] = $ret['ID'];

        // $sid = $ret['ID'];
        // $balanceQuery = mysqli_query($con, "SELECT balance FROM tbluser WHERE ID = '$sid'");
        // $balanceResult = mysqli_fetch_array($balanceQuery);

        // if ($balanceResult) {
        //     $_SESSION['balance'] = $balanceResult['balance'];
        // } else {
        //     $_SESSION['balance'] = 0;
        // }

        // Alert and redirect the user to the homepage
        echo "<script>
    alert('Login Successfully');
    setTimeout(function() {
        window.location.href = 'index.php';
    }, 1000);
</script>"; 

    } else {
        echo "<script>alert('Invalid Details.');</script>";
    }
}
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Salon Management System | Login Page</title>
    <?php require('includes/links.php') ?>
  </head>
  <body id="home">
    <?php include_once('includes/header.php');?>

    <script src="assets/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->
    <script src="assets/js/bootstrap.min.js"></script> <!--bootstrap working-->
    <script>
      $(function () {
        $('.navbar-toggler').click(function () {
          $('body').toggleClass('noscroll');
        })
      });
    </script>

    <!-- breadcrumbs -->
    <section class="w3l-inner-banner-main">
        <div class="about-inner contact ">
            <div class="container">   
                <div class="main-titles-head text-center">
                    <h3 class="header-name ">Login Page</h3>
                    <div class="h-line bg-white"></div> 
                    <p class="tiltle-para">Login to access your personalized profile and stay connected!</p>
                </div>
            </div>
        </div>
        <div class="breadcrumbs-sub">
            <div class="container">   
                <ul class="breadcrumbs-custom-path">
                    <li class="right-side propClone"><a href="index.php">Home <span class="fa fa-angle-right" aria-hidden="true"></span></a></li>
                    <li class="active ">Login</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- breadcrumbs //-->
    <section class="w3l-contact-info-main" id="contact">
        <div class="contact-sec">
            <div class="container">
                <div class="d-grid contact-view">
                    <div class="cont-details">
                        <?php
                        $ret = mysqli_query($con, "select * from tblpage where PageType='contactus'");
                        while ($row = mysqli_fetch_array($ret)) {
                        ?>
                        <div class="cont-top">
                            <div class="cont-left text-center">
                                <span class="fa fa-phone text-primary"></span>
                            </div>
                            <div class="cont-right">
                                <h6>Call Us</h6>
                                <p class="para"><a href="tel:+44 99 555 42">+<?php  echo $row['MobileNumber'];?></a></p>
                            </div>
                        </div>
                        <div class="cont-top margin-up">
                            <div class="cont-left text-center">
                                <span class="fa fa-envelope-o text-primary"></span>
                            </div>
                            <div class="cont-right">
                                <h6>Email Us</h6>
                                <p class="para"><a href="mailto:example@mail.com" class="mail"><?php  echo $row['Email'];?></a></p>
                            </div>
                        </div>
                        <div class="cont-top margin-up">
                            <div class="cont-left text-center">
                                <span class="fa fa-map-marker text-primary"></span>
                            </div>
                            <div class="cont-right">
                                <h6>Address</h6>
                                <p class="para"> <?php  echo $row['PageDescription'];?></p>
                            </div>
                        </div>
                        <div class="cont-top margin-up">
                            <div class="cont-left text-center">
                                <span class="fa fa-map-marker text-primary"></span>
                            </div>
                            <div class="cont-right">
                                <h6>Time</h6>
                                <p class="para"> <?php  echo $row['Timing'];?></p>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="map-content-9 mt-lg-0 mt-4">
                        <form method="post">
                            <div>
                                <input type="text" class="form-control" name="emailcont" placeholder="Registered Email or Contact Number" required="true">
                            </div>
                            <div style="padding-top: 30px;">
                              <input type="password" class="form-control" name="password" placeholder="Password" required="true">
                            </div>
                            <div class="twice-two" style="padding-top: 30px;">
                              <a class="link--gray" style="color: blue;" href="forgot-password.php">Forgot Password?</a>
                            </div>
                            <button type="submit" class="btn btn-contact" name="login">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php include_once('includes/footer.php');?>
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fa fa-long-arrow-up"></span>
    </button>
    <script>
      window.onscroll = function () { scrollFunction(); };
      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("movetop").style.display = "block";
        } else {
          document.getElementById("movetop").style.display = "none";
        }
      }
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
  </body>
</html>
