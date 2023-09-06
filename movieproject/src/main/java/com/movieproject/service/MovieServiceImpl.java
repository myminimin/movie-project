package com.movieproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;
import com.movieproject.mapper.MovieMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
@AllArgsConstructor
public class MovieServiceImpl implements MovieService {
	
	private MovieMapper mapper;
	
	@Override
	public MovieVO get(int movie_id) {
	
		log.info("영화 정보를 가지고 옵니다..." + movie_id);
		
		return mapper.read(movie_id);
	}

	@Override
	public List<MovieVO> getList(Criteria cri) {
		return null;
	}

	
	
}
