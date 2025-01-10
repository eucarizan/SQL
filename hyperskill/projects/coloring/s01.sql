SELECT
  s.id, s.name
FROM Square s 
LEFT JOIN Painting p ON s.id = p.square_id
WHERE p.square_id IS NULL
ORDER BY s.name DESC;
/*
SELECT 
  s.id,
  s.name
FROM Painting p
RIGHT JOIN Square s ON p.square_id = s.id
WHERE s.id NOT IN (SELECT square_id FROM Painting)
ORDER BY s.name DESC;
*/
