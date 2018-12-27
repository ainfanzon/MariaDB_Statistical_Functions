DROP TABLE IF EXISTS test.breeds;

CREATE TABLE test.breeds (
    id				int not NULL
  , breed			VARCHAR(125) not null
  , min_height		DECIMAL(8,2) not null 
  , max_height		DECIMAL(8,2) not null 
  , avg_height		DECIMAL(8,2) not null
  , min_weight		DECIMAL(8,2) not null
  , max_weight		DECIMAL(8,2) not null
  , avg_weight		DECIMAL(8,2) not null
) ENGINE=columnstore;
 
INSERT INTO test.breeds VALUES (1,'Yorkshire Terrier',8.0, 9.0, 8.5, 5.0, 7.0, 6.0);
INSERT INTO test.breeds VALUES (2,'Toy Poodle',9.0, 10.0, 9.5, 4.0, 8.0, 6.0);
INSERT INTO test.breeds VALUES (3,'Shih Tzu', 8.0, 11.0, 9.5, 6.0, 16.0, 11.0);
INSERT INTO test.breeds VALUES (4,'Chihuahua', 6.0, 9.0, 0, 5.0, 6.0, 0);
INSERT INTO test.breeds VALUES (5,'Pug', 10.0, 11.0, 0, 14.0, 18.0, 0);
INSERT INTO test.breeds VALUES (6,'Pomeranian', 8.0, 11.0, 0, 3.0, 7.0, 0);
INSERT INTO test.breeds VALUES (7,'Miniature Pinscher', 10.0, 12.5, 0, 8.0, 10.0, 0);
INSERT INTO test.breeds VALUES (8,'Cavalier King Charles Spaniel', 12.0, 13.0, 0, 13.0, 18.0, 0);
INSERT INTO test.breeds VALUES (9,'Papillion', 8.0, 11.0, 0, 4.0, 9.0, 0);
INSERT INTO test.breeds VALUES (10,'Maltese', 8.0, 10.0, 0, 3.0, 8.0, 0);
INSERT INTO test.breeds VALUES (11,'Bichon Frise', 9.0, 12.0, 0, 7.0, 11.0, 0);
INSERT INTO test.breeds VALUES (12,'Beagle', 14.0, 16.0, 0, 22.0, 24.0, 0);
INSERT INTO test.breeds VALUES (13,'Boston Terrier', 15.0, 17.0, 0, 10.0, 25.0, 0);
INSERT INTO test.breeds VALUES (14,'Miniature Schnauzer', 12.0, 14.0, 0, 11.0, 20.0, 0);
INSERT INTO test.breeds VALUES (15,'Jack Russell Terrier', 13.0, 15.0, 0, 13.0, 17.0, 0);
INSERT INTO test.breeds VALUES (16,'Schipperke', 10.0, 13.0, 0, 6.0, 19.0, 0);
INSERT INTO test.breeds VALUES (17,'Lakeland Terrier', 12.5, 14.5, 0, 15.0, 17.0, 0);
INSERT INTO test.breeds VALUES (18,'French Bulldog', 10.0, 12.0, 0, 16.0, 25.0, 0);
INSERT INTO test.breeds VALUES (19,'Pembroke Welsh Corgi', 10.0, 12.0, 0, 25.0, 30.0, 0);
INSERT INTO test.breeds VALUES (20,'Labrador Retriever', 21.0, 25.0, 0, 59.0, 88.0, 0);
INSERT INTO test.breeds VALUES (21,'English Bulldog', 12.0, 16.0, 0, 48.0, 55.0, 0);
INSERT INTO test.breeds VALUES (22,'Boxer', 21.0, 25.0, 0, 66.0, 70.0, 0);
INSERT INTO test.breeds VALUES (23,'Border Collie', 18.0, 22.0, 0, 26.0, 45.0, 0);
INSERT INTO test.breeds VALUES (24,'Chow Chow', 18.0, 22.0, 0, 44.0, 70.0, 0);
INSERT INTO test.breeds VALUES (25,'Shetland Sheepdog', 13.0, 16.0, 0, 14.0, 27.0, 0);
INSERT INTO test.breeds VALUES (26,'Basset Hound', 11.0, 15.0, 0, 44.0, 63.0, 0);
INSERT INTO test.breeds VALUES (27,'English Shepherd', 18.0, 23.0, 0, 39.0, 61.0, 0);
INSERT INTO test.breeds VALUES (28,'Cocker Spaniel', 13.0, 16.0, 0, 15.0, 30.0, 0);
INSERT INTO test.breeds VALUES (29,'Brittany', 18.0, 20.0, 0, 30.0, 40.0, 0);
INSERT INTO test.breeds VALUES (30,'German Shepherd', 22.0, 26.0, 0, 55.0, 95.0, 0);
INSERT INTO test.breeds VALUES (31,'Golden Retriever', 21.0, 24.0, 0, 55.0, 75.0, 0);
INSERT INTO test.breeds VALUES (32,'Doberman Pinscher', 24.0, 28.0, 0, 59.0, 90.0, 0);
INSERT INTO test.breeds VALUES (33,'Saint Bernard', 26.0, 35.0, 0, 110.0, 200.0, 0);
INSERT INTO test.breeds VALUES (34,'Collie', 18.0, 22.0, 0, 27.0, 45.0, 0);
INSERT INTO test.breeds VALUES (35,'Mastiff', 27.0, 30.0, 0, 150.0, 160.0, 0);
INSERT INTO test.breeds VALUES (36,'Rottweiler', 22.0, 27.0, 0, 77.0, 132.0, 0);
INSERT INTO test.breeds VALUES (37,'Great Dane', 28.0, 34.0, 0, 99.0, 198.0, 0);
INSERT INTO test.breeds VALUES (38,'Bernese Mountain Dog', 23.0, 28.0, 0, 79.0, 110.0, 0);
INSERT INTO test.breeds VALUES (39,'Standard Poodle', 15.0, 21.0, 0, 45.0, 70.0, 0);
INSERT INTO test.breeds VALUES (40,'Silky Terrier', 9.0, 10.0, 0, 8.0, 11.0, 0);

update test.breeds set avg_height = (max_height + min_height) / 2
                    , avg_weight = (max_weight + min_weight) / 2 ;
