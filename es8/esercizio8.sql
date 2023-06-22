Add constraints to every column of the INGREDIENTS table, you should use NOT NULL for some columns and unique for other(s)

CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Eggs', false, true, false, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Bread', false, true, true, false);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Beef Patty', false, false, false, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Lettuce', false, true, true, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Yogurt', true, true, false, true);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

CREATE TABLE CHEAP_MEALS AS SELECT * FROM MEAL WHERE PRICE<15;

CREATE TABLE VEGAN_INGREDIENT AS SELECT * FROM INGREDIENT WHERE FALSE;

CREATE VIEW EXPENSIVE_MEAL AS SELECT * FROM MEAL WHERE PRICE>15;

CREATE VIEW LACTOSE_FREE_INGREDIENT AS SELECT * FROM INGREDIENT WHERE NOT CONTAINS_LACTOSE;

CREATE TABLE HIGH_CALORIES_MEAL AS SELECT * FROM MEAL WHERE CALORIES>650;

CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255)
);

INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (NOW(), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Bolognese');

CREATE VIEW MEAL_ORDER_WITH_DETAILS AS
    SELECT MO.*, M.PRICE, M.CALORIES FROM MEAL_ORDER MO, MEAL M
    WHERE MO.MEAL_NAME = M.NAME;


INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
VALUES (NOW(), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 10 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 11 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 12 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 13 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 14 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 15 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 16 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 17 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 18 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 19 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 20 HOUR), 'Pesto Pasta'),
(DATE_ADD(NOW(), INTERVAL 21 HOUR), 'Sushi Platter'),
(DATE_ADD(NOW(), INTERVAL 22 HOUR), 'Steak and Mash');



