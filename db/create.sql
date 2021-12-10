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
  'Deze GPU heeft 12GB VRAM, wat abnormaal veel is.',
  '445924201-X',
  960.00,
  1, -- GPU
  1, -- Nvidia
  2 -- Februari 2021
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Ryzen 9 5950X',
  'CPU info...',
  '666942069-B',
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

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Balistix',
  '16GB 3200MHz',
  '492662523-7',
  65.0,
  3, -- RAM
  4, -- Balistix
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Corsair Vengeance 64GB',
  '64GB 3200MHz',
  '492662523-7',
  300.0,
  3, -- RAM
  5, -- Corsair
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Corsair Vengeance 32GB (2x16)',
  '32GB (2x16) 3200MHz RGB PRO',
  '492662523-7',
  140.0,
  3, -- RAM
  5, -- Corsair
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Lenovo Gaming Monitor',
  '27-inch screen, 165Hz 1ms',
  '492662523-7',
  250.0,
  4, -- Monitor
  6, -- Lenovo
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Samsung Odyssee G9 Gaming Monitor',
  '49-inch, 240Hz',
  '492662523-7',
  1399.0,
  4, -- Monitor
  7, -- Samsung
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Samsung Full HD IPS Monitor',
  '27-inch, 75Hz, FreeSync',
  'LS27R350',
  180.0,
  4, -- Monitor
  7, -- Samsung
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Razer BlackWidow V3 Pro (Green Switch)',
  'Draadloos mechanisch gamingtoetsenbord met hoge toetsen en Chroma RGB (Wireless 2.4 GHz, Bluetooth, USB-C) US-Layout',
  '492662523-7',
  215.0,
  5, -- Keyboard
  8, -- Razer
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Logitech K280e Pro Zakelijk Toetsenbord',
  'Windows/Linux/Chrome, USB Plug & Play, Morsbestendig, PC/Laptop, QWERTY US International layout',
  '492662523-7',
  29.0,
  5, -- Keyboard
  9, -- Logitech
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Logitech MK270 Draadloze Toetsenbord',
  'Windows, Compacte draadloze muis, 8 multimedia- en sneltoetsen, batterijduur 2 jaar, PC/Laptop, QWERTY US International layout',
  '492662523-7',
  27.0,
  5, -- Keyboard
  9, -- Logitech
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Samsung 980 PRO 2',
  '7.000 MB/s, Interne Solid State Drive',
  '492662523-7',
  340.0,
  6, -- Storage
  7, -- Intel
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'WD My Book Duo Desktop RAID',
  'USB 3.1 externe harde schijf en automatische back-upsoftware, 24 TB',
  '492662523-7',
  770.0,
  6, -- Storage
  8, -- WD
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'WD My Cloud EX2 Ultra',
  '16 TB',
  '492662523-7',
  540.0,
  6, -- Storage
  8, -- WD
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

insert into producent (name, headquarters) values (
  'AMD',
  'California'
);

insert into producent (name, headquarters) values (
  'Intel',
  'California'
);

insert into producent (name, headquarters) values (
  'Balistix',
  'Idaho'
);

insert into producent (name, headquarters) values (
  'Corsair',
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
  1, -- RTX 3090
  2 -- MSI
);

insert into products_distributeur (products_id, distributeur_id) values (
  1, -- RTX 3090
  3 -- Gigabyte
);

insert into products_distributeur (products_id, distributeur_id) values (
  1, -- RTX 3090
  4 -- Asus
);

insert into products_distributeur (products_id, distributeur_id) values (
  2, -- RTX 3080
  1 -- Zotac
);

insert into products_distributeur (products_id, distributeur_id) values (
  2, -- RTX 3080
  2 -- MSI
);

insert into products_distributeur (products_id, distributeur_id) values (
  2, -- RTX 3080
  3 -- Gigabyte
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
