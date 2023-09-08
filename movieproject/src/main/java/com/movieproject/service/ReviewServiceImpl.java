package com.movieproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.movieproject.domain.ReviewVO;
import com.movieproject.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@AllArgsConstructor
@Service
public class ReviewServiceImpl implements ReviewService {

	private ReviewMapper mapper;
	
	@Override
	public List<ReviewVO> getReview(int movie_id) {
		return mapper.readReview(movie_id);
	}	// 리뷰 가져오기

	@Override
	public int registerReview(String reviews_content, int movie_id) {
		return mapper.insertReview(reviews_content, movie_id);
	}	// 리뷰 등록

	@Override
	public boolean removeReview(int reviews_id) {
		return mapper.deleteReview(reviews_id) == 1;
	}	// 리뷰 삭제 (정상적으로 삭제가 이루어지면 1이라는 값이 반환된다)

}
