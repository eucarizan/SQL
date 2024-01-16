-- Listing 15-21: Using ST_Intersection() to show where roads cross the river

SELECT water.fullname AS waterway,
       roads.rttyp,
       roads.fullname AS road,
       ST_AsText(ST_Intersection(water.geom, roads.geom))
FROM santafe_linearwater_2019 water JOIN santafe_roads_2019 roads
    ON ST_Intersects(water.geom, roads.geom)
WHERE water.fullname = 'Santa Fe Riv'
      AND roads.fullname IS NOT NULL
ORDER BY roads.fullname;
