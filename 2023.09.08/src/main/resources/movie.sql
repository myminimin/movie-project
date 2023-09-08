-- MOVIE table 
CREATE TABLE MOVIE (
    MOVIE_ID NUMBER(20,0) primary key,
    MOVIE_TITLE VARCHAR2(100 BYTE),
    MOVIE_IMAGE VARCHAR2(100 BYTE),
    MOVIE_CONTENT VARCHAR2(3000 BYTE),
	MOVIE_RelaseYear DATE
);

-- MOVIE_DIRECTOR table
CREATE TABLE MOVIE_DIRECTOR (
	MOVIE_ID NUMBER(20,0),
    DIRECTOR_ID NUMBER(20,0)
);

-- DIRECTOR table
CREATE TABLE DIRECTOR (
	DIRECTOR_ID NUMBER(20,0),
    DIRECTOR_NAME VARCHAR2(50 BYTE)
);

-- MOVIE_ACTOR table
CREATE TABLE MOVIE_ACTOR (
	MOVIE_ID NUMBER(20,0),
    ACTOR_ID NUMBER(20,0)
);

-- ACTOR table
CREATE TABLE ACTOR (
	ACTOR_ID NUMBER(20,0),
    ACTOR_NAME VARCHAR2(50 BYTE)
);

-- MOVIE_GENRE table
CREATE TABLE MOVIE_GENRE (
	MOVIE_ID NUMBER(20,0),
    GENRE_ID NUMBER(20,0)
);

-- GENRE table
CREATE TABLE GENRE (
	GENRE_ID NUMBER(20,0),
    GENRE VARCHAR2(50 BYTE)
);

-- MEMBER table
CREATE TABLE MEMBER (
	MEMBER_ID VARCHAR2(20 BYTE) primary key, 
	MEMBER_PW VARCHAR2(30 BYTE), 
	MEMBER_NAME VARCHAR2(50 BYTE), 
	MEMBER_EMAIL VARCHAR2(20 BYTE), 
	MEMBER_JOINDATE DATE DEFAULT sysdate
);

-- rating table
create table rating (
    MOVIE_ID NUMBER(20,0),
    MEMBER_ID VARCHAR2(20 BYTE),
    rate LONG
);

-- REVIEWS table
CREATE TABLE REVIEWS (
	REVIEWS_ID NUMBER(20,0) primary key,
    REVIEWS_CONTENT VARCHAR2(3000 BYTE),
	REVIEWS_CreationDate DATE DEFAULT sysdate, 
	REVIEWS_UpdatedDate DATE DEFAULT sysdate
);
   

-- movie 더미 데이터 추가
insert into movie
	(MOVIE_ID, movie_title, movie_image, movie_content, movie_relaseyear)
		values (seq_movie_id.nextval, 'Oppenheimer', '타이틀.jpg'
				, '“나는 이제 죽음이요, 세상의 파괴자가 되었다.” 세상을 구하기 위해 세상을 파괴할 지도 모르는 선택을 해야 하는 천재 과학자의 핵개발 프로젝트.'
					, to_date('23/08/15','RR/MM/DD')) ;
insert into movie
	(MOVIE_ID, movie_title, movie_image, movie_content, movie_relaseyear)
		values (seq_movie_id.nextval, 'Elemental', '엘리멘탈.jpg'
				, '불, 물, 공기, 흙 4개의 원소들이 살고 있는 엘리멘트 시티 재치 있고 불처럼 열정 넘치는 앰버는 어느 날 우연히 유쾌하고 감성적이며 물 흐르듯 사는 웨이드를 만나 특별한 우정을 쌓으며, 지금껏 믿어온 모든 것들이 흔들리는 새로운 경험을 하게 되는데... 웰컴 투 엘리멘트 시티!'
					, to_date('23/06/14','RR/MM/DD')) ;

-- director 더미 데이터 추가
insert into DIRECTOR
	(DIRECTOR_ID, DIRECTOR_NAME) 
		VALUES (DIRECTOR_ID.nextval, '크리스토퍼놀란');
insert into DIRECTOR
	(DIRECTOR_ID, DIRECTOR_NAME) 
		VALUES (DIRECTOR_ID.nextval, '피터손');

-- actor 테이블에 더미데이터 추가
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '킬리언 머피');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '에밀리 블런트');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '맷 데이먼');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '아이언맨');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '플로렌스 퓨');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '조쉬 하트넷');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '케이시 애플렉');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '레아 루이스');
insert into actor (actor_id, actor_name) 
	values (actor_id.nextval, '마무두 아티');
	
	SELECT * FROM ACTOR;
	
-- genre 테이블 더미 데이터 추가
insert into genre (genre_id, genre) 
	values (genre_id.nextval, '애니메이션');
insert into genre (genre_id, genre) 
	values (genre_id.nextval, '스릴러');
	
-- reviews 더미데이터
insert into reviews (reviews_id, REVIEWS_CONTENT, REVIEWS_CreationDate, REVIEWS_UpdatedDate)
	values (seq_reviews_id.nextval, '놀란의 핵폭탄 같았던 영화...', to_date('23/06/14','RR/MM/DD'), to_date('23/06/14','RR/MM/DD'));
insert into reviews (reviews_id, REVIEWS_CONTENT, REVIEWS_CreationDate, REVIEWS_UpdatedDate)
	values (seq_reviews_id.nextval, '원소 얘긴데 왜 눈물나게 만드냐...', to_date('23/06/14','RR/MM/DD'), to_date('23/06/14','RR/MM/DD'));
	
	
-- member admin 데이터 추가
insert into member (member_id, member_pw, member_name, member_email, MEMBER_JOINDATE)
	VALUES ('admin', '1234', '관리자', 'admin@naver.com', sysdate);

-- director PK 추가
alter table director add primary key(director_id);

alter table movie_director 
	add CONSTRAINT fk_director foreign key(director_id) references director (director_id);

-- actor 테이블에 PK 추가
	alter table actor add primary key(actor_id);
	
-- genre PK 추가
alter table genre add primary key(genre_id);

-- movie_director FK 추가
alter table movie_director 
	add CONSTRAINT fk_movie foreign key(movie_id) references movie (movie_id);

-- movie_actor 테이블에 FK 추가
alter table movie_actor 
	add CONSTRAINT fk_movie_act foreign key(movie_id) references movie (movie_id);

alter table movie_actor
	add CONSTRAINT fk_actor_act foreign key(actor_id) references actor (actor_id);
	
-- movie_genre 테이블에 FK 추가
alter table movie_genre
	add CONSTRAINT fk_movie_gen foreign key(movie_id) references movie (movie_id);

alter table movie_genre
	add CONSTRAINT fk_genre_gen foreign key(genre_id) references genre (genre_id);

-- rating table FK 추가
alter table rating
	add CONSTRAINT fk_movie_rat foreign key(movie_id) references movie (movie_id);

alter table rating
	add CONSTRAINT fk_member_rat foreign key(member_id) references member (member_id);

alter table reviews add movie_id number(20,0);
alter table reviews add member_id varchar2(20 byte);

alter table reviews
	add CONSTRAINT fk_movie_rev foreign key(movie_id) references movie (movie_id);

alter table reviews
	add CONSTRAINT fk_member_rev foreign key(member_id) references member (member_id);

-- 시퀀스 관리
drop sequence ACTOR_id;

CREATE SEQUENCE  "SEQ_MOVIE_ID" ;

CREATE SEQUENCE  "SEQ_REVIEWS_ID" ;

CREATE SEQUENCE  "DIRECTOR_ID" ;

CREATE SEQUENCE ACTOR_ID ;
CREATE SEQUENCE GENRE_ID ;






-- 이미지 테이블
create table poster(
	movie_id int,
	fileName varchar2(100) not null,
	uploadPath varchar2(200) not null,
	uuid varchar2(100) not null,
	primary key(uuid),
	foreign key(movie_id) references movie(movie_id)
);

drop table poster;
