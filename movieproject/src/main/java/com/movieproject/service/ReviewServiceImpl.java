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
	}

	@Override
	public void insertReview(ReviewVO review) {
		
		mapper.insertReview(review);
	}

	@Override
	public int registerReview(String reviews_content, int movie_id) {
		// TODO Auto-generated method stub
		return mapper.insertReview(reviews_content, movie_id);
	}

}
