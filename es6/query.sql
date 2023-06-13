SELECT MEAL_NAME AS PORTATE, COUNT(*) AS CONTEGGIO_ORDINI FROM MEAL_ORDER_WITH_DETAILSGROUP BY MEAL_NAME;

SELECT MEAL_NAME, SUM(PRICE) FROM MEAL_ORDER_WITH_DETAILS WHERE PRICE > 15 GROUP BY MEAL_NAME;

SELECT COUNT(*) AS NUMBER_OF_MEALS_WITH_500_OR_MORE_CALORIES FROM MEAL WHERE CALORIES > 500;

SELECT SUM(PRICE) AS PRICE_SUM FROM MEAL WHERE LOWER(NAME) LIKE '%s%';

SELECT MEAL_NAME, COUNT(*) AS COUNTER_MEALS_ORDERED_BEFORE_H18 FROM MEAL_ORDER_WITH_DETAILS WHERE TIME_MEAL_ORDERED < '2023-06-13 18:00:00' GROUP BY MEAL_NAME;