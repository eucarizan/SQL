-- Stage 2: Find the average price of inkjet color printers
SELECT round(avg(price), 2) AS average_price
FROM printer
WHERE type = 'Inkjet' AND color = 'C';
