package com.movieproject.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAOImpl implements MovieDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<HashMap<String, Object>> getMovieDetails(int movie_id) {
		List<Object> resultList = sqlSession.selectList("getMovieDetails", movie_id);
        ArrayList<HashMap<String, Object>> movieDetails = new ArrayList<>();

        for (Object result : resultList) {
            if (result instanceof HashMap) {
                movieDetails.add((HashMap<String, Object>) result);
            }
        }

        return movieDetails;
	}

}
