package com.movieproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movieproject.domain.Criteria;
import com.movieproject.domain.MovieVO;
import com.movieproject.domain.PageDTO;
import com.movieproject.service.MainService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/movie/*") // localhost/movieproject/
@AllArgsConstructor
@Log4j2
public class MainController {

	private MainService service; // DB와 mapper 연동하여 객체 생성

	@GetMapping("/index") // localhost/movie/index
	public void main(Criteria cri, Model model) {

		log.info("index");
		
		model.addAttribute("mList", service.getMlist(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		
		int total = service.getTotal(cri);
		
		log.info("total : " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}
	
	@GetMapping({"/detail"}) // http://localhost/movie/
	public void get(@RequestParam("movie_id") Long movie_id,  Model model) {
		
		log.info("/detail");
		
		model.addAttribute("movie", service.get(movie_id));
		
	}
	
	@GetMapping("/login")
	public void login() {
		
		log.info("/login");
		
	}
	
	
	
	
}
