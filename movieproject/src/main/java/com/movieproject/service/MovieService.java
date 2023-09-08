package com.movieproject.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;

public interface MovieService {

	public MovieVO get(int movie_id);
	
	ArrayList<HashMap<String, Object>> getMovieDetails(int movie_id);
	//public MovieVO joinread(int movie_id);
	

	
}
