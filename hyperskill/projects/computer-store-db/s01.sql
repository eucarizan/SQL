-- Stage 1: Expensive printers
SELECT model, type, price
FROM Printer
WHERE price > 200;
