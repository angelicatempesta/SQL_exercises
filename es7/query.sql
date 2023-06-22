-- Write a query to find the maximum price of a meal with more than 500 calories.
SELECT MAX(PRICE)
FROM MEAL
WHERE CALORIES > 500;
-- Write a query to find the average calories of meals that cost more than 15 EUR
SELECT AVG(CALORIES)
FROM MEAL
WHERE PRICE > 15;
-- Write a query to select all meals that have the MAX price, using HAVING and MAX()
SELECT NAME, PRICE
FROM MEAL
GROUP BY NAME, PRICE
HAVING PRICE = (SELECT MAX(PRICE) FROM MEAL);

--Write a query to select all meals that have a price lower than the average price, using HAVING and AVG
SELECT NAME, PRICE
FROM MEAL
GROUP BY NAME,
HAVING PRICE < (SELECT AVG(PRICE) FROM MEAL);


--Write a query to select all meals that have a price lower than the average price and have more than 600 calories
SELECT NAME, PRICE AS NOT_VERY_HEALTHY
FROM MEAL
GROUP BY NAME,
HAVING PRICE < (SELECT AVG(PRICE) FROM MEAL) AND CALORIES > 600;