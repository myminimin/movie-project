package com.movieproject.domain;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int movie_id;
	private int reviews_id;
	private String reviews_content;
	private String reviews_CreationDate;
	private String reviews_UpdatedDate;
	
}
