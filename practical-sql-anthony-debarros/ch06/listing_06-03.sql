-- Listing 6-3: Exponents, roots and factorials with SQL

SELECT 3 ^ 4;         -- exponentiation
SELECT |/ 10;         -- square root (operator)
SELECT sqrt(10);      -- square root (function)
SELECT ||/ 10;        -- cube root
SELECT factorial(4);  -- factorial (function)
-- SELECT 4 !;           -- factorial (operator; PostgreSQL 13 and earlier only)
