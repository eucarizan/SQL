-- Listing 15-2: Retrieving the well-known text for SRID 4326

SELECT srtext
FROM spatial_ref_sys
WHERE srid = 4326;
