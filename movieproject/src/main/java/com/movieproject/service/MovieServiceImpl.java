package com.movieproject.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieDAO;
import com.movieproject.domain.MovieVO;
import com.movieproject.mapper.MainMapper;
import com.movieproject.mapper.MovieMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
@AllArgsConstructor
public class MovieServiceImpl implements MovieService {
	
	private MovieMapper mapper;
	
	private MovieDAO movieDAO;
	
	@Autowired
    public MovieServiceImpl(MovieDAO movieDAO) {
        this.movieDAO = movieDAO;
    }

	
	@Override
	public MovieVO get(int movie_id) {
	
		log.info("영화 정보를 가지고 옵니다..." + movie_id);
		
		return mapper.read(movie_id);
	}

	@Override
	public ArrayList<HashMap<String, Object>> getMovieDetails(int movie_id) {
		return movieDAO.getMovieDetails(movie_id);
	}




	
	
}
