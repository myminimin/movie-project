package com.movieproject.service;

import java.util.List;

import com.movieproject.domain.ReviewVO;

public interface ReviewService {

	public List<ReviewVO> getReview(int movie_id);
	
	public void insertReview(ReviewVO review);
	
	public int registerReview(String reviews_content, int movie_id); // 리뷰 등록
	
}
