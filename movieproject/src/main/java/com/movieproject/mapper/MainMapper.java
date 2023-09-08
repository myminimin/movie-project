package com.movieproject.mapper;

import java.util.List;

import com.movieproject.domain.MovieVO;

public interface MainMapper {

	public List<MovieVO> getMlist(); // sql을 이용하여 List 반환
	
}
