<%-- 
    Document   : Detail
    Created on : Jan 16, 2022, 8:38:45 AM
    Author     : Duong Xuan Thang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Safety Shop</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css2/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css2/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css2/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css2/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css2/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css2/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css2/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css2/style.css" type="text/css">
        
    </head>

    <body>



        <!-- Header Section Begin -->
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- Hero Section End -->

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="breadcrumb__text">
                                <h2>Safety Shop</h2>
                                <div class="breadcrumb__option">
                                    <a href="Home.jsp">Trang chủ</a>
                                    <a href="Detail.jsp">Chi tiết sản phẩm</a>
                                    <span>Gói sản phẩm</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->
             <c:if test="${mesage != null}" >
            <div id="success" style="text-align: center" class="alert alert-success ">
           
                <strong><i class="fa fa-check" aria-hidden="true"></i>  ${mesage}</strong> 
                </c:if>
</div>
            <!-- Product Details Section Begin -->
            <form name="f" method="post">
                <section class="product-details spad">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">

                                <div class="product__details__pic">
                                    <div class="product__details__pic__item">
                                        <img class="product__details__pic__item--large"
                                             src="${detail.image}" alt="">
                                </div>
                                <div class="product__details__pic__slider owl-carousel">
                                    <img data-imgbigurl="${detail.image}"
                                         src="${detail.image}" alt="">
                                    <img data-imgbigurl="${detail.image1}"
                                         src="${detail.image1}" alt="">
                                    <img data-imgbigurl="${detail.image2}"
                                         src="${detail.image2}" alt="">
                                    <img data-imgbigurl="${detail.image3}"
                                         src="${detail.image3}" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="product__details__text">
                                <h3>${detail.name}</h3>
                                <div class="product__details__rating">
                                   
                                   
                                </div>

                                <div class="product__details__price"><fmt:formatNumber pattern="#,##0.###" value="${detail.price}"/> vnd</div>

                                <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam
                                    vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet
                                    quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                                <div class="product__details__quantity">
                                    <div>
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input name="num" type="text" value="1">
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                                <input  class="primary-btn" type="submit" onclick="AddCart('${detail.id}')"  data-type="success" value="Thêm vào giỏ hàng"/>
                                <ul>
                                    <li><b>Availability</b> <span>In Stock</span></li>
                                    <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                                    <li><b>Weight</b> <span>0.5 kg</span></li>
                                    <li><b>Share on</b>
                                        <div class="share">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa fa-pinterest"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="product__details__tab">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id ="home-tab" data-toggle="tab" href="#tabs-1" aria-controls="home" role="tab"
                                           aria-selected="true">Mô tả</a>
                                    </li>
                                   
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="home" aria-labelledby="home-tab" role="tabpanel">
                                        <div class="product__details__tab__desc">
                                            <h6>Thông tin sản phẩm</h6>
                                            <p>${detail.information}:
                                                Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam
                                                vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet
                                                quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                                            <p>${detail.information}
                                                Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam
                                                vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet
                                                quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                                        </div>
                                    </div>
                                 
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
        <!-- Product Details Section End -->

        <!-- Related Product Section Begin -->
        <section class="related-product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title related__product__title">
                            <h2>Sản phẩm tương tự</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${listP.get(1).getImage()}">
                                <ul class="product__item__pic__hover">
                                    
                                    <li><a href="detail?pid=${listP.get(1).getId()}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="detail?pid=${listP.get(1).getId()}">${listP.get(1).getName()}</a></h6>
                                <h5><fmt:formatNumber pattern="#,##0.###" value="${listP.get(1).getPrice()}"/> VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${listP.get(2).getImage()}">
                                <ul class="product__item__pic__hover">
                                   
                                    <li><a href="detail?pid=${listP.get(2).getId()}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="detail?pid=${listP.get(2).getId()}">${listP.get(2).getName()}</a></h6>
                                <h5><fmt:formatNumber pattern="#,##0.###" value="${listP.get(2).getPrice()}"/> VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${listP.get(3).getImage()}">
                                <ul class="product__item__pic__hover">
                                  
                                    <li><a href="detail?pid=${listP.get(3).getId()}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="detail?pid=${listP.get(3).getId()}">${listP.get(3).getName()}</a></h6>
                                <h5><fmt:formatNumber pattern="#,##0.###" value="${listP.get(3).getPrice()}"/> VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${listP.get(4).getImage()}">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${listP.get(4).getName()}</a></h6>
                                <h5><fmt:formatNumber pattern="#,##0.###" value="${listP.get(4).getPrice()}"/>VND</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Related Product Section End -->

        <!-- Footer Section Begin -->
        <jsp:include page="Footer.jsp"></jsp:include>>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
       
        <script src="js2/jquery-3.3.1.min.js"></script>
        <script src="js2/bootstrap.min.js"></script>
        <script src="js2/jquery.nice-select.min.js"></script>
        <script src="js2/jquery-ui.min.js"></script>
        <script src="js2/jquery.slicknav.js"></script>
        <script src="js2/mixitup.min.js"></script>
        <script src="js2/owl.carousel.min.js"></script>
        <script src="js2/main.js"></script>


    </body>

</html>
<script type="text/javascript">
                                function AddCart(id) {
                                    document.f.action = "AddCart?pid=" + id;
                                    document.f.submit();
                                }
</script>
