USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_dock','Marina',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_dock','Marina',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('dock','Marina')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('dock',0,'recruit','Recrue',10,'{}','{}'),
  ('dock',1,'novice','Novice',25,'{}','{}'),
  ('dock',2,'experienced','Experimente',40,'{}','{}'),
  ('dock',3,'boss','Patron',0,'{}','{}')
;

CREATE TABLE `owner_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `owned_dock` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `rented_dock` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,

  PRIMARY KEY (`id`)
);

CREATE TABLE `dock_categories` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `dock_categories` (name, label) VALUES
  ('dock','Bateaux')
;

CREATE TABLE `dock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `dock` (name, model, price, category) VALUES
  ('Toro','toro',15000,'dock')
;
