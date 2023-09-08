package com.movieproject.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;
import com.movieproject.service.MovieService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/movie/*")
@AllArgsConstructor
public class MovieController {

	private MovieService service;
	
	
	@GetMapping("/details")
	public void details(@RequestParam("movie_id") int movie_id, Model model) {

		log.info("movie_id를 가지고옵니다.");
		ArrayList<HashMap<String, Object>> movieDetails = service.getMovieDetails(movie_id);

		// Model 객체에 데이터를 추가하여 JSP로 전달
        model.addAttribute("movie", movieDetails);

        // JSP 파일의 이름을 반환
       // return "details"; // "movieDetails"는 JSP 파일의 이름
		
	}
	
	
	
	

	
}
