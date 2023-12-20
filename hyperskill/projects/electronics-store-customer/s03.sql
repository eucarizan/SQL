-- Stage 3: Find the total price of each laptop maker
SELECT 
   p.maker, 
   sum(l.price) AS total_price
FROM product p
JOIN laptop l ON p.model = l.model
GROUP BY maker
ORDER BY total_price;
