<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Salon Management System | Product Page </title>
    <?php require('includes/links.php') ?>
    <style>
      /* Image container to position the button */
      .image-container {
        position: relative;
        display: inline-block;
      }

      /* Initially hide the button */
      .image-container button {
        display: none;
        position: absolute;
        top: 80%;
        left: 50%;
        transform: translate(-50%);
        padding: 10px 20px;
        background-color: #ff4081;
        color: white;
        border: none;
        cursor: pointer;
        font-size: 16px;
        border-radius: 5px;
      }

      .image-container:hover button {
        display: block;
      }

      .image-container img {
        display: block;
        width: 100%;
      }
    </style>
  </head>
  <body id="home">
    <?php include_once('includes/header.php');?>

    <script src="assets/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->
    <script src="assets/js/bootstrap.min.js"></script>

    <section class="w3l-inner-banner-main">
        <div class="about-inner services ">
            <div class="container">   
                <div class="main-titles-head text-center">
                    <h3 class="header-name">Our Products</h3>
                    <div class="h-line bg-white"></div>
                    <p class="tiltle-para">Explore our exclusive products designed to enhance your lifestyle!</p>
                </div>
            </div>
        </div>
    </section>

    <section class="w3l-recent-work-hobbies">
        <div class="recent-work">
            <div class="container">
                <div class="row about-about">
                    <?php
                    $ret=mysqli_query($con,"select * from tblproducts");
                    $cnt=1;
                    while ($row=mysqli_fetch_array($ret)) {
                    ?>
                    <div class="col-lg-4 col-md-6 col-sm-6 propClone">
                        <div class="image-container">
                            <img src="admin/images/<?php echo $row['Image']?>" alt="product" height="350" width="400" class="img-responsive about-me">
                            <button class="buy-button" onclick="buyProduct('<?php echo $row['ID']; ?>', '<?php echo $row['Cost']; ?>')">Buy Now</button>
                        </div>
                        <div class="about-grids">
                            <hr>
                            <h5 class="para"><?php echo $row['ProductName'];?></h5>
                            <p class="para"><?php echo $row['ProductDescription'];?></p>
                            <p class="para" style="color: hotpink;">Cost of Product: $<?php echo $row['Cost'];?></p>
                        </div>
                    </div>
                    <br>
                    <?php $cnt=$cnt+1; } ?>
                </div>
            </div>
        </div>
    </section>

    <?php include_once('includes/footer.php');?>

    <button onclick="topFunction()" id="movetop" title="Go to top">
      <span class="fa fa-long-arrow-up"></span>
    </button>

    <script>
      function buyProduct(ProductID, Cost) {
    if (confirm("Are you sure you want to buy this product for $" + Cost + "?")) {
        $.ajax({
            url: 'purchase.php',
            type: 'POST',
            data: {
                ProductID: ProductID,
                Cost: Cost
            },
            success: function(response) {
                if (response.status === 'success') {
                    alert("Purchase successful! Your new balance is $" + response.newBalance);
                } else {
                    alert("Not enough balance. Please add more funds.");
                }
            }
        });
    }
}


        // Scroll-to-top functionality
        window.onscroll = function () {
            scrollFunction();
        };

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
