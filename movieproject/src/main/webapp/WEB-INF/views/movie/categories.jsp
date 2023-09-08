<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./categories.html">Categories</a>
                        <span>Romance</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>Romance</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <p>Order by:</p>
                                        <select>
                                            <option value="">A-Z</option>
                                            <option value="">1-10</option>
                                            <option value="">10-50</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        	<c:forEach items="${mList }" var="movie">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg"
										data-setbg="/resources/img/trending/${movie.movie_image}.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a
												href='/movie/details?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
													value="${movie.movie_title}" /></a></h5>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            </div>
                    <div class="product__pagination">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
				<div class="product__sidebar">
					<div class="product__sidebar__view">
						<div class="section-title">
							<h5>Top Views</h5>
						</div>
						<ul class="filter__controls">
							<li class="active" data-filter="*">Day</li>
							<li data-filter=".week">Week</li>
							<li data-filter=".month">Month</li>
							<li data-filter=".years">Years</li>
						</ul>
						<c:forEach items="${mList}" var="movie">
							<div class="filter__gallery">
								<div class="product__sidebar__view__item set-bg mix week years"
									data-setbg="/resources/img/sidebar/${movie.movie_image}-side.jpg">

									<div class="ep">18 / ?</div>
									<div class="view">
										<i class="fa fa-eye"></i> 9141
									</div>
									<h5>
										<a
											href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
												value="${movie.movie_title}" /></a>
									</h5>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<%-- <div class="product__sidebar__comment">
					<div class="section-title">
						<h5>New Comment</h5>
					</div>

					<div class="product__sidebar__comment__item">
						<c:forEach items="${mList}" var="movie">
							<div class="product__sidebar__comment__item__pic">
								<img src="/resources/img/sidebar/comment-2.jpg" alt="">
							</div>
							<div class="product__sidebar__comment__item__text">
								<ul>
									<li>Action</li>
									<li>Movie</li>
								</ul>
								<h5>
									<a
										href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
											value="${movie.movie_title}" /></a>
								</h5>
								<span><i class="fa fa-eye"></i> 19.141 Viewes</span>
							</div>
					</c:forEach>
					</div> --%>


				</div>
</div>
</div>
</section>
<!-- Product Section End -->

<%@include file="../includes/footer.jsp"%>

  <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/player.js"></script>
<script src="/resources/js/jquery.nice-select.min.js"></script>
<script src="/resources/js/mixitup.min.js"></script>
<script src="/resources/js/jquery.slicknav.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/main.js"></script>

</body>

</html>