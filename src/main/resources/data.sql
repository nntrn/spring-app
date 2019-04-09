insert into users values (null, 'admin', 'password', 'SUPER_ADMIN');
insert into users values (null, 'manager', 'password', 'MANAGER');
insert into users values (null, 'vet', 'password', 'VET');
insert into users values (null, 'user', 'password', 'USER');

INSERT INTO types
  (name)
VALUES
  ('cat'),
  ('dog'),
  ('lizard'),
  ('snake'),
  ('bird'),
  ('hamster');

INSERT INTO clients
  (name,phone_number,address)
VALUES
  ("Kuame Burch", "3612271235", "P.O. Box 295, 750 Dapibus Road"),
  ("Aaron Howe", "5636425566", "6480 Sodales Rd."),
  ("Dolan Irwin", "3321326134", "P.O. Box 512, 3093 Dui Avenue"),
  ("Claudia Tyler", "7285531284", "P.O. Box 982, 3551 Mauris St."),
  ("Madison Cabrera", "5446513675", "2549 Lobortis Avenue"),
  ("Cooper Sharp", "7585644736", "385-2102 Duis Street"),
  ("Wallace Lott", "8541524465", "Ap #657-7948 Mattis. Street"),
  ("Luke Byrd", "5455139952", "P.O. Box 912, 133 Vulputate Ave"),
  ("Hu Wheeler", "4353692229", "9125 Lorem Ave"),
  ("Neve Petty", "4872949973", "Ap #569-5015 Eget Rd."),
  ("Paki Henry", "6571642299", "P.O. Box 782, 6839 Eget Rd."),
  ("Donovan Carr", "7627133137", "927-8500 Tincidunt Avenue"),
  ("Hu Miller", "1588485195", "Ap #950-8048 In, Rd."),
  ("Yen Sandoval", "8766769813", "Ap #364-4585 Sociis St."),
  ("Shana Stafford", "4872127615", "549-3283 Eleifend Rd."),
  ("Hamilton Wong", "2475433831", "729-4476 Consequat Street"),
  ("Lucius Anderson", "4886579735", "Ap #524-8971 Risus Rd."),
  ("Alvin Short", "8872491171", "729-6446 Arcu Rd."),
  ("Bruce Ryan", "5283881431", "P.O. Box 561, 7562 Pulvinar Avenue"),
  ("Kaye Holland", "7376291368", "3313 Sociis St."),
  ("Imelda Wilson", "2383831469", "Ap #388-6215 Risus Rd."),
  ("Vladimir Ramos", "4636264928", "128-8294 Montes, Rd."),
  ("Keith Ellis", "1187216722", "Ap #662-1885 Vivamus Av."),
  ("Rashad Morton", "9339665368", "332-2675 In, Rd."),
  ("Alec Calderon", "2113542798", "5938 A, Avenue"),
  ("Fulton Villarreal", "9431876729", "8857 Luctus St."),
  ("Nigel Weiss", "1184989428", "8744 Eros Rd."),
  ("Latifah Madden", "8278965712", "P.O. Box 111, 2172 Mauris Ave"),
  ("Cassandra Franks", "7735342431", "5806 Dolor St."),
  ("Shaine Beasley", "3294236778", "6445 Integer Avenue"),
  ("Sloane Alexander", "8942522546", "Ap #501-6826 Dapibus Avenue"),
  ("Kiayada Montgomery", "7187755647", "P.O. Box 801, 6488 Ante. Avenue"),
  ("April Morton", "4761457312", "Ap #558-948 Nascetur Av."),
  ("Brady Lloyd", "1656132132", "405-1919 Ut, Street"),
  ("Galvin Diaz", "3531285681", "6486 Magna. St."),
  ("Suki Castro", "4428889884", "361-4840 Fermentum Rd."),
  ("Maxine Talley", "1374628584", "Ap #743-4167 Ipsum Ave"),
  ("Raya Kinney", "9226679116", "Ap #810-9023 Sed Ave"),
  ("Scarlet Mooney", "4674942649", "Ap #306-3015 Felis Rd."),
  ("Gemma Lee", "1397733773", "237-1735 Nibh. St."),
  ("Mallory Reid", "5267798935", "Ap #334-2315 Quis Street"),
  ("Gary Randall", "7558312785", "Ap #773-8703 Sed, Av."),
  ("Iris Blake", "8583427858", "P.O. Box 671, 4027 Suspendisse Rd."),
  ("Jameson Gutierrez", "7535324554", "Ap #556-3581 Metus. Av."),
  ("Rose Mcdonald", "6436419223", "P.O. Box 191, 1309 Mi Rd."),
  ("Karina Marshall", "2614381488", "4162 Enim. Rd."),
  ("Miranda Merrill", "4536275593", "P.O. Box 878, 5519 Risus St."),
  ("Luke Henderson", "5312594479", "6477 Nunc St."),
  ("Mariko Mckay", "4288874394", "617-5148 Scelerisque Rd."),
  ("Chloe Browning", "4316392542", "Ap #282-8318 Luctus St.");

INSERT INTO pets (name,gender,altered,client_id,type_id) VALUES ("Sasha","Female",1,1,3),("Belle","Male",0,25,4),("Murphy","Female",0,42,3),("Rosie","Female",0,42,6),("Maggie","Female",0,32,3),("Layla","Male",1,44,6),("Zeus","Male",1,19,3),("Jax","Female",0,43,3),("Gus","Male",0,37,1),("Kona","Male",0,10,2),("Dexter","Female",1,8,3),("Leo","Female",0,18,2),("Abby","Male",0,13,4),("Zeus","Male",0,47,6),("Layla","Male",1,16,6),("Moose","Female",0,19,4),("Riley","Female",0,22,6),("Stella","Female",1,50,2),("Maggie","Female",1,37,1),("Jax","Male",1,14,3),("Tank","Female",0,26,2),("Apollo","Male",0,23,4),("Maddie","Male",1,45,4),("Bella","Female",1,32,3),("Teddy","Female",0,5,2),("Oreo","Female",1,36,4),("Henry","Female",1,30,2),("Milo","Female",0,37,1),("Abby","Female",1,28,6),("Buster","Female",0,26,2),("Marley","Female",1,30,6),("Maddie","Female",1,28,4),("Teddy","Female",1,38,4),("Bruno","Female",0,39,6),("Peanut","Female",0,7,4),("Bear","Male",0,1,6),("Angel","Male",0,43,6),("Thor","Male",1,43,3),("Ginger","Male",1,6,1),("Cooper","Female",1,24,6),("Ruby","Female",1,9,5),("Ace","Female",1,18,1),("Daisy","Male",0,7,5),("Louie","Male",1,18,4),("Jack","Male",1,28,3),("Roscoe","Female",1,17,1),("Peanut","Male",1,36,1),("Roscoe","Female",1,43,3),("Maya","Female",1,36,6),("Marley","Female",1,34,6);

INSERT INTO appointments (pet_id,reason,date,time,visit_type) VALUES (41,"annual wellness","2018-08-30","1200","scheduled"),(28,"surgery","2018-10-16","730","walk-in"),(1,"annual wellness","2018-08-19","700","walk-in"),(22,"surgery","2018-10-21","1500","scheduled"),(13,"boarding","2019-07-17","1200","walk-in"),(46,"surgery","2019-10-02","1630","scheduled"),(36,"annual wellness","2018-03-16","1730","scheduled"),(40,"annual wellness","2018-08-06","1700","scheduled"),(49,"boarding","2019-12-03","900","drop-off"),(20,"surgery","2019-05-17","1600","walk-in"),(32,"surgery","2018-10-04","1030","scheduled"),(3,"vaccination","2019-01-08","800","drop-off"),(6,"vaccination","2019-06-12","1530","drop-off"),(31,"surgery","2018-04-30","1300","drop-off"),(38,"surgery","2020-03-08","1230","scheduled"),(32,"surgery","2019-09-02","1600","walk-in"),(25,"vaccination","2018-03-06","1400","drop-off"),(35,"boarding","2019-08-13","800","scheduled"),(43,"boarding","2018-03-28","1200","walk-in"),(20,"boarding","2018-06-16","1630","walk-in"),(19,"vaccination","2018-08-07","930","walk-in"),(11,"annual wellness","2018-02-19","900","scheduled"),(44,"surgery","2019-08-28","1100","scheduled"),(28,"vaccination","2020-03-20","1030","walk-in"),(18,"boarding","2018-12-25","1630","scheduled"),(35,"annual wellness","2018-11-01","830","scheduled"),(8,"annual wellness","2018-06-20","1730","scheduled"),(19,"vaccination","2020-02-19","1730","scheduled"),(11,"boarding","2019-06-15","830","drop-off"),(34,"boarding","2018-02-06","1430","scheduled"),(35,"vaccination","2018-01-29","1630","walk-in"),(50,"surgery","2019-09-08","1700","drop-off"),(46,"surgery","2019-09-10","1130","scheduled"),(21,"annual wellness","2018-10-31","1230","scheduled"),(17,"boarding","2018-08-02","800","drop-off"),(12,"annual wellness","2020-02-26","1630","walk-in"),(22,"annual wellness","2020-01-05","900","scheduled"),(14,"surgery","2020-04-08","730","drop-off"),(47,"vaccination","2019-12-20","730","drop-off"),(23,"surgery","2018-02-16","700","walk-in"),(31,"boarding","2020-02-18","830","drop-off"),(30,"surgery","2018-01-22","1130","scheduled"),(31,"vaccination","2018-03-20","1730","scheduled"),(26,"vaccination","2019-12-25","1330","walk-in"),(15,"surgery","2018-07-23","1000","scheduled"),(13,"surgery","2020-01-27","1730","scheduled"),(9,"surgery","2018-01-30","1430","walk-in"),(26,"surgery","2019-06-15","1130","walk-in"),(21,"vaccination","2018-11-09","1600","scheduled"),(7,"surgery","2019-04-14","830","scheduled"),(29,"surgery","2020-01-01","1730","walk-in"),(12,"boarding","2018-06-15","1530","drop-off"),(1,"annual wellness","2018-04-21","1730","drop-off"),(49,"boarding","2019-11-29","1030","walk-in"),(12,"boarding","2019-05-25","1530","drop-off"),(8,"boarding","2019-07-20","830","scheduled"),(17,"vaccination","2019-09-11","1030","scheduled"),(2,"annual wellness","2018-09-14","1130","scheduled"),(23,"vaccination","2019-02-07","700","walk-in"),(22,"vaccination","2019-12-31","1100","scheduled"),(50,"boarding","2019-08-27","1000","drop-off"),(20,"annual wellness","2018-09-06","1030","walk-in"),(29,"surgery","2018-01-07","1400","drop-off"),(7,"annual wellness","2018-07-31","830","walk-in"),(26,"boarding","2018-08-03","1400","scheduled"),(22,"vaccination","2019-07-21","1130","scheduled"),(6,"vaccination","2019-11-08","1230","walk-in"),(49,"annual wellness","2018-03-09","730","walk-in"),(41,"surgery","2019-07-08","1330","walk-in"),(21,"vaccination","2018-10-09","1600","drop-off"),(13,"surgery","2018-10-12","1730","walk-in"),(2,"boarding","2020-01-23","1000","scheduled"),(3,"annual wellness","2018-10-03","1330","drop-off"),(2,"surgery","2018-05-23","800","scheduled"),(10,"annual wellness","2018-09-30","800","drop-off"),(35,"annual wellness","2018-06-09","830","walk-in"),(24,"vaccination","2020-03-21","1230","scheduled"),(28,"boarding","2020-03-08","1730","walk-in"),(21,"surgery","2019-09-23","1030","drop-off"),(15,"boarding","2020-01-20","1600","drop-off"),(28,"surgery","2019-04-21","1630","drop-off"),(35,"annual wellness","2019-09-20","730","walk-in"),(8,"annual wellness","2019-05-28","1730","walk-in"),(45,"annual wellness","2019-03-29","730","drop-off"),(20,"boarding","2019-10-14","700","drop-off"),(44,"surgery","2020-02-05","1530","walk-in"),(30,"annual wellness","2018-08-21","1630","walk-in"),(7,"vaccination","2018-01-18","1700","drop-off"),(46,"surgery","2019-08-08","1530","walk-in"),(42,"surgery","2020-03-30","1630","walk-in"),(32,"vaccination","2018-04-23","1530","walk-in"),(20,"surgery","2020-02-24","1200","walk-in"),(34,"vaccination","2019-09-12","1730","drop-off"),(50,"vaccination","2019-04-12","1130","walk-in"),(49,"boarding","2018-10-01","1330","walk-in"),(19,"annual wellness","2018-08-20","1500","walk-in"),(18,"annual wellness","2019-01-16","1600","drop-off"),(40,"surgery","2018-05-15","900","scheduled"),(41,"surgery","2019-06-12","930","walk-in"),(47,"annual wellness","2020-04-02","1500","drop-off");

INSERT INTO appointments (pet_id,reason,date,time,visit_type) VALUES (46,"vaccination","2020-02-04","1330","drop-off"),(17,"boarding","2018-12-27","1700","scheduled"),(9,"vaccination","2020-02-25","1700","drop-off"),(2,"boarding","2018-10-17","930","scheduled"),(16,"boarding","2018-07-13","1330","scheduled"),(46,"surgery","2018-10-05","1000","drop-off"),(41,"surgery","2018-06-24","730","drop-off"),(43,"vaccination","2019-05-27","1730","drop-off"),(6,"boarding","2019-08-25","1030","scheduled"),(16,"annual wellness","2019-12-24","1500","drop-off"),(24,"vaccination","2018-10-22","700","scheduled"),(28,"surgery","2019-03-08","1600","scheduled"),(31,"surgery","2018-09-04","1030","scheduled"),(43,"vaccination","2019-05-07","1700","drop-off"),(2,"boarding","2019-01-08","1700","scheduled"),(46,"boarding","2018-02-01","1200","walk-in"),(49,"surgery","2019-05-06","1500","walk-in"),(29,"vaccination","2018-08-19","730","walk-in"),(38,"annual wellness","2019-05-11","1130","drop-off"),(15,"annual wellness","2019-01-25","1530","scheduled"),(49,"vaccination","2019-05-08","1400","walk-in"),(16,"vaccination","2018-06-18","900","scheduled"),(9,"surgery","2020-03-31","1030","scheduled"),(4,"surgery","2020-03-30","900","scheduled"),(20,"vaccination","2019-07-25","1130","walk-in"),(44,"boarding","2018-12-25","830","drop-off"),(4,"annual wellness","2018-01-24","1300","scheduled"),(24,"vaccination","2020-01-25","1000","drop-off"),(25,"annual wellness","2018-06-09","1100","drop-off"),(42,"vaccination","2018-08-23","830","scheduled"),(7,"boarding","2020-02-19","1200","walk-in"),(49,"surgery","2018-06-15","830","scheduled"),(1,"surgery","2018-07-20","930","drop-off"),(37,"surgery","2020-01-01","1030","scheduled"),(22,"boarding","2018-05-30","1530","drop-off"),(46,"vaccination","2018-12-31","1630","drop-off"),(36,"vaccination","2018-09-17","1700","walk-in"),(49,"boarding","2020-01-22","1100","walk-in"),(9,"surgery","2019-07-23","1300","drop-off"),(40,"boarding","2019-08-21","800","drop-off"),(48,"annual wellness","2018-08-25","1630","drop-off"),(47,"vaccination","2019-07-31","1230","walk-in"),(27,"vaccination","2020-03-11","1030","walk-in"),(14,"annual wellness","2018-01-28","830","drop-off"),(36,"vaccination","2018-08-11","1030","walk-in"),(44,"annual wellness","2019-06-18","800","drop-off"),(48,"surgery","2018-10-15","1730","drop-off"),(32,"boarding","2018-06-14","930","walk-in"),(42,"surgery","2019-01-22","1200","scheduled"),(20,"vaccination","2019-04-11","1700","walk-in"),(17,"annual wellness","2018-05-15","800","walk-in"),(21,"surgery","2020-01-14","1030","drop-off"),(28,"surgery","2018-10-15","1730","walk-in"),(39,"vaccination","2019-08-15","1030","drop-off"),(40,"annual wellness","2018-02-26","1530","walk-in"),(33,"vaccination","2018-11-16","1430","walk-in"),(25,"boarding","2018-06-11","1030","drop-off"),(1,"annual wellness","2020-02-23","1600","drop-off"),(40,"vaccination","2018-08-01","830","drop-off"),(7,"boarding","2020-01-07","1530","scheduled"),(38,"surgery","2018-02-27","1430","scheduled"),(17,"annual wellness","2018-04-18","1730","drop-off"),(8,"vaccination","2019-10-23","1630","scheduled"),(21,"boarding","2018-11-30","900","walk-in"),(4,"surgery","2018-03-04","1530","walk-in"),(34,"surgery","2019-02-15","800","drop-off"),(4,"vaccination","2018-09-30","1330","scheduled"),(34,"surgery","2020-02-23","1700","drop-off"),(37,"surgery","2019-06-29","800","drop-off"),(50,"annual wellness","2019-08-13","930","drop-off"),(23,"vaccination","2019-03-23","830","walk-in"),(29,"boarding","2019-12-23","1200","walk-in"),(36,"annual wellness","2020-01-15","830","scheduled"),(42,"surgery","2018-08-11","1100","walk-in"),(14,"boarding","2018-11-30","1000","drop-off"),(7,"surgery","2018-03-04","830","scheduled"),(35,"boarding","2018-06-09","1530","scheduled"),(13,"surgery","2018-06-14","1130","walk-in"),(26,"boarding","2019-09-06","1500","walk-in"),(18,"annual wellness","2018-05-01","1030","drop-off"),(8,"boarding","2019-05-13","1500","walk-in"),(44,"boarding","2018-01-03","900","scheduled"),(22,"boarding","2019-04-28","1230","walk-in"),(8,"boarding","2019-11-11","1100","walk-in"),(9,"surgery","2020-03-29","730","walk-in"),(12,"surgery","2018-07-23","1700","drop-off"),(32,"surgery","2018-03-01","1100","scheduled"),(18,"vaccination","2018-09-23","1230","walk-in"),(20,"boarding","2018-06-17","930","scheduled"),(41,"annual wellness","2019-10-22","900","scheduled"),(35,"surgery","2019-05-27","930","drop-off"),(21,"vaccination","2019-08-23","1400","drop-off"),(8,"vaccination","2019-09-19","900","walk-in"),(31,"surgery","2018-11-13","1530","drop-off"),(24,"surgery","2019-12-15","1700","scheduled"),(5,"vaccination","2019-01-01","930","drop-off"),(12,"vaccination","2018-07-21","930","walk-in"),(48,"annual wellness","2020-02-26","1630","scheduled"),(9,"boarding","2018-11-10","1630","walk-in"),(20,"surgery","2019-12-13","930","scheduled");
