--------------------------------------------------------
--  File created - Sunday-November-10-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CASTS
--------------------------------------------------------

  CREATE TABLE "AQUA"."CASTS" 
   (	"FILM_ID" NUMBER(10,0), 
	"CAST_MEMBER" VARCHAR2(50 BYTE), 
	"CAST_ROLE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table DIRECTORS
--------------------------------------------------------

  CREATE TABLE "AQUA"."DIRECTORS" 
   (	"FILM_ID" NUMBER(10,0), 
	"DIRECTOR" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table FAN_RATINGS
--------------------------------------------------------

  CREATE TABLE "AQUA"."FAN_RATINGS" 
   (	"FAN_ID" NUMBER(10,0), 
	"FILM_ID" NUMBER(10,0), 
	"IMDB_RATING" NUMBER(10,1), 
	"LAST_RATED" DATE, 
	"FIRST_RATED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table GENRES
--------------------------------------------------------

  CREATE TABLE "AQUA"."GENRES" 
   (	"FILM_ID" NUMBER(10,0), 
	"GENRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table KEYWORDS
--------------------------------------------------------

  CREATE TABLE "AQUA"."KEYWORDS" 
   (	"FILM_ID" NUMBER(10,0), 
	"KEYWORD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table MOVIES
--------------------------------------------------------

  CREATE TABLE "AQUA"."MOVIES" 
   (	"IMDB_RANK" NUMBER(10,0), 
	"IMDB_RATING" NUMBER(10,1), 
	"FILM_TITLE" VARCHAR2(100 BYTE), 
	"IMDB_VOTES" NUMBER(10,0), 
	"FILM_YEAR" NUMBER(4,0), 
	"RUNTIME" NUMBER(10,0), 
	"BUDGET" NUMBER(12,0), 
	"WORLDWIDE_GROSS" NUMBER(12,0), 
	"FILM_ID" NUMBER(10,0), 
	"USA_GROSS" NUMBER(12,0), 
	"AFI_RANK" NUMBER(10,0), 
	"MPAA_RATING" VARCHAR2(10 BYTE), 
	"RELEASE_DATE" DATE, 
	"GROSS_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table MOVIES_DECADE
--------------------------------------------------------

  CREATE TABLE "AQUA"."MOVIES_DECADE" 
   (	"IMDB_RANK" NUMBER(10,0), 
	"IMDB_RATING" NUMBER(10,1), 
	"FILM_TITLE" VARCHAR2(100 BYTE), 
	"IMDB_VOTES" NUMBER(10,0), 
	"FILM_YEAR" NUMBER(4,0), 
	"RUNTIME" NUMBER(10,0), 
	"BUDGET" NUMBER(12,0), 
	"WORLDWIDE_GROSS" NUMBER(12,0), 
	"FILM_ID" NUMBER(10,0), 
	"USA_GROSS" NUMBER(12,0), 
	"AFI_RANK" NUMBER(10,0), 
	"MPAA_RATING" VARCHAR2(10 BYTE), 
	"RELEASE_DATE" DATE, 
	"GROSS_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" 
  PARTITION BY LIST ("FILM_YEAR") 
 (PARTITION "FY_1910"  VALUES (1910, 1911, 1912, 1913, 1914, 1915, 1916, 1917, 1918, 1919) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1920"  VALUES (1920, 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1930"  VALUES (1930, 1931, 1932, 1933, 1934, 1935, 1936, 1937, 1938, 1939) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1940"  VALUES (1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1950"  VALUES (1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1960"  VALUES (1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1970"  VALUES (1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1980"  VALUES (1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_1990"  VALUES (1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_2000"  VALUES (2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS , 
 PARTITION "FY_2010"  VALUES (2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" NOCOMPRESS ) 
  PARALLEL 4 ;
--------------------------------------------------------
--  DDL for Table MPAA_RATINGS
--------------------------------------------------------

  CREATE TABLE "AQUA"."MPAA_RATINGS" 
   (	"MPAA_RATING" VARCHAR2(10 BYTE), 
	"RATING_DESCRIPTION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table NEW_MOVIES
--------------------------------------------------------

  CREATE TABLE "AQUA"."NEW_MOVIES" 
   (	"FILM_ID" NUMBER(10,0), 
	"FILM_TITLE" VARCHAR2(100 BYTE), 
	"FILM_YEAR" NUMBER(4,0), 
	"IMDB_RANK" NUMBER(10,0), 
	"IMDB_RATING" NUMBER(10,1), 
	"IMDB_VOTES" NUMBER(10,0), 
	"RUNTIME" NUMBER(10,0), 
	"BUDGET" NUMBER(12,0), 
	"RELEASE_DATE" DATE, 
	"WORLDWIDE_GROSS" NUMBER(12,0), 
	"USA_GROSS" NUMBER(12,0), 
	"GROSS_DATE" DATE, 
	"AFI_RANK" NUMBER(10,0), 
	"MPAA_RATING" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table NORM_GENRES
--------------------------------------------------------

  CREATE TABLE "AQUA"."NORM_GENRES" 
   (	"GENRE_ID" NUMBER(10,0), 
	"GENRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table SERIES
--------------------------------------------------------

  CREATE TABLE "AQUA"."SERIES" 
   (	"SERIES_NAME" VARCHAR2(20 BYTE), 
	"YEAR" NUMBER, 
	"EPISODE_NAME" VARCHAR2(50 BYTE), 
	"EPISODE_RATING" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "AQUA"."STUDENTS" 
   (	"FNAME" VARCHAR2(55 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table TAGLINES
--------------------------------------------------------

  CREATE TABLE "AQUA"."TAGLINES" 
   (	"FILM_ID" NUMBER(10,0), 
	"TAGLINE" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table TEST_NORMAL
--------------------------------------------------------

  CREATE TABLE "AQUA"."TEST_NORMAL" 
   (	"EMPNO" NUMBER(10,0), 
	"ENAME" VARCHAR2(30 BYTE), 
	"SAL" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Table WRITERS
--------------------------------------------------------

  CREATE TABLE "AQUA"."WRITERS" 
   (	"FILM_ID" NUMBER(10,0), 
	"WRITER" VARCHAR2(50 BYTE), 
	"DOCUMENT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Index IMDB_RATING_FXIDX
--------------------------------------------------------

  CREATE INDEX "AQUA"."IMDB_RATING_FXIDX" ON "AQUA"."MOVIES" ("IMDB_RATING") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Index MOVIES_YEAR_IDX
--------------------------------------------------------

  CREATE INDEX "AQUA"."MOVIES_YEAR_IDX" ON "AQUA"."MOVIES" ("FILM_YEAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  DDL for Index INDEX1
--------------------------------------------------------

  CREATE INDEX "AQUA"."INDEX1" ON "AQUA"."STUDENTS" ("FNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "COLORS" ;
--------------------------------------------------------
--  Constraints for Table FAN_RATINGS
--------------------------------------------------------

  ALTER TABLE "AQUA"."FAN_RATINGS" MODIFY ("FAN_ID" NOT NULL ENABLE);
 
  ALTER TABLE "AQUA"."FAN_RATINGS" MODIFY ("FILM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "AQUA"."FAN_RATINGS" MODIFY ("IMDB_RATING" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KEYWORDS
--------------------------------------------------------

  ALTER TABLE "AQUA"."KEYWORDS" MODIFY ("FILM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "AQUA"."KEYWORDS" MODIFY ("KEYWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIES
--------------------------------------------------------

  ALTER TABLE "AQUA"."MOVIES" MODIFY ("FILM_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "AQUA"."MOVIES" MODIFY ("FILM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MPAA_RATINGS
--------------------------------------------------------

  ALTER TABLE "AQUA"."MPAA_RATINGS" MODIFY ("MPAA_RATING" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERIES
--------------------------------------------------------

  ALTER TABLE "AQUA"."SERIES" MODIFY ("YEAR" NOT NULL ENABLE);
 
  ALTER TABLE "AQUA"."SERIES" MODIFY ("EPISODE_RATING" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAGLINES
--------------------------------------------------------

  ALTER TABLE "AQUA"."TAGLINES" MODIFY ("FILM_ID" NOT NULL ENABLE);
 
  ALTER TABLE "AQUA"."TAGLINES" MODIFY ("TAGLINE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WRITERS
--------------------------------------------------------

  ALTER TABLE "AQUA"."WRITERS" MODIFY ("FILM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Package CASTS_TAPI
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "AQUA"."CASTS_TAPI" 
IS
type CASTS_tapi_rec
IS
  record
  (
    BUDGET CASTS.BUDGET%type ,
    FILM_YEAR CASTS.FILM_YEAR%type ,
    WORLDWIDE_GROSS CASTS.WORLDWIDE_GROSS%type ,
    MPAA_RATING CASTS.MPAA_RATING%type ,
    IMDB_VOTES CASTS.IMDB_VOTES%type ,
    FILM_ID CASTS.FILM_ID%type ,
    USA_GROSS CASTS.USA_GROSS%type ,
    FILM_TITLE CASTS.FILM_TITLE%type ,
    RELEASE_DATE CASTS.RELEASE_DATE%type ,
    AFI_RANK CASTS.AFI_RANK%type ,
    GROSS_DATE CASTS.GROSS_DATE%type ,
    IMDB_RATING CASTS.IMDB_RATING%type ,
    IMDB_RANK CASTS.IMDB_RANK%type ,
    RUNTIME CASTS.RUNTIME%type );
type CASTS_tapi_tab
IS
  TABLE OF CASTS_tapi_rec;
  -- insert
  PROCEDURE ins(
      p_BUDGET          IN CASTS.BUDGET%type DEFAULT NULL ,
      p_FILM_YEAR       IN CASTS.FILM_YEAR%type DEFAULT NULL ,
      p_WORLDWIDE_GROSS IN CASTS.WORLDWIDE_GROSS%type DEFAULT NULL ,
      p_MPAA_RATING     IN CASTS.MPAA_RATING%type DEFAULT NULL ,
      p_IMDB_VOTES      IN CASTS.IMDB_VOTES%type DEFAULT NULL ,
      p_FILM_ID         IN CASTS.FILM_ID%type ,
      p_USA_GROSS       IN CASTS.USA_GROSS%type DEFAULT NULL ,
      p_FILM_TITLE      IN CASTS.FILM_TITLE%type ,
      p_RELEASE_DATE    IN CASTS.RELEASE_DATE%type DEFAULT NULL ,
      p_AFI_RANK        IN CASTS.AFI_RANK%type DEFAULT NULL ,
      p_GROSS_DATE      IN CASTS.GROSS_DATE%type DEFAULT NULL ,
      p_IMDB_RATING     IN CASTS.IMDB_RATING%type DEFAULT NULL ,
      p_IMDB_RANK       IN CASTS.IMDB_RANK%type DEFAULT NULL ,
      p_RUNTIME         IN CASTS.RUNTIME%type DEFAULT NULL );
  -- update
  PROCEDURE upd(
      p_BUDGET          IN CASTS.BUDGET%type DEFAULT NULL ,
      p_FILM_YEAR       IN CASTS.FILM_YEAR%type DEFAULT NULL ,
      p_WORLDWIDE_GROSS IN CASTS.WORLDWIDE_GROSS%type DEFAULT NULL ,
      p_MPAA_RATING     IN CASTS.MPAA_RATING%type DEFAULT NULL ,
      p_IMDB_VOTES      IN CASTS.IMDB_VOTES%type DEFAULT NULL ,
      p_FILM_ID         IN CASTS.FILM_ID%type ,
      p_USA_GROSS       IN CASTS.USA_GROSS%type DEFAULT NULL ,
      p_FILM_TITLE      IN CASTS.FILM_TITLE%type ,
      p_RELEASE_DATE    IN CASTS.RELEASE_DATE%type DEFAULT NULL ,
      p_AFI_RANK        IN CASTS.AFI_RANK%type DEFAULT NULL ,
      p_GROSS_DATE      IN CASTS.GROSS_DATE%type DEFAULT NULL ,
      p_IMDB_RATING     IN CASTS.IMDB_RATING%type DEFAULT NULL ,
      p_IMDB_RANK       IN CASTS.IMDB_RANK%type DEFAULT NULL ,
      p_RUNTIME         IN CASTS.RUNTIME%type DEFAULT NULL );
  -- delete
  PROCEDURE del(
    );
END CASTS_tapi;

/
