-- Stage 1: Fast PCs
SELECT pc_code, model, speed, ram
FROM pc
WHERE ram >= 16
ORDER BY ram, speed DESC;
