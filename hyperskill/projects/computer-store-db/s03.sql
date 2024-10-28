-- Stage 3: Uniques
SELECT COUNT(maker) AS number_of_unique_makers 
FROM (
    SELECT maker, COUNT(model) AS count
    FROM Product
    GROUP BY maker
    HAVING count = 1
) AS unique_makers;
