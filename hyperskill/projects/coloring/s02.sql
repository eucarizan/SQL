SELECT
  s.color,
  SUM(p.volume) AS total_paint_used
FROM Spray s
JOIN Painting p ON s.id = p.spray_id
GROUP BY p.volume
ORDER BY total_paint_used;
