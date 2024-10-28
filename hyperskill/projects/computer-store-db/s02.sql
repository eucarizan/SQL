-- Stage 2: Marketable laptops
SELECT p.maker, p.model, l.hd, l.speed, l.price
FROM Product p LEFT JOIN Laptop l
ON p.model = l.model
WHERE hd >= 1000
ORDER BY hd, speed DESC, price
