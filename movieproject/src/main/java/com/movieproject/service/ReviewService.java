package com.movieproject.service;

import java.util.List;

import com.movieproject.domain.ReviewVO;

public interface ReviewService {

	// 리뷰 가져오기
	public List<ReviewVO> getReview(int movie_id);
	
	// 리뷰 등록
	public int registerReview(String reviews_content, int movie_id); // 리뷰 등록
	
	// 리뷰 삭제
	public boolean removeReview(int reviews_id);
}
