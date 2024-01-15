-- Listing 15-20: Spatial join with ST_Intersects() to find roads crossing the Santa Fe river

SELECT water.fullname AS waterway,
       roads.rttyp,
       roads.fullname AS road
FROM santafe_linearwater_2019 water JOIN santafe_roads_2019 roads
    ON ST_Intersects(water.geom, roads.geom)
WHERE water.fullname = 'Santa Fe Riv' 
      AND roads.fullname IS NOT NULL
ORDER BY roads.fullname;

