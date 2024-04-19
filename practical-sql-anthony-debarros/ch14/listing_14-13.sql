-- Listing 14-13: Updating all crime_reports columns

UPDATE crime_reports
SET date_1 = 
    (
      (regexp_match(original_text, '\d{1,2}\/\d{1,2}\/\d{2}'))[1]
          || ' ' ||
      (regexp_match(original_text, '\/\d{2}\n(\d{4})'))[1] 
          ||' US/Eastern'
    )::timestamptz,
             
    date_2 = 
    CASE 
    -- if there is no second date but there is a second hour
        WHEN (SELECT regexp_match(original_text, '-(\d{1,2}\/\d{1,2}\/\d{2})') IS NULL)
                     AND (SELECT regexp_match(original_text, '\/\d{2}\n\d{4}-(\d{4})') IS NOT NULL)
        THEN 
          ((regexp_match(original_text, '\d{1,2}\/\d{1,2}\/\d{2}'))[1]
              || ' ' ||
          (regexp_match(original_text, '\/\d{2}\n\d{4}-(\d{4})'))[1] 
              ||' US/Eastern'
          )::timestamptz 

    -- if there is both a second date and second hour
        WHEN (SELECT regexp_match(original_text, '-(\d{1,2}\/\d{1,2}\/\d{2})') IS NOT NULL)
              AND (SELECT regexp_match(original_text, '\/\d{2}\n\d{4}-(\d{4})') IS NOT NULL)
        THEN 
          ((regexp_match(original_text, '-(\d{1,2}\/\d{1,2}\/\d{2})'))[1]
              || ' ' ||
          (regexp_match(original_text, '\/\d{2}\n\d{4}-(\d{4})'))[1] 
              ||' US/Eastern'
          )::timestamptz 
    END,
    street = (regexp_match(original_text, 'hrs.\n(\d+ .+(?:Sq.|Plz.|Dr.|Ter.|Rd.))'))[1],
    city = (regexp_match(original_text,
                           '(?:Sq.|Plz.|Dr.|Ter.|Rd.)\n(\w+ \w+|\w+)\n'))[1],
    crime_type = (regexp_match(original_text, '\n(?:\w+ \w+|\w+)\n(.*):'))[1],
    description = (regexp_match(original_text, ':\s(.+)(?:C0|SO)'))[1],
    case_number = (regexp_match(original_text, '(?:C0|SO)[0-9]+'))[1];
