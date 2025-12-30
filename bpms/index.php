<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
 
     ?>
<!doctype html>
<html lang="en">
  <head>
    <title>Salon Management System | Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <?php require('includes/links.php') ?>
  </head>
  <body id="home" class="bg-light">

<?php include_once('includes/header.php');?>

<script src="assets/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->
<!--bootstrap working-->
<script src="assets/js/bootstrap.min.js"></script>
<!-- //bootstrap working-->
<!-- disable body scroll which navbar is in active -->
<script>
$(function () {
  $('.navbar-toggler').click(function () {
    $('body').toggleClass('noscroll');
  })
});
</script>
<!-- disable body scroll which navbar is in active -->
       

<!-- Carousel -->

<div class="container-fluid px-lg-4 mt-4">
          <div class="swiper swiper-container">
             <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="assets/images/1.png" style="width: 100%; height: 550px;">
                </div>
                <div class="swiper-slide">
                    <img src="assets/images/2.png" style="width: 100%; height: 550px;">
                </div>
                <div class="swiper-slide">
                    <img src="assets/images/3.png" style="width: 100%; height: 550px;">
                </div>
                <div class="swiper-slide">
                    <img src="assets/images/4.png" style="width: 100%; height: 550px;">
                </div>
                <div class="swiper-slide">
                    <img src="assets/images/5.png" style="width: 100%; height: 550px;">
                </div>
                <div class="swiper-slide">
                    <img src="assets/images/6.png" style="width: 100%; height: 550px;">
                </div>
                <div class="swiper-slide">
                    <img src="assets/images/2.png" style="width: 100%; height: 550px;">
                </div>
                
             </div>
          </div>
        </div>





        




        


        

<section class="w3l-call-to-action_9">
    <div class="call-w3 ">
        <div class="container">
            <div class="grids">
                    <div class="grids-content row">

                        <div class="column col-lg-4 col-md-6 color-2 ">
                            <div>
                            <h4 class=" ">Our Salon is Most Popular</h4>
                            <p class="para ">Eline Hair and Beauty Salon Offers - Beauty Services</p>
                            <a href="about.php" class="action-button btn mt-md-4 mt-3">Read more</a>
                        </div>
                    </div>
                        <div class="column col-lg-4 col-md-6 col-sm-6 back-image  ">
                            <img src="assets/images/index1.webp" alt="product" class="img-responsive" style="height: 85%; width: 370px;">
                        </div>
                        <div class="column col-lg-4 col-md-6 col-sm-6 back-image2 ">
                            <img src="assets/images/index2.webp" alt="product" class="img-responsive" style="height: 85%; width: 370px;">
                          </div>
                    </div>
                </div>
        </div>
    </div>
</section>
<section class="w3l-teams-15">
	<div class="team-single-main">
		<div class="container">
			<div class="column2 image-text">
				<h3 class="team-head">Come experience the secrets of relaxation</h3>
				<p class="para text">
					Best Beauty expert at your home and provides beauty salon at home. Home Salon provide well trained beauty professionals for beauty services at home including Facial, Clean Up, Bleach, Waxing, Pedicure, Manicure, etc.
				</p>
				<a href="book-appointment.php" class="btn logo-button top-margin mt-4">Get An Appointment</a>
			</div>
		</div>
	</div>
</section>
<section class="w3l-specification-6">
    <div class="specification-layout ">
        <div class="container">
            <div class=" row">
                <div class="col-lg-6 back-image">
                    <img src="assets/images/salon1.jpeg" alt="product" class="img-responsive ">
                </div>
                <div class="col-lg-6 about-right-faq align-self">
                    <h3 class="title-big"><a href="about.php">Clean and Recommended Hair Salon</a></h3>
                    <p class="mt-3 para"> Their array of beauty parlour services include haircuts, hair spas, colouring, texturing, styling, waxing, pedicures, manicures, threading, body spa, natural facials and more.</p>
                        <div class="hair-cut">
                            <div >
                    <ul class="w3l-right-book">
                        <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Hair cut with Blow dry</a></li>
                        <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Color & highlights</a></li>
                        <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Shampoo & Set</a></li>
                        <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Blow Dry & Curl</a></li>
                        <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Advance Hair Color</a></li>
                    </ul>
                </div>
                    <div  class="image-right">
                        <ul class="w3l-right-book">
                            <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Back Massage</a></li>
                            <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Hair Treatment</a></li>
                            <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Face Massage</a></li>
                            <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Skin Care</a></li>
                            <li><span class="fa fa-check" aria-hidden="true"></span><a href="about.php">Body Therapies</a></li>
                        </ul>
                </div>
            </div>
        </div>
</section>
<?php include_once('includes/footer.php');?>
<!-- move top -->
<button onclick="topFunction()" id="movetop" title="Go to top">
	<span class="fa fa-long-arrow-up"></span>
</button>


<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>



        

          // Caroseul
            var swiper = new Swiper(".swiper-container", {
                spaceBetween: 30,
                effect: "fade",
                loop: true,
                autoplay: {
                    delay: 3500,
                    disableOnInteraction: false,
                }
            });


	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function () {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
			document.getElementById("movetop").style.display = "block";
		} else {
			document.getElementById("movetop").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>
<!-- /move top -->
</body>

</html>