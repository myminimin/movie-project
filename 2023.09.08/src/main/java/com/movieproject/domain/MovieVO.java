package com.movieproject.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MovieVO {
	
	private String movie_title, movie_image, movie_content, movie_releaseyear;
	private int movie_id;

}
