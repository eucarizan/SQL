-- Stage 5: Find laptop models priced higher than the most expensive PCs
SELECT 
    a.model, 
    b.maker, 
    a.price,
    a.price - (SELECT max(price) FROM PC) AS price_difference_max_pc,
    round(a.price - (SELECT avg(price) FROM Laptop), 2) AS price_difference_avg_laptop
FROM Laptop a JOIN Product b ON a.model = b.model
WHERE (SELECT max(price) FROM PC) < price

-- CTE Solution
--WITH max_pc_price AS (
--    SELECT MAX(price) AS price
--    FROM PC
--),
--avg_laptop_prices AS (
--    SELECT AVG(price) AS price
--    FROM Laptop
--)
--SELECT 
--    p.model,
--    p.maker,
--    l.price,
--    l.price - mpp.price AS price_difference_max_pc,
--    l.price - alp.price AS price_difference_avg_laptop
--FROM Product p
--JOIN Laptop l ON p.model = l.model
--JOIN max_pc_price mpp
--JOIN avg_laptop_prices alp
--WHERE l.price > mpp.price;
