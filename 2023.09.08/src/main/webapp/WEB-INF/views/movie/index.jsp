<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 태그 라이브러리 활성화 -->

<%@ include file="../includes/header.jsp"%>

<html lang="zxx">

<!-- Hero Section Begin -->
<section class="hero">
	<div class="container">
		<div class="hero__slider owl-carousel">
		<c:forEach items="${mList }" var="movie">
			<div class="hero__items set-bg"
				data-setbg="/resources/img/movie/타이틀.jpg">
				<div class="row">
					<div class="col-lg-6">
						<div class="hero__text">
							<div class="label">Adventure</div>
							<h2>${movie.movie_title}</h2>
							<p>${movie.movie_content}</p>
							<a href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><span>Detail</span> <i
								class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="hero__items set-bg"
				data-setbg="/resources/img/hero/test1.jpg">
				<div class="row">
					<div class="col-lg-6">
						<div class="hero__text">
							<div class="label">Adventure</div>
							<h2>아 내가 다 하네</h2>
							<p>상준갓짱짱맨 </p>
							<a href="#"><span>Watch Now</span> <i
								class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			
			</c:forEach>
		</div>
	</div>
</section>
<!-- Hero Section End -->

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="trending__product">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8">
							<div class="section-title">
								<h4>Trending Now</h4>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="btn__all">
								<a href="#" class="primary-btn">View All <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="row">
						<c:forEach items="${mList }" var="movie">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="/resources/img/trending/Oppenheimer.jpg">
										<div class="ep">18 / 18</div>
										<div class="comment">
											<i class="fa fa-comments"></i> 11
										</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
									</div>
									<div class="product__item__text">

										<h5>
											<a
												href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
													value="${movie.movie_title}" /></a>
										</h5>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="popular__product">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8">
							<div class="section-title">
								<h4>Popular Shows</h4>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="btn__all">
								<a href="#" class="primary-btn">View All <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="row">
						<c:forEach items="${mList }" var="movie">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="/resources/img/trending/Oppenheimer.jpg">
										<div class="ep">18 / 18</div>
										<div class="comment">
											<i class="fa fa-comments"></i> 11
										</div>
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
									</div>
									<div class="product__item__text">
										<h5>
											<a
												href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
													value="${movie.movie_title}" /></a>
										</h5>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
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
							<c:forEach items="${mList }" var="movie">
							<div class="filter__gallery">
								<div class="product__sidebar__view__item set-bg mix week years"
									data-setbg="/resources/img/sidebar/tv-3.jpg">
									
									<div class="ep">18 / ?</div>
									<div class="view">
										<i class="fa fa-eye"></i> 9141
									</div>
									<h5>
										<a href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
													value="${movie.movie_title}" /></a>
									</h5>
								</div>
								</c:forEach>
							</div>
						</div>
						<div class="product__sidebar__comment">
							<div class="section-title">
								<h5>New Comment</h5>
							</div>
							
							<div class="product__sidebar__comment__item">
							<c:forEach items="${mList }" var="movie">
								<div class="product__sidebar__comment__item__pic">
									<img src="/resources/img/sidebar/comment-2.jpg" alt="">
								</div>
								<div class="product__sidebar__comment__item__text">
									<ul>
										<li>Action</li>	
										<li>Movie</li>										
									</ul>
									<h5>
										<a href='/movie/detail?movie_id=<c:out value="${movie.movie_id}"/>'><c:out
													value="${movie.movie_title}" /></a>
									</h5>
									<span><i class="fa fa-eye"></i> 19.141 Viewes</span>
								</div>
							</div>
							</c:forEach>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
</section>
<!-- Product Section End -->

<!-- Search model Begin -->
<div class="search-model">
	<div class="h-100 d-flex align-items-center justify-content-center">
		<div class="search-close-switch">
			<i class="icon_close"></i>
		</div>
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

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='movie_id' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/movie/detail");
											actionForm.submit();

										});

					});
</script>




<%@ include file="../includes/footer.jsp"%>