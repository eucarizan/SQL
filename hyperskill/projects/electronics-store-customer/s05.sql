-- Stage 5: Find laptop models priced higher than the most expensive PCs
SELECT 
    a.model, 
    b.maker, 
    a.price,
    a.price - (SELECT max(price) FROM pc) AS price_difference_max_pc,
    round(a.price - (SELECT avg(price) FROM laptop), 2) AS price_difference_avg_laptop
FROM laptop a JOIN product b ON a.model = b.model
WHERE (SELECT max(price) FROM pc) < price
