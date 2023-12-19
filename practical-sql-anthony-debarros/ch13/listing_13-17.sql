-- Listing 13-17: Generating the ice cream survey crosstab
SELECT * 
FROM crosstab('SELECT office,
		      flavor,
		      count(*)
	       FROM ice_cream_survey
	       GROUP BY office, flavor
	       ORDER BY office',

	      'SELECT flavor
	       FROM ice_cream_survey
	       GROUP BY flavor
	       ORDER BY flavor')
AS (office text,
    chocolate bigint,
    strawberry bigint,
    vanilla bigint);
