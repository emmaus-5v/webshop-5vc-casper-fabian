--
-- Create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT,
  code VARCHAR(15),
  price NUMERIC(10, 2)
  type_id INTEGER,
  producent_id INTEGER,
  uitgave_id INTEGER,
);

DROP TABLE IF EXISTS type;
CREATE TABLE type (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

DROP TABLE IF EXISTS producent;
CREATE TABLE producent (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

DROP TABLE IF EXISTS uitgave_jaar;
CREATE TABLE uitgave_jaar (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  jaar NUMERIC(4)
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
  'De nieuwste GPU op de markt, vrij bekend na de laatste versie, de GeForce RTX 3080 (zie ander product)',
  '816905633-0',
  1549.99,
  1,
  1,
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Post Mortem',
  'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',
  '0770301223',
  11,
  1,
  1,
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Scarlet and the Black, The',
  'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',
  '445924201-X',
  13.5,
  1,
  1,
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Aquí llega Condemor, el pecador de la pradera',
  'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. c Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',
  '693155505-7',
  13.5,
  1,
  1,
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Kiss for Corliss, A (Almost a Bride)',
  'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',
  '686928463-6',
  14,
  1,
  1,
  1
);

insert into products (name, description, code, price, type_id, producent_id, uitgave_id) values (
  'Velvet Goldmine',
  'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',
  '492662523-7',
  14,
  1,
  1,
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

insert into producent (name) values (
  'Nvidia'
);


--
-- uitgave_jaar
--

insert into uitgave_jaar (jaar) values (
  2020
);