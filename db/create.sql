--
-- Create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT,
  code VARCHAR(15),
  price NUMERIC(10, 2),
  type_id INTEGER,
  producent_id INTEGER,
  uitgave_id INTEGER
);

DROP TABLE IF EXISTS type;
CREATE TABLE type (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

DROP TABLE IF EXISTS producent;
CREATE TABLE producent (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  headquarters TEXT
);

DROP TABLE IF EXISTS uitgave_datum;
CREATE TABLE uitgave_datum (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  maand NUMERIC(2),
  jaar NUMERIC(4)
);

DROP TABLE IF EXISTS products_distributeur;
CREATE TABLE products_distributeur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  distributeur_id INTEGER
);

DROP TABLE IF EXISTS distributeur;
CREATE TABLE distributeur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--


--
-- Products
--

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Nvidia GeForce RTX 3090',
  'Vrij bekend na de laatste versie, de GeForce RTX 3080 (zie ander product). Maakt gebruik van Raytracing',
  '816905633-0',
  1549.00,
  1, -- GPU
  1, -- Nvidia
  1 -- September 2020
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Nvidia GeForce RTX 3080',
  'Deze GPU maakt gebruik van Raytracing.',
  '0770301223',
  719.00,
  1, -- GPU
  1, -- Nvidia
  1 -- September 2020
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Nvidia GeForce RTX 3060',
  'Deze GPU heeft 12GB RAM, wat abnormaal veel is.',
  '445924201-X',
  960.00,
  1, -- GPU
  1, -- Nvidia
  2 -- Februari 2021
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Ryzen 9 5950X',
  'CPU info...',
  740.0,
  2, -- CPU
  2, -- AMD
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Ryzen 7 5700G',
  'CPU info...',
  '686928463-6',
  300.0,
  2, -- CPU
  2, -- AMD
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Xeon Platinum 8280',
  'CPU info...',
  '492662523-7',
  13260.0,
  2, -- CPU
  3, -- Intel
  1
);


--
-- Type
--

insert into type (name) values (
  'GPU'
);

insert into type (name) values (
  'CPU'
);

insert into type (name) values (
  'RAM'
);

insert into type (name) values (
  'Monitor'
);

insert into type (name) values (
  'Keyboard'
);

insert into type (name) values (
  'Storage'
);


--
-- producent
--

insert into producent (name, headquarters) values (
  'Nvidia',
  'California'
);


--
-- uitgave_datum
--

insert into uitgave_datum (maand, jaar) values (
  9,
  2020
);


--
-- products-distributeur
--

insert into products_distributeur (products_id, distributeur_id) values (
  1, -- 3090
  2 -- MSI
);

insert into products_distributeur (products_id, distributeur_id) values (
  1, -- 3090
  3 -- Gigabyte
);

insert into products_distributeur (products_id, distributeur_id) values (
  1, -- 3090
  4 -- Asus
);


--
-- distributeur
--

insert into distributeur (name) values (
  'Zotac'
);

insert into distributeur (name) values (
  'MSI'
);

insert into distributeur (name) values (
  'Gigabyte'
);

insert into distributeur (name) values (
  'Asus'
);
