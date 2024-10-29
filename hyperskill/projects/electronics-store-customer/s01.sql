-- Stage 1: Find fast PCs in the database
SELECT pc_code, model, speed, ram
FROM PC
WHERE ram >= 16
ORDER BY ram, speed DESC;
