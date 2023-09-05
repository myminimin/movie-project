package com.movieproject.service;

import java.util.List;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;

public interface MainService {
	
	public List<MovieVO> getMlist(Criteria cri);
	
}
