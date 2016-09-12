-- Table: popups_markers

DROP TABLE popups_markers;

CREATE TABLE popups_markers
(
  id serial NOT NULL,
  markername character varying(32),
  layergroup character varying(64),
  markertype character varying(32), -- point, line, polygon
  coords character varying(800), -- point format xx.xxxxx,yy.yyyyy or line/poly format [xx.xxxx,yy.yyyy],[xx.xxxx,yy.yyyy]
  iconname character varying(32),
  clickable character varying(6),
  draggable character varying(6),
  keyboard character varying(6),
  title character varying(64),
  zindexoffset smallint,
  opacity double precision,
  riseonhover character varying,
  riseoffset smallint,
  location point,
  CONSTRAINT popups_markers_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE popups_markers
  OWNER TO opengeo;
COMMENT ON COLUMN popups_markers.coords IS 'point format xx.xxxxx,yy.yyyyy or line/poly format [xx.xxxx,yy.yyyy],[xx.xxxx,yy.yyyy]';
COMMENT ON COLUMN popups_markers.markertype IS 'point, line, polygon';