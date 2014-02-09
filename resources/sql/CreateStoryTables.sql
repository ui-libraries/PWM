DROP TABLE IF EXISTS stories;
CREATE TABLE stories
(
    id serial,
    description character varying(255),
    CONSTRAINT stories_pkey PRIMARY KEY (id)
);

DROP TABLE IF EXISTS features;
CREATE TABLE features 
(
    id serial,
    feature_type character varying(12),
    description character varying(255),
    
    CONSTRAINT stories_pkey PRIMARY KEY (id)
);

DROP TABLE IF EXISTS features_marker;
CREATE TABLE features_markers

DROP TABLE IF EXISTS features_line;
CREATE TABLE features_line 

DROP TABLE IF EXISTS features_poly;
CREATE TABLE features_poly

 


menu_id integer,
  child_of integer,
  sort smallint,
  menu_item_text character varying(64),
  menu_item_desc character varying(128),
  url character varying(128),
  target character varying(16) DEFAULT '_self',
  css_class character varying(32),
  CONSTRAINT stories_pkey PRIMARY KEY (id)
);

story_counties

story_elements

story_markers

story_polygons

story_lines


