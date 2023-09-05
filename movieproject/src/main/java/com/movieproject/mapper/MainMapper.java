package com.movieproject.mapper;

import java.util.List;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;

public interface MainMapper {

	public List<MovieVO> getMlist(); // sql을 이용하여 List 반환
	
	public List<MovieVO> getMlistWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
}
