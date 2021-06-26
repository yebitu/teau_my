<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<!-- footer_section - start
      ================================================== -->
      <footer class="footer_section">
        <div class="footer_widget_area" >
          <div class="container">
          
    
            <div class="row justify-content-lg-between">
              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="footer_widget footer_about wow fadeInUp" data-wow-delay=".1s">
                  <div class="brand_logo">
                    <a class="brand_link" href="index.html">
                      <img src="assets/images/logo/TeaU.png" srcset="assets/images/logo/logo_black_2x.png 2x"
                        alt="logo_not_found">
                    </a>
                  </div>
    
                  <ul class="social_links social_icons ul_li">
                    <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="https://twitter.com/?lang=ko" target="_blank"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="https://www.youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a></li>
                  </ul>
                </div>
              </div>
    
              <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="footer_widget footer_contact wow fadeInUp" data-wow-delay=".2s">
                  <h3 class="footer_widget_title text-uppercase">Contact us</h3>
                  <ul class="ul_li_block">
                    <li><strong class="text-uppercase">Adress:</strong> 8638 Amarica Stranfod Mailbon Star</li>
                    <li><strong class="text-uppercase">Mail:</strong> Israfilsupol836@gmail.com</li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-6 col-md-4 col-sm-6">
                <div class="footer_widget footer_recent_post wow fadeInUp" data-wow-delay=".4s">
                  <h3 class="footer_widget_title text-uppercase" id="footerc">RECENT MAGAZINE</h3>
    
                  <div class="recent_post" >
                    <a class="item_image" href="magazine.html">
                      <img src="assets/images/blog/2.jpg" alt="image_not_found"  style="width: 75px; height: 75px;" > 
                    </a>
                    <div class="item_content">
                      <h4 class="item_title">
                        <a href="magazine.html" style="font-size: 11px;">차를 맛있게 마시는 방법들!</a>
                      </h4>
                      <span class="post_date text-uppercase">December 30 - 2021</span>
                    </div>
                  </div>
    
                  <div class="recent_post">
                    <a class="item_image" href="magazine.html">
                      <img src="assets/images/blog/1.jpg" alt="image_not_found"  style="width: 75px; height: 75px;">
                    </a>
                    <div class="item_content">
                      <h4 class="item_title">
                        <a href="magazine.html" style="font-size: 11px;">블렌딩이란?</a>
                      </h4>
                      <span class="post_date text-uppercase">Nobember 30 - 2021</span>
                    </div>
                  </div>
    
    
                </div>
              </div>
            </div>
          </div>
        </div>
    
        <div class="footer_bottom text-center">
          <div class="container">
            <p class="copyright_text mb-0">Copyright@ 2021 Desing by <a
                href="https://themeforest.net/user/xpressrow">Girl's Main</a></p>
          </div>
        </div>
      </footer>
    <!-- footer_section - end
      ================================================== -->


  </div>
  <!-- body_wrap - end -->

  <!-- fraimwork - jquery include -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

  <!-- animation - jquery include -->
  <script src="assets/js/wow.min.js"></script>

  <!-- carousel - jquery include -->
  <script src="assets/js/slick.min.js"></script>

  <!-- popup - jquery include -->
  <script src="assets/js/magnific-popup.min.js"></script>

  <!-- isotope filter - jquery include -->
  <script src="assets/js/isotope.pkgd.min.js"></script>

  <!-- google map - jquery include -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
  <script src="assets/js/gmaps.min.js"></script>

  <!-- jquery-ui - jquery include -->
  <script src="assets/js/jquery-ui.js"></script>
  

  <!-- off canvas sidebar - jquery include -->
  <script src="assets/js/mCustomScrollbar.js"></script>

  <!-- custom - jquery include -->
  <script src="assets/js/main.js"></script>
  
  <!-- 유저 세션 받아오기 -->
  <script src="assets/js/com_lib.js"></script>
  <!-- 제이쿼리  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
     <script type="text/javascript">
  	$(document).ready(function(){
  		getMemberInfo();
  	});
  	
  	// 전역변수로 선언 
  	let id;
  	
  	function sessionCheck(obj){
  		id = obj["member"].memberId;
  		console.log(id);
  	}
  </script>

</body>
</html>