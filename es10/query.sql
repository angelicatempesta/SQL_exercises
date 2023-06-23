-- Using the INGREDIENT and MEAL tables, write a query to return the name of all meals that contain garlic.

SELECT M.NAME AS 'NOME PIATTO'
FROM MEAL M
JOIN INGREDIENT I on I.MEAL_ID = M.MEAL_ID
WHERE I.NAME = 'Garlic';

-- Using the INGREDIENT and MEAL tables, write a query to return the number of meals with vegetarian ingredients.

SELECT COUNT(*)
FROM MEAL M
JOIN INGREDIENT I on I.MEAL_ID = M.MEAL_ID
WHERE I.VEGETARIAN = true;

-- Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have at least 1 gluten free ingredient and at least 1 vegan ingredient.

SELECT DISTINCT M.NAME
FROM MEAL M
JOIN INGREDIENT I on I.MEAL_ID = M.MEAL_ID
WHERE I.GLUTEN_FREE = true AND I.VEGETARIAN = true;

-- Using the INGREDIENT and MEAL tables, write a query to return the average number of ingredients per meal.

SELECT AVG(MEDIA) AS 'Numero medio degli Ingredienti dei Piatti'
FROM (
  SELECT M.NAME, COUNT(*) as MEDIA
FROM MEAL M
INNER JOIN INGREDIENT I on M.MEAL_ID = I.MEAL_ID
GROUP BY M.NAME
) AVERAGE;

-- Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have more than 3 ingredients.


SELECT M.NAME
FROM MEAL M
JOIN INGREDIENT I on I.MEAL_ID = M.MEAL_ID
GROUP BY M.NAME
HAVING COUNT(I.MEAL_ID) > 3;
