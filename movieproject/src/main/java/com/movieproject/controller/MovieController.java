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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;
import com.movieproject.domain.ReviewVO;
import com.movieproject.service.MovieService;
import com.movieproject.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/movie/*")
@AllArgsConstructor
public class MovieController {

	private MovieService service;
	private ReviewService serviceReview;
	
	
	@GetMapping("/details")
	public void details(@RequestParam("movie_id") int movie_id, Model model) {

		log.info("movie_id를 가지고옵니다.");
		ArrayList<HashMap<String, Object>> movieDetails = service.getMovieDetails(movie_id);

		// Model 객체에 데이터를 추가하여 JSP로 전달
        model.addAttribute("movie", movieDetails);
        model.addAttribute("reviews", serviceReview.getReview(movie_id));
        
	}	// details에 movie_id와 movie_id에 해당하는 reviews들을 model에 담아 보낸다.
	
	
	  @PostMapping("/register") 
	  public String register(@RequestParam("reviews_content") String reviews_content,
	  RedirectAttributes rttr, @RequestParam("movie_id") int movie_id) {
	  
		  log.info("register : " + reviews_content);
		  
		  serviceReview.registerReview(reviews_content, (int) movie_id);
		  
		  return "redirect:/movie/details?movie_id=" + movie_id; 
	  
	  }	// 리뷰 등록
	  
	  @PostMapping("/remove")
	  public String remove(@RequestParam("reviews_id") int reviews_id, RedirectAttributes rttr
			  				, @RequestParam("movie_id") int movie_id) {
		  
		  log.info("remove : " + reviews_id);
		  if(serviceReview.removeReview(reviews_id)) {
			  rttr.addFlashAttribute("result", "success");
		  }
		  
		  return "redirect:/movie/details?movie_id=" + movie_id;
	  }
	 
	

	
}
