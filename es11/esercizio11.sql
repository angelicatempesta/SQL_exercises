CREATE TABLE MEAL (
  MEAL_ID INT PRIMARY KEY AUTO_INCREMENT,
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  INGREDIENT_ID INT PRIMARY KEY AUTO_INCREMENT,
  MEAL_ID INT,
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (1, 'Grilled Chicken', FALSE, FALSE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (1, 'Bread', FALSE, TRUE, FALSE, FALSE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (1, 'Lettuce', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (1, 'Tomato', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (1, 'Mayo', TRUE, TRUE, FALSE, TRUE);

INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (2, 'Lentils', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (2, 'Onion', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (2, 'Garlic', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (2, 'Ginger', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (2, 'Cumin', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (2, 'Turmeric', FALSE, TRUE, TRUE, TRUE);

INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (3, 'Pasta', FALSE, TRUE, FALSE, FALSE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (3, 'Pesto', TRUE, TRUE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (3, 'Pine Nuts', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (3, 'Basil', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (3, 'Garlic', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (3, 'Parmesan Cheese', TRUE, FALSE, FALSE, FALSE);

INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (4, 'Spaghetti', FALSE, TRUE, FALSE, FALSE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (4, 'Ground Beef', FALSE, FALSE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (4, 'Onion', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (4, 'Garlic', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (4, 'Tomato Sauce', FALSE, TRUE, TRUE, TRUE);

INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (5, 'Steak', FALSE, FALSE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (5, 'Mashed Potatoes', FALSE, TRUE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (5, 'Butter', TRUE, TRUE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (5, 'Salt', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (5, 'Pepper', FALSE, TRUE, TRUE, TRUE);

INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Sushi Rice', FALSE, TRUE, TRUE, FALSE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Nori', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Tuna', FALSE, FALSE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Salmon', FALSE, FALSE, FALSE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Avocado', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Wasabi', FALSE, TRUE, TRUE, TRUE);
INSERT INTO INGREDIENT (MEAL_ID, NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES (6, 'Soy Sauce', FALSE, TRUE, TRUE, TRUE);