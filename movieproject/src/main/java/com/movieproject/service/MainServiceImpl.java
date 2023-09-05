package com.movieproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;
import com.movieproject.mapper.MainMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service
@AllArgsConstructor
@Log4j2
public class MainServiceImpl implements MainService {

	private MainMapper mapper; // 필드 -> 생성자 자동 구현
	
	@Override
	public List<MovieVO> getMlist(Criteria cri){
		
		log.info("get List with criteria : " + cri);
		
		return mapper.getMlistWithPaging(cri);
		
	}
	
	/*
	 * @Override public int getTotal(Criteria cri){
	 * 
	 * log.info("get total count");
	 * 
	 * return mapper.getTotalCount(cri);
	 * 
	 * }
	 */
	
}
