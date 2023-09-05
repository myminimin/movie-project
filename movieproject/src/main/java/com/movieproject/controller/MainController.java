package com.movieproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.movieproject.domain.Criteria;
import com.movieproject.service.MainService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/movieproject/*") // localhost/movieproject/
@AllArgsConstructor
@Log4j2
public class MainController {

	private MainService service; // DB와 mapper 연동하여 객체 생성
	Criteria cri = new Criteria();
	
	@GetMapping("/main") // localhost/movieproject/main
	public void mList(Model model) {
		
		log.info("mList");
		
		model.addAttribute("Mlist", service.getMlist(cri));
		
	}
	
	
	@GetMapping("/main") // localhost/movieproject/main
	public void main() {
		
		log.info("mList");
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
