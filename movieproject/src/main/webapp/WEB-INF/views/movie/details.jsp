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
					<a href="./index.jsp"><i class="fa fa-home"></i> Home</a> <a
						href="./categories.jsp">Categories</a> <span>thriller</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->
<!-- Anime Section Begin -->
<section class="anime-details spad">
	<div class="container">
		<div class="anime__details__content">
			<div class="row">
				<div class="col-lg-3">
					<div class="anime__details__pic set-bg"
						data-setbg="/resources/img/movie/${movie[0].movie_image}.jpg">
						<div class="comment">
							<i class="fa fa-comments"></i> 11
						</div>
						<div class="view">
							<i class="fa fa-eye"></i> 9141
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="anime__details__text">
						<c:choose>
							<c:when test="${not empty movie}">
								<div class="anime__details__title">
									<h3>
										<c:out value="${movie[0].movie_title}" />
									</h3>
									<span><c:out value="${movie[0].movie_title}" /></span>
								</div>
								<div class="anime__details__rating">
									<div class="rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star-half-o"></i></a>
									</div>
									<span>1.029 Votes</span>
								</div>
								<p>
									<c:out value="${movie[0].movie_content}" />
								</p>
								<div class="anime__details__widget">
									<div class="row">
										<div class="col-lg-6 col-md-6">
											<ul>
												<li><span>Director:</span> <c:out
														value="${movie[0].director_name}" /></li>
												<li><span>Main Actor(s):</span> <c:forEach
														items="${movie}" var="actor" varStatus="actorStatus">
														<c:if
															test="${not uniqueActors.contains(actor.actor_name)}">
															<c:if test="${not actorStatus.first}">, </c:if>
															<c:out value="${actor.actor_name}" />
															<c:set var="uniqueActors"
																value="${uniqueActors},${actor.actor_name}" />
														</c:if>
													</c:forEach></li>
												<li><span>Release Year:</span> <c:out
														value="${movie[0].movie_relaseyear}" /></li>
												<li><span>Genre:</span> <c:forEach items="${movie}"
														var="genre" varStatus="genreStatus">
														<c:if test="${not uniqueGenres.contains(genre.genre)}">
															<c:if test="${not genreStatus.first}">, </c:if>
															<c:out value="${genre.genre}" />
															<c:set var="uniqueGenres"
																value="${uniqueGenres},${genre.genre}" />
														</c:if>
													</c:forEach></li>
											</ul>
										</div>

									</div>
								</div>
							</c:when>
							<c:otherwise>
								<p>No movie details available.</p>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-8 col-md-8">
			<div class="anime__details__review">
				<div class="section-title">
					<h5>Reviews</h5>
				</div>
				<c:forEach var="item" items="${reviews}">
					<div class="anime__review__item">
						<div class="anime__review__item__pic">
							<img src="/resources/img/anime/${item.reviews_id}.jpg" alt="">
						</div>
						<div class="anime__review__item__text">
							<p>
								<c:out value="${item.reviews_content }" />
							</p>
						</div>
					</div>
				</c:forEach>
				<div class="anime__details__form">
					<div class="section-title">
						<h5>Your Comment</h5>
					</div>
					<form role="form" method="post" action="register">
						<input type="hidden" name="movie_id" value="${movie[0].movie_id}">
						<textarea placeholder="Your Comment" name='reviews_content'></textarea>
						<button type="submit">
							<i class="fa fa-location-arrow"></i> Review
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- sidebar  -->
	<!-- <div class="col-lg-4 col-md-4">
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>you might like...</h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Boruto: Naruto next generations</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-2.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-3.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-4.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                            </div>
                        </div>
                    </div>  -->
</section>
<!-- Anime Section End -->

<%@include file="../includes/footer.jsp"%>

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