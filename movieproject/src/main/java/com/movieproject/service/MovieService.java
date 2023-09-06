package com.movieproject.service;

import java.util.List;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;

public interface MovieService {

	public MovieVO get(int movie_id);
	
	public List<MovieVO> getList(Criteria cri);
	
}
