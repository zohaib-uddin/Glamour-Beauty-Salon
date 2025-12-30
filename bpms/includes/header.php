<section class=" w3l-header-4  sticky-top shadow">
    <header class="absolute-top ">
        <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <!-- <h1><a class="navbar-brand" href="index.php"> 
            SMS
            </a></h1> -->
      <a class="navbar-brand" href="index.php">
       <img src="assets/images/logo.png" alt="logo">
      </a>


            <button class="navbar-toggler bg-gradient collapsed" type="button" data-toggle="collapse"
                data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="fa icon-expand fa-bars"></span>
        <span class="fa icon-close fa-times"></span>
            </button>
      
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">About</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="services.php">Services</a>
                    </li> 

                    <li class="nav-item">
                        <a class="nav-link" href="products.php">Products</a>
                    </li> 

                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                     
                     <?php if (strlen($_SESSION['bpmsuid']==0)) {?>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="admin/index.php">Admin</a>
                    </li> -->
                     <li class="nav-item">
                        <a class="nav-link" href="signup.php">Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Login</a>
                    </li><?php }?>
                    <?php if (strlen($_SESSION['bpmsuid']>0)) {?>
                    <li class="nav-item">
                        <a class="nav-link" href="book-appointment.php">Book Salon</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="salon-schedule.php">Salon Schedule</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="booking-history.php">Booking History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="invoice-history.php">Invoice History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedback.php">Feedback</a>
                    </li>
                    <!-- <li id="wallet" style="display: block; margin-left: 20px;">Wallet Balance: $<span id="balanceAmount"></span></li> -->
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="change-password.php">Setting</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profile.php">Profile</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li> -->




               <div class="header-right" style="margin-bottom: -20px;">
                <div class="profile_details">  
                    
        <?php
$adid=$_SESSION['bpmsuid'];
$ret=mysqli_query($con,"select FirstName from tbluser where ID='$adid'");
$row=mysqli_fetch_array($ret);
$name=$row['FirstName'];

?> 
          <ul>
            
            <li class="dropdown profile_details_drop" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                <div class="profile_img"> 
                  <span class="prfil-img" style="margin-left: 20px;"><img src="assets/images/user.png" alt="" width="40" height="35"> </span> 
                  <div class="user-name">
                    <p style="margin-right: -10px;"><?php echo $name; ?></p>
                    <!-- <span>Administrator</span> -->
                  </div>
                  <!-- <i class="fa fa-angle-down lnr"></i>
                  <i class="fa fa-angle-up lnr"></i> -->
                </div>  
              </a>
              <ul class="dropdown-menu drp-mnu mt-5">
                <li> <a href="change-password.php"><i class="fa fa-cog"></i> Settings</a> </li> 
                <li> <a href="profile.php"><i class="fa fa-user"></i> Profile</a> </li> 
                <li> <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a> </li>
              </ul>
            </li>
          </ul>
        </div>  
        <div class="clearfix"> </div> 
        </div>  






                  <?php }?>
                </ul>
                
            </div>
        </div>

        </nav>
    </div>
      </header>
</section>                           

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Check if balance is available in session
        <?php if (isset($_SESSION['balance'])): ?>
            document.getElementById('wallet').style.display = 'block';
            document.getElementById('balanceAmount').textContent = "<?php echo $_SESSION['balance']; ?>";
        <?php endif; ?>
    });
    </script>