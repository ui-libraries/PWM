DROP TABLE IF EXISTS menu_items;

CREATE TABLE menu_items
(
  id integer NOT NULL,
  menu_id integer,
  child_of integer,
  sort smallint,
  menu_item_text character varying(64),
  menu_item_desc character varying(128),
  url character varying(128),
  target character varying(16) DEFAULT '_self',
  css_class character varying(32),
  control_type character varying(32),
  CONSTRAINT menu_items_pkey PRIMARY KEY (id)
);

DROP TABLE IF EXISTS menus;

CREATE TABLE menus
(
  id integer NOT NULL,
  css_id character varying(32),
  menu_desc character varying(120),
  css_class character varying(24),
  sort smallint,
  form_action character varying(124),
  CONSTRAINT id PRIMARY KEY (id)
);

ALTER TABLE menu_items DROP CONSTRAINT IF EXISTS menu_items_menu_id_fkey;

ALTER TABLE menu_items
  ADD CONSTRAINT menu_items_menu_id_fkey FOREIGN KEY (menu_id)
      REFERENCES menus (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;
