-- Table: popups_views

DROP TABLE popups_views;

CREATE TABLE popups_views
(
  id serial NOT NULL,
  viewname character varying(64),
  markername character varying(64),
  iconname character varying(64),
  popupname character varying(64),
  offset_x smallint,
  offset_y smallint,
  CONSTRAINT popups_views_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE popups_views
  OWNER TO opengeo;
