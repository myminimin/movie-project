package com.movieproject.domain;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

@Repository
public interface MovieDAO {
	 ArrayList<HashMap<String, Object>> getMovieDetails(int movie_id);
}
