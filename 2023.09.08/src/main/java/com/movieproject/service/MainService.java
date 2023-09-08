package com.movieproject.service;

import java.util.List;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;

public interface MainService {
	
	public List<MovieVO> getMlist(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public MovieVO get(Long movie_id);
	
}
