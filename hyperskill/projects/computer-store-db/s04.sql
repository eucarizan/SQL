-- Stage 4: Find the maker that produces computer models with the lowest speed
WITH low_speeds AS (
        SELECT p.maker, p.model, pc.speed, pc.price
        FROM Product p LEFT JOIN PC pc
        ON p.model = pc.model
        WHERE pc.speed = 2
        UNION 
        SELECT p.maker, p.model, l.speed, l.price
        FROM Product p LEFT JOIN Laptop l
        ON p.model = l.model
        WHERE l.speed = 2
    )
SELECT maker, model, speed, price
FROM low_speeds;
