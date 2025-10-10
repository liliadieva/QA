CREATE TABLE car_brands (
    id BIGINT NOT NULL PRIMARY KEY,
    title VARCHAR (100) NOT NULL
);

CREATE TABLE car_models (
    id BIGINT NOT NULL PRIMARY KEY,
    carBrandId BIGINT NOT NULL,
    title VARCHAR (100) NOT NULL
);

CREATE TABLE users (
    id BIGINT NOT NULL PRIMARY KEY,
    userId BIGINT NOT NULL,
    firstName VARCHAR (100) NOT NULL,
    lastName VARCHAR (100) NOT NULL,
    email VARCHAR (100) UNIQUE NOT NULL,
    password VARCHAR (255) NOT NULL
);

CREATE TABLE cars (
   id BIGINT NOT NULL PRIMARY KEY,
   carBrandId BIGINT NOT NULL,
   carModelId BIGINT NOT NULL,
   mileage BIGINT NOT NULL,
   initialMileage BIGINT NOT NULL
);


INSERT INTO car_brands (id, title)
VALUES (1, 'Audi');
INSERT INTO car_brands (id, title)
VALUES (2, 'BMW');
INSERT INTO car_brands (id, title)
VALUES (3, 'Ford');
INSERT INTO car_brands (id, title)
VALUES (4, 'Porsche');
INSERT INTO car_brands (id, title)
VALUES (5, 'Fiat');

INSERT INTO car_models (id, carbrandid, title)
VALUES (184814, 1, 'TT');
INSERT INTO car_models (id, carbrandid, title)
VALUES (184720, 2, 5);
INSERT INTO car_models (id, carbrandid, title)
VALUES (194214, 3, 'Fusion');
INSERT INTO car_models (id, carbrandid, title)
VALUES (184789, 4, 'Panamera');
INSERT INTO car_models (id, carbrandid, title)
VALUES (184797, 5, 'Scudo');

INSERT INTO cars (id, carbrandid, carmodelid, mileage, initialmileage)
VALUES (184814, 1, 1, 134658, 134658);
INSERT INTO cars (id, carbrandid, carmodelid, mileage, initialmileage)
VALUES (184720, 2, 7, 687, 687);
INSERT INTO cars (id, carbrandid, carmodelid, mileage, initialmileage)
VALUES (194214, 3, 13, 898989,  654651);
INSERT INTO cars (id, carbrandid, carmodelid, mileage, initialmileage)
VALUES (184789, 4, 18, 34567, 34567);
INSERT INTO cars (id, carbrandid, carmodelid, mileage, initialmileage)
VALUES (184797, 5, 23, 4234, 4234);

INSERT INTO users (id, userid, firstname, lastname, email, password)
VALUES (1, 113349, 'Alisa', 'Fox', 'alisafox@gmail.com', 'Qwerty_123');
INSERT INTO users (id, userid, firstname, lastname, email, password)
VALUES (2, 258469, 'John', 'Snow', 'johnsnow@gmail.com', 'John+Snow56');
INSERT INTO users (id, userid, firstname, lastname, email, password)
VALUES (3, 333333, 'Dany', 'Targaryen', 'danytarg@gmail.com', 'Dany#3#dragons');
INSERT INTO users (id, userid, firstname, lastname, email, password)
VALUES (4, 471369, 'Sansa', 'Stark', 'sansastark@gmail.com', 'Hounds4Ramsey');
INSERT INTO users (id, userid, firstname, lastname, email, password)
VALUES (5, 564813, 'Tyrion', 'Lannister', 'tyrlan@gmail.com', 'LannisterAlwaysPaysHisDebts=1');