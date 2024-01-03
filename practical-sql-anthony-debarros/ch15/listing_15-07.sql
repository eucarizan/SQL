-- Listing 15-7: Functions specific to making Polygons

SELECT ST_PolygonFromText('POLYGON((-74.9 42.7, -75.1 42.7,
                                    -75.1 42.6, -74.9 42.7))', 4326);

SELECT ST_MakePolygon(
           ST_GeomFromText('LINESTRING(-74.92 42.7, -75.06 42.71,
                                       -75.07 42.64, -74.92 42.7)', 4326));

SELECT ST_MPolyFromText('MULTIPOLYGON((
                                       (-74.92 42.7, -75.06 42.71,
                                        -75.07 42.64, -74.92 42.7),
                                       (-75.0 42.66, -75.0 42.64,
                                        -74.98 42.64, -74.98 42.66,
                                        -75.0 42.66)
                                      ))', 4326);
