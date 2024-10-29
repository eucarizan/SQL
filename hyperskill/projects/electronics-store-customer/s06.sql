-- Stage 6: Find the second most cost-effective PCs for each specific RAM value
SELECT 
    m.pc_code, 
    m.model, 
    m.speed, 
    m.ram, 
    m.hd, 
    m.cd, 
    m.price
FROM (
    SELECT 
        pc_code,
        model, 
        speed,
        ram, 
        hd,
        cd,
        price,
        rank() OVER (PARTITION BY ram ORDER BY price DESC) AS rank
    FROM PC
    ORDER BY ram, rank() OVER (PARTITION BY ram ORDER BY price DESC)
) AS m
WHERE m.rank = 2;
