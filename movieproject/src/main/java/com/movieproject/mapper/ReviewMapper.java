package com.movieproject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.movieproject.domain.ReviewVO;

public interface ReviewMapper {

	// movie_id에 해당하는 review를 list형식으로 가지고 온다.
	public List<ReviewVO> readReview(int movie_id);
	
	public void insertReview(ReviewVO review);
	
	public int insertReview(@Param("reviews_content") String reviews_content, @Param("movie_id") int movie_id);
	
}
