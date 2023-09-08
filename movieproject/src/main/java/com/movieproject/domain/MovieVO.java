package com.movieproject.domain;


import lombok.Data;

@Data
public class MovieVO {
	
	// movie table
	private int movie_id;
	private String movie_title;
	private String movie_image;
	private String movie_content;
	private String movie_relaseyear;
	
	private String actor_name;	  // actor
	private String director_name; // director
	private String genre;	  	  // genre

	/*
	private List<GenreVO> genres;
	private List<ActorVO> actors;
	private List<DirectorVO> directors;
	*/
	
	
	/* sub table
	private int actor_id;	  // movie_actor
	private int director_id;  // movie_director
	private int genre_id;	  // movie_genre
	
	private String actor_name;	  // actor
	private String director_name; // director
	private String genre;	  	  // genre
	*/
}
