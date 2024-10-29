-- Stage 4: Find the makers that produce both PCs and laptops
SELECT
    maker,
    sum(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) AS pc_count,
    sum(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) AS laptop_count
FROM product
GROUP BY maker 
HAVING 
    sum(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) > 0 
    AND 
    sum(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) > 0
--ORDER BY maker
;
--SELECT
--    p.maker,
--    p.pc_count,
--    l.laptop_count
--FROM (
--    SELECT
--        maker,
--        sum(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) AS pc_count
--    FROM product
--    GROUP BY maker, type
--    ORDER BY maker
--) AS p
--JOIN (
--    SELECT
--        maker,
--        sum(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) AS laptop_count
--    FROM product
--    GROUP BY maker,type
--    ORDER BY maker
--) AS l
--ON p.maker = l.maker
--GROUP BY p.maker, p.pc_count, l.laptop_count
--HAVING p.pc_count > 0 AND l.laptop_count > 0;
