package com.movieproject.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.movieproject.service.MainService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/movie/*") 
@AllArgsConstructor
@Log4j2
public class MainController {

	MainService service;

	@GetMapping("/index") // localhost/movie/index
	public void main(Model model) {

		log.info("index페이지 출력");
		
		model.addAttribute("mList", service.getMlist());
		
		
	}

}
