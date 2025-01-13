SELECT
  s.id,
  255 - COALESCE(SUM(p.volume), 0) AS remaining_volume
FROM Spray s
LEFT JOIN Painting p ON s.id = p.square_id
GROUP BY s.id
ORDER BY s.id;
